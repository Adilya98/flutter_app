//!Основной экран
import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/progress_bar.dart';
import 'package:flutter_application_1/models/Questions.dart';
import 'package:flutter_application_1/widgets/answer.dart';
import 'package:flutter_application_1/widgets/quiz.dart';
import 'package:flutter_application_1/widgets/result.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState(); //? перерисовка экрана
}

class _HomePageState extends State<HomePage> {
  final QuestionData data = QuestionData();
  //?состояние экпана
  int _countResult = 0; //? Результат ответа цифрами
  int _questionIndex = 0; //? Строка вопроса

  List<Icon> _icons = []; //? Результат ответа иконки

  void _clearState() => setState(() {
        //? Объекты, которые будут изменяться на экране
        _questionIndex = 0;
        _countResult = 0;
        _icons = [];
      });
  void _onChangeAnswer(bool isCorrect) => setState(() {
        //? Закрашивание цветом в
        //?соответствие с результатом ответа
        if (isCorrect) {
          _icons.add(
            Icon(
              Icons.brightness_1,
              color: Colors.green,
            ),
          );
          _countResult++;
        } else {
          _icons.add(
            const Icon(
              Icons.brightness_1,
              color: Colors.red,
            ),
          );
        }
        _questionIndex += 1;
      });

  final whiteTextStyle = TextStyle(
    color: Colors.white,
    fontSize: 24,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: const Text('Testing'), centerTitle: true),
      body: SafeArea(
        child: DefaultTextStyle.merge(
          style: whiteTextStyle,
          child: Container(
            constraints: const BoxConstraints.expand(),
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 64, 110, 235),
              image: DecorationImage(
                image: AssetImage('assets/images/Background_2.png'),
                fit: BoxFit.cover,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: <Widget>[
                  ProgressBar(
                    icons: _icons,
                    count: _questionIndex,
                    total: data.questions.length,
                  ),
                  _questionIndex < data.questions.length
                      ? Quiz(
                          index: _questionIndex,
                          questionData: data,
                          onChangeAnswer: _onChangeAnswer,
                        )
                      : Result(
                          count: _countResult,
                          total: data.questions.length,
                          onClearState: _clearState,
                        )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
