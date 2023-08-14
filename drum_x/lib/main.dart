import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  var application = Application();
  runApp(application);
}

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return getapplication();
  }
}

Widget getapplication() {
  return MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      backgroundColor: Colors.amber,
      body: SafeArea(
        child: DecoratedBox(
          position: DecorationPosition.background,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/drum.png'),
            ),
          ),
          child: getbody(),
        ),
      ),
    ),
  );
}

Widget getbody() {
  return Column(
    children: [
      Expanded(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: TextButton(
                onPressed: () {
                  playsound('h1.wav');
                },
                child: Text(''),
              ),
            ),
            Expanded(
              child: TextButton(
                onPressed: () {
                  playsound('h2.wav');
                },
                child: Text(''),
              ),
            ),
          ],
        ),
      ),
      Expanded(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: TextButton(
                onPressed: () {
                  playsound('c1.wav');
                },
                child: Text(''),
              ),
            ),
            Expanded(
              child: TextButton(
                onPressed: () {
                  playsound('c2.wav');
                },
                child: Text(''),
              ),
            ),
          ],
        ),
      ),
      Expanded(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: TextButton(
                onPressed: () {
                  playsound('k1.wav');
                },
                child: Text(''),
              ),
            ),
            Expanded(
              child: TextButton(
                onPressed: () {
                  playsound('k2.wav');
                },
                child: Text(''),
              ),
            ),
          ],
        ),
      ),
    ],
  );
}

playsound(String sound) {
  var player = AudioCache();
  player.play(sound);
}
