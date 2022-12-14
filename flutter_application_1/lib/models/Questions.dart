import 'package:flutter/foundation.dart';

class Question {
  final String title;
  final List<Map> answers;

  Question({
    required this.title,
    required this.answers,
  });
}

class QuestionData {
  final _data = [
    Question(
        title: 'Литературное направление (течение)'
            'XVII — нач. XIX вв. в России и Западной Европе,'
            'базировавшееся на подражании античным '
            'образцам и строгих стилистических нормативах',
        answers: [
          {'answers': 'Романтизм'},
          {'answers': 'Классицизм', 'isCorrect': 1},
          {'answers': 'Реализм'},
          {'answers': 'Модернизм'},
        ]),
    Question(
        title:
            'Литepaтypнoe тeчeниe кoнцa XVIII – нaчaлa XIX вeкoв, которое вoзник кaк пpoтecт пpoтив пpeвpaтившиxcя в дoгмy кaнoнoв клaccицизмa в иcкyccтвe, oтpaжaющиx yжe пpeвpaтившyюcя в тopмoз oбщecтвeннoгo paзвития кaнoнизaцию фeoдaльныx coциaльныx oтнoшeний',
        answers: [
          {'answers': 'Классицизм'},
          {
            'answers': 'Реализм',
          },
          {'answers': 'Сентиментализм', 'isCorrect': 1},
          {'answers': 'Модернизм'},
        ]),
    Question(
        title:
            'Литepaтypнoe нaпpaвлeниe кoнцa XVIII – нaчaлa XIX вeкa, пpoтивoпocтaвлявшee ceбя клaccицизмy кaк пoиcк бoлee cooтвeтcтвoвaвшиx coвpeмeннoй дeйcтвитeльнocти фopм oтpaжeния ee',
        answers: [
          {'answers': 'Романтизм', 'isCorrect': 1},
          {'answers': 'Классицизм'},
          {
            'answers': 'Реализм',
          },
          {'answers': 'Сентиментализм'},
        ]),
    Question(
        title:
            'Литературное направление, xyдoжecтвeнный мeтoд oбpaзнoгo oтpaжeния дeйcтвитeльнocти в cooтвeтcтвии c oбъeктивнoй дocтoвepнocтью',
        answers: [
          {'answers': 'Классицизм'},
          {'answers': 'Реализм', 'isCorrect': 1},
          {'answers': 'Сентиментализм'},
          {'answers': 'Модернизм'},
        ]),
    Question(
        title:
            'Направление (течение) в искусстве, противоположное реализму и характеризующееся отрицанием традиций, условностью изображения и экспериментаторством',
        answers: [
          {'answers': 'Классицизм'},
          {'answers': 'Романтизм'},
          {'answers': 'Сентиментализм'},
          {'answers': 'Модернизм', 'isCorrect': 1},
        ]),
    Question(
        title:
            'Литературное направление модернизма, которое отвергало действительное отображение жизненных явлений и претендовало разрушение всех известных традиций и приемов старого искусства',
        answers: [
          {'answers': 'Классицизм'},
          {'answers': 'Футуризм', 'isCorrect': 1},
          {'answers': 'Акмеизм'},
          {'answers': 'Символизм'},
        ]),
    Question(
        title:
            'Эстетическое направление, сформировавшиеся во Франции в 1880 — 1890 гг. Шарлем Бодлером. Получило широкое распространение в литературе, живописи, музыке. Огромное значение  имел в период «Серебряного века»',
        answers: [
          {'answers': 'Адамизм'},
          {'answers': 'Футуризм'},
          {'answers': 'Акмеизм'},
          {'answers': 'Символизм', 'isCorrect': 1},
        ]),
    Question(
        title:
            'Литературное направление, противостоящее символизму и возникшее в начале XX века в 1912 году в России',
        answers: [
          {'answers': 'Классицизм'},
          {'answers': 'Футуризм'},
          {'answers': 'Реализм'},
          {'answers': 'Акмеизм', 'isCorrect': 1},
        ]),
    Question(
        title: 'Род литературы, объективно описывающее события и характеры',
        answers: [
          {'answers': 'Лирика'},
          {'answers': 'Эпос', 'isCorrect': 1},
          {'answers': 'Драма'},
          {'answers': 'Лиро-эпос'},
        ]),
    Question(
        title:
            'Изображение внутреннего мира человека, мыслей, чувств, имеющее особую языковую организацию (рифму, ритм, размер)',
        answers: [
          {'answers': 'Лирика', 'isCorrect': 1},
          {'answers': 'Эпос'},
          {'answers': 'Драма'},
          {'answers': 'Лиро-эпос'},
        ]),
  ];

  List<Question> get questions => [..._data];
}
