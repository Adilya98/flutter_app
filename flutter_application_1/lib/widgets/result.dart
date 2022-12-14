import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int count;
  final int total;
  final Function() onClearState;

  Result(
      {Key? key,
      required this.count,
      required this.total,
      required this.onClearState})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    String msg = '';
    Widget img;

    if (0 <= count && count <= 2) {
      msg = 'Не переживай\n просто нужно побольше читать!';
      img = Image.asset('assets/images/bad.jpg');
    } else if (3 >= count && count <= 6) {
      msg = 'Неплохо, но могло быть и лучше!';
      img = Image.asset('assets/images/soydet.jpg');
    } else {
      msg = 'Превосходно, так держать!';
      img = Image.asset('assets/images/good.jpg');
    }

    return Container(
      padding: const EdgeInsets.all(20.0),
      margin: const EdgeInsets.symmetric(horizontal: 30.0),
      decoration: BoxDecoration(
        boxShadow: const [
          BoxShadow(
            color: Colors.black,
            blurRadius: 15.0,
            spreadRadius: 0.0,
            offset: Offset(2.0, 5.0),
          ),
        ],
        borderRadius: BorderRadius.circular(30.0),
        gradient: LinearGradient(
          colors: <Color>[
            Color(0xFF5337ff),
            Color(0xFF8131ff),
            Color(0xFFbd27ff),
          ],
        ),
      ),
      child: Column(
        children: <Widget>[
          Container(
            width: 120,
            height: 120,
            child: FittedBox(
              fit: BoxFit.contain,
              child: img,
            ),
          ),
          Container(
            child: Text(
              msg,
              textAlign: TextAlign.center,
            ),
          ),
          Divider(
            color: Colors.white,
          ),
          ElevatedButton(
            child: Text(
              'Пройти еще раз',
              style: TextStyle(
                color: Colors.yellow,
                fontSize: 22,
              ),
            ),
            onPressed: onClearState,
          )
        ],
      ),
    );
  }
}
