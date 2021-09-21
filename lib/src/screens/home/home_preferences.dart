import 'package:codeunion/src/screens/home/home_variable.dart';

class HomePrefences {
  static const alasha = HomeVariable(
      placeName: 'Алаша',
      description:
          "«Алаша» — ковер ручной работы, по восточному преданию, предназначенный для дорогих и желанных гостей. Гостей, приходящих в дом, ждет обязательный душистый чай и всевозможные яства восточной кухни.",
      streetName: 'ул. Оспанова, 20',
      urlPhoto: "https://pooha.net/images/almaty270617-10-min.jpg");

  static const chucotka = HomeVariable(
    placeName: 'Чукотка',
    description:
        "Ресторан «Чукотка» был открыт в 2009 году. Здесь посетители развлекаются в абсолютно разных форматах: на первом этаже по выходным можно оценить выступления музыкальных коллективов и диджеев, на втором этаже зимой и летом приятно отдохнуть на «Даче», а на цоколе — поиграть в бильярд, попеть в караоке или устроить собственный банкет.",
    streetName: 'ул. Гоголя, 40',
    urlPhoto: "https://pooha.net/images/almaty270617-9-min.jpg",
  );

  static const koreanHouse = HomeVariable(
    placeName: 'Korean House',
    description:
        "Ресторан «Korean House» на улице Гоголя приглашает гостей с головой окунуться в атмосферу настоящей Кореи, попробовать изысканные блюда корейской кухни и просто отдохнуть от городской суеты в приятной обстановке.",
    streetName: 'ул. Гоголя, 2',
    urlPhoto: "https://pooha.net/images/almaty270617-8-min.jpg",
  );

  static const tavernBear = HomeVariable(
    placeName: 'Трактир Медведь',
    description:
        "Ресторан «Трактир Медведь» расположен в историческом центре города, на улице Кабанбай батыра (бывшая Калинина). Здесь предлагают гостям традиционно высокое качество блюд и обслуживания, незабываемую, теплую атмосферу, и роскошный интерьер традиционного русcкого дома.",
    streetName: ' ул. Кабанбай батыра, 140',
    urlPhoto: "https://pooha.net/images/almaty270617-7-min.jpg",
  );

  static const restaurants = [alasha, chucotka, koreanHouse, tavernBear];
}
