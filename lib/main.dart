import 'package:flutter/material.dart';
import 'components/xylo_button.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const Main());
}

class Main extends StatelessWidget {
  const Main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(body: SafeArea(child: Xylo())),
    );
  }
}

class Xylo extends StatefulWidget {
  const Xylo({Key? key}) : super(key: key);

  @override
  _MainState createState() => _MainState();
}

class _MainState extends State<Xylo> {
  final AudioPlayer player = AudioPlayer();

  void playSound(int soundNumber) {
    player.play(AssetSource('note$soundNumber.wav'));
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        XyloButton(
          color: Colors.red,
          label: "A",
          onPressed: () {
            playSound(1);
          },
        ),
        XyloButton(
          color: Colors.orange,
          label: "B",
          onPressed: () {
            playSound(2);
          },
        ),
        XyloButton(
          color: Colors.yellow,
          label: "C",
          onPressed: () {
            playSound(3);
          },
        ),
        XyloButton(
          color: Colors.teal,
          label: "D",
          onPressed: () {
            playSound(4);
          },
        ),
        XyloButton(
          color: Colors.cyan,
          label: "E",
          onPressed: () {
            playSound(5);
          },
        ),
        XyloButton(
          color: Colors.blue,
          label: "F",
          onPressed: () {
            playSound(6);
          },
        ),
        XyloButton(
          color: Colors.brown,
          label: "G",
          onPressed: () {
            playSound(7);
          },
        ),
      ],
    );
  }
}
