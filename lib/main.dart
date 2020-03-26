import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.lightBlue[400],
        appBar: AppBar(
          title: Center(child: Text('Ask The Magic 8 Ball')),
          backgroundColor: Colors.lightBlue[700],
        ),
        body: MagicEightBall(),
      ),
    ),
  );
}

class MagicEightBall extends StatefulWidget {
  @override
  _MagicEightBallState createState() => _MagicEightBallState();
}

class _MagicEightBallState extends State<MagicEightBall> {

  int photoNum = 1;

  void shakeBall() {
    photoNum = Random().nextInt(5) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:<Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                child:FlatButton(
                  onPressed: (){
                    setState(() {
                      shakeBall();
                    });
                  },
                  child: Image.asset('images/ball$photoNum.png'),
                ),
              ),
            ],
          ),
        ]
    );
  }

}
