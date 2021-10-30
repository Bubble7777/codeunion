import 'package:bloc/bloc.dart';
import 'package:codeunion/src/common/models/tokens_model.dart';
import 'package:dio/dio.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'package:meta/meta.dart';

part 'log_up_event.dart';
part 'log_up_state.dart';

class LogUpBloc extends Bloc<LogUpEvent, LogUpState> {
  LogUpBloc() : super(LogUpInitial());
  final Dio dio = Dio();
  final Box tokensBox = Hive.box('tokens');

  @override
  Stream<LogUpState> mapEventToState(LogUpEvent event) async* {
    if (event is LogUpPressed) {
      print('Я работаю и отправляю запрос на сервер!!');
      yield LogUpLoading();

      try {
        Response response = await dio.post(
          'http://api.codeunion.kz/api/v1/auth/registration/customer/new',
          data: {
            'email': event.email,
            'nickname': event.nickname,
            'phone': event.phone,
            'password': event.password,
          },
        );
        TokensModel tokensModel = TokensModel.fromJson(response.data['tokens']);

        tokensBox.put('access', tokensModel.access);
        tokensBox.put('refresh', tokensModel.refresh);

        yield LogUpLoaded();
      } on DioError catch (e) {
        yield LogUpFailed(message: 'Заполните поля');

        throw e;
      } catch (e) {
        yield LogUpFailed(message: 'Произошла ошибка');
        throw e;
      }
    }
  }
}
