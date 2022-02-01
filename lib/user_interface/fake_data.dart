import 'dart:math';

import 'package:test_app/data/api_provider.dart';

class VKFakeData{
  VKFakeData(this.name, this.messages, this.time, this.avatar, this.otherAvatar);

  final String name;
  final List<String> messages;
  final String time;
  final String avatar;
  final String otherAvatar;

  factory VKFakeData.gen(Random generator) {
    String name = _getGenName(generator);
    List<String> messages = _getGenMessages(generator);
    String time = _getGenTime(generator);
    return VKFakeData(name, messages, time, _getGenAvatar(generator), _getGenAvatar(generator));
  }

  static String _getGenName(Random gen) {
    int sex = gen.nextInt(2);
    if (sex == 0) {
      return _manNames[gen.nextInt(_manNames.length)] + " " + _manSecondNames[gen.nextInt(_manSecondNames.length)];
    }
    return _womanNames[gen.nextInt(_womanNames.length)] + " " + _womanSecondNames[gen.nextInt(_womanSecondNames.length)]; 
  }

  static String _getGenAvatar(Random g) => "https://i.pravatar.cc/50?img=${g.nextInt(70)+1}";

  static String _getGenTime(Random generator) {
    var hours = generator.nextInt(24);
    var min = generator.nextInt(60);
    return "$hours:${min < 10 ? "0":""}$min"+ (hours < 10 ? " ":"");
  }

  static List<String> _getGenMessages(Random generator) {
    var result = <String>[];
    var bufer = <String>[];
    var lenght = generator.nextInt(6) + 50;
    for (var i = 0; i < lenght; i++) {
      var words = generator.nextInt(7) + 4;
      for (var j = 0; j < words; j++) {
        bufer.add(_words[generator.nextInt(_words.length)] + " ");
      }
      result.add(bufer.join());
      bufer.clear();
    }
    return result;
  }

  static const List<String> _words = [
    "когда",
    "я",
    "сел",
    "учить",
    "сову",
    "за",
    "в",
    "и",
    "а",
    "зачем",
    "затем",
    "село",
    "пойду",
    "еду",
    "уехал",
    "лес",
    "собаку",
    "снег",
    "солнечно",
    "красивая",
    "луна",
    "багряный",
    "суп",
    "встал",
    "сделай",
    "демонстрация",
    "на стул",
    "кофе",
    "пить",
    "чай",
    "сон",
    "уснул",
    "вчера",
    "завтра",
    "с утра",
    "вечером",
    "ушел",
    "софт",
    "пилить",
    "жена",
    "моя",
    "твоя",
    "её",
    "его",
    "да",
    "нет",
    "не знаю",
    "пришел",
    "посылка",
    "доклад",
    "сделать",
    "с ним",
    "преподаватель",
    "купил",
    "телефон",
    "позвони",
    "съел",
    "мел",
  ];

  static const List<String> _manNames = [
    "Авраам",
    "Адам",
    "Азамат",
    "Азат",
    "Айдар",
    "Айрат",
    "Александр",
    "Алексей",
    "Анатолий",
    "Андрей",
    "Андоим",
    "Андриан",
    "Антон",
    "Аркадий",
    "Артём",
    "Аскар",
    "Бажен",
    "Базан",
    "Барузда",
    "Башило",
    "Беляй",
    "Берек",
    "Богдан",
    "Боголюб",
    "Болеслав",
    "Боримир",
    "Борис",
    "Борислав",
    "Боян",
    "Брачислав",
    "Бронислав",
    "Будимир",
    "Булат",
    "Вадим",
    "Валентин",
    "Валерий",
    "Василий",
    "Вацлав",
    "Велизар",
    "Виктор",
    "Виталий",
    "Владимир",
    "Владислав",
    "Воислав",
    "Володар",
    "Вольга",
    "Всеволод",
    "Всеслав",
    "Вышеслав",
    "Вячеслав",
    "Гавриил",
    "Геннадий",
    "Георгий",
    "Глеб",
    "Горазд",
    "Горислав",
    "Гостомысл",
    "Градимир",
    "Гремислав",
    "Григорий",
    "Давид",
    "Дамир",
    "Даниил",
    "Данислав",
    "Дарий",
    "Денис",
    "Дид",
    "Доброслав",
    "Добрыня",
    "Драгомил",
    "Драгомир",
    "Дружина",
    "Евгений",
    "Егор",
    "Ефим",
    "Ждан",
    "Захар",
    "Звяга",
    "Ибрагим",
    "Иван",
    "Игорь",
    "Изяслав",
    "Ильнур",
    "Илья",
    "Иржи",
    "Искандер",
    "Истома",
    "Казимир",
    "Камиль",
    "Карл",
    "Константин",
    "Лабута",
    "Ладимир",
    "Лев",
    "Лель",
    "Леонард",
    "Леонид",
    "Леопольд",
    "Лукиллиан",
    "Лучезар",
    "Любим",
    "Любомир",
    "Людвиг",
    "Мадлен",
    "Май",
    "Макар",
    "Максим",
    "Мал",
    "Марат",
    "Марсель",
    "Матвей",
    "Мечеслав",
    "Микула",
    "Милан",
    "Мирко",
    "Мирослав",
    "Михаил",
    "Молчан",
    "Мстислав",
    "Наиль",
    "Нестор",
    "Никита",
    "Николай",
    "Одинец",
    "Олег",
    "Оскар",
    "Остап",
    "Остромир",
    "Павел",
    "Пётр",
    "Полкан",
    "Полюд",
    "Прохор",
    "Путислав",
    "Радий",
    "Радимир",
    "Радислав",
    "Радомир",
    "Рамиз",
    "Ратибор",
    "Ратмир",
    "Ренат",
    "Ринат",
    "Роберт",
    "Ростислав",
    "Руслан",
    "Рустам",
    "Рустэм",
    "Салават",
    "Святополк",
    "Святослав",
    "Семён",
    "Сергей",
    "Силуян",
    "Спартак",
    "Станимир",
    "Станислав",
    "Степан",
    "Стоян",
    "Суморок",
    "Тагир",
    "Тарас",
    "Твердислав",
    "Тимофей",
    "Тимур",
    "Тихомир",
    "Трофим",
    "Услад",
    "Фарид",
    "Федот",
    "Фёдор",
    "Филипп",
    "Флор",
    "Фома",
    "Хасан",
    "Хорс",
    "Хотислав",
    "Чеслав",
    "Эдуард",
    "Эльдар",
    "Эрик",
    "Юлий",
    "Юрий",
    "Яков",
    "Ян",
    "Яромир",
    "Ярополк",
    "Ярослав",
  ];

  static const List<String> _manSecondNames = [
    "Абрамов",
    "Александров",
    "Алексеев",
    "Андреев",
    "Антонов",
    "Афанасьев",
    "Баранов",
    "Белов",
    "Беляев",
    "Богданов",
    "Борисов",
    "Быков",
    "Васильев",
    "Виноградов",
    "Власов",
    "Волков",
    "Воробьёв",
    "Воронин",
    "Гаврилов",
    "Герасимов",
    "Голубев",
    "Григорьев",
    "Гусев",
    "Давыдов",
    "Данилов",
    "Денисов",
    "Дмитриев",
    "Егоров",
    "Ефимов",
    "Жуков",
    "Зайцев",
    "Захаров",
    "Иванов",
    "Игнатьев",
    "Ильин",
    "Карпов",
    "Кириллов",
    "Киселёв",
    "Козлов",
    "Комаров",
    "Кондратьев",
    "Константинов",
    "Крылов",
    "Кудрявцев",
    "Кузнецов",
    "Кузьмин",
    "Лебедев",
    "Леонтьев",
    "Львов",
    "Макаров",
    "Максимов",
    "Марков",
    "Мартынов",
    "Маслов",
    "Матвеев",
    "Миллер",
    "Миронов",
    "Михайлов",
    "Морозов",
    "Назаров",
    "Наумов",
    "Никитин",
    "Никифоров",
    "Николаев",
    "Новиков",
    "Орлов",
    "Осипов",
    "Павлов",
    "Петров",
    "Покровский",
    "Поляков",
    "Пономарёв",
    "Попов",
    "Прокофьев",
    "Прядильщиков",
    "Романов",
    "Савельев",
    "Семёнов",
    "Сергеев",
    "Сидоров",
    "Смирнов",
    "Соболев",
    "Соколов",
    "Соловьёв",
    "Сорокин",
    "Степанов",
    "Тимофеев",
    "Титов",
    "Тихомиров",
    "Троицкий",
    "Трофимов",
    "Ушаков",
    "Фёдоров",
    "Федотов",
    "Филиппов",
    "Фомин",
    "Фролов",
    "Чистяков",
    "Шмидт",
    "Шульц",
    "Щербаков",
    "Яковлев"
  ];

  static const List<String> _womanNames = [
    "Аврора",
    "Аглая",
    "Аделаида",
    "Аида",
    "Айгуль",
    "Алла",
    "Альбина",
    "Анастасия",
    "Анфиса",
    "Афанасия",
    "Афина",
    "Аэлита",
    "Белла",
    "Бэлла",
    "Валентина",
    "Варвара",
    "Василина",
    "Василиса",
    "Вероника",
    "Виктория",
    "Виолетта",
    "Галина",
    "Георгина",
    "Глафира",
    "Гликерия",
    "Грета",
    "Гульнара",
    "Дарья",
    "Джессика",
    "Диана",
    "Динара",
    "Евангелина",
    "Евгения",
    "Евдокия",
    "Евпраксия",
    "Екатерина",
    "Елена",
    "Ефросиния",
    "Жозефина",
    "Забава",
    "Зинаида",
    "Зоя",
    "Зульфия",
    "Зухра",
    "Иветта",
    "Илона",
    "Индира",
    "Инесса",
    "Ирина",
    "Ирма",
    "Камилла",
    "Кира",
    "Клавдия",
    "Кристина",
    "Ксения",
    "Лариса",
    "Леся",
    "Лидия",
    "Лиза",
    "Лика",
    "Лина",
    "Лолита",
    "Людмила",
    "Марта",
    "Мелания",
    "Мия",
    "Надежда",
    "Нелли",
    "Ника",
    "Нина",
    "Нинель",
    "Оливия",
    "Пелагея",
    "Полина",
    "Прасковья",
    "Раиса",
    "Рената",
    "Роза",
    "Сабина",
    "Сильвия",
    "София",
    "Степанида",
    "Стефания",
    "Таисия",
    "Тамара",
    "Татьяна",
    "Тереза",
    "Ульяна",
    "Фатима",
    "Феврония",
    "Фёкла",
    "Феодора",
    "Феодосия",
    "Элеонора",
    "Элина",
    "Элла",
    "Эльвира",
    "Эльмира",
    "Эмилия",
    "Эмма",
    "Юлианна",
    "Юлия",
    "Юнона",
    "Яна",
    "Ярослава"
  ];

  static const List<String> _womanSecondNames = [
    "Александрова",
    "Алексеева",
    "Андреева",
    "Анисимова",
    "Антонова",
    "Баранова",
    "Белова",
    "Белоусова",
    "Беляева",
    "Блинова",
    "Боброва",
    "Богданова",
    "Большакова",
    "Борисова",
    "Васильева",
    "Веселова",
    "Виноградова",
    "Волкова",
    "Воробьева",
    "Герасимова",
    "Голубева",
    "Григорьева",
    "Громова",
    "Гусева",
    "Давыдова",
    "Данилова",
    "Денисова",
    "Дмитриева",
    "Дорофеева",
    "Егорова",
    "Ершова",
    "Ефимова",
    "Жукова",
    "Журавлева",
    "Зайцева",
    "Захарова",
    "Иванова",
    "Ильина",
    "Казакова",
    "Калинина",
    "Киселева",
    "Ковалёва",
    "Козлова",
    "Колесникова",
    "Комарова",
    "Коновалова",
    "Королева",
    "Крылова",
    "Кудрявцева",
    "Кузнецова",
    "Кузьмина",
    "Куликова",
    "Лазарева",
    "Лебедева",
    "Макарова",
    "Максимова",
    "Маркова",
    "Маслова",
    "Матвеева",
    "Медведева",
    "Мельникова",
    "Миронова",
    "Михайлова",
    "Морозова",
    "Никитина",
    "Никифорова",
    "Николаева",
    "Новикова",
    "Орлова",
    "Осипова",
    "Павлова",
    "Петрова",
    "Петухова",
    "Полякова",
    "Пономарева",
    "Попова",
    "Прядильщикова",
    "Романова",
    "Рябова",
    "Семенова",
    "Сергеева",
    "Сидорова",
    "Смирнова",
    "Соболева",
    "Соколова",
    "Соловаьева",
    "Сорокина",
    "Степанова",
    "Суханова",
    "Тарасова",
    "Тимофеева",
    "Титова",
    "Федорова",
    "Федотова",
    "Филиппова",
    "Фомина",
    "Фролова",
    "Цветкова",
    "Шестакова",
    "Ширяева",
    "Щербакова",
    "Яковалева"
  ];
}