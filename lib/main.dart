import 'package:flutter/cupertino.dart';
import 'dart:math';

void main() => runApp(FullCupertino());

class FullCupertino extends StatelessWidget {
  const FullCupertino({super.key});
  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      home: CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          backgroundColor: CupertinoColors.systemBlue,
          middle: Text(
            '8 ball would answer it all',
            style: TextStyle(color: CupertinoColors.white),
          ),
        ),
        child: Ball(),
      ),
    );
  }
}

class Ball extends StatefulWidget {
  const Ball({super.key});

  @override
  State<Ball> createState() => _BallState();
}

class _BallState extends State<Ball> {
  int answer = 1;
  randomNumberFrom1to5() {
    return Random().nextInt(5) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: CupertinoButton(
          onPressed: () {
            setState(() {
              answer = randomNumberFrom1to5();
            });
          },
          child: Image.asset('images/ball$answer.png'),
        ),
      ),
    );
  }
}
