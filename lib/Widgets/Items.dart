import 'package:flutter/material.dart';
import 'package:jabanese_talk/Models/numbersModel.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:jabanese_talk/Models/phrasesModel.dart';

class GeneralItem extends StatelessWidget {
  const GeneralItem({super.key, required this.number});
  final GeneralModel number;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.orange,
      child: Row(
        children: [
          Container(
            color: const Color(0xFFFFF4DD),
            width: 90,
            child: Image(image: AssetImage(number.image)),
          ),
          const Spacer(
            flex: 1,
          ),
          Column(
            children: [
              Text(number.jpName, style: const TextStyle(fontSize: 10)),
              Text(number.engName,
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold))
            ],
          ),
          const Spacer(
            flex: 1,
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: IconButton(
              onPressed: () {
                try {
                  final player = AudioPlayer();
                  player.play(AssetSource(number.sound));
                } catch (e) {
                  print(e);
                }
              },
              icon: const Icon(Icons.play_arrow, size: 40, color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}

class PhrasesItem extends StatelessWidget {
  const PhrasesItem({super.key, required this.phrase});
  final PhraseModel phrase;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 5, bottom: 5),
      color: Colors.orange,
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(phrase.phrase,
                  style: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.bold)),
              Text(phrase.meaning, style: const TextStyle(fontSize: 10))
            ],
          ),
          const Spacer(
            flex: 1,
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: IconButton(
              onPressed: () {
                try {
                  final player = AudioPlayer();
                  player.play(AssetSource(phrase.sound));
                } catch (e) {
                  print(e);
                }
              },
              icon: const Icon(Icons.play_arrow, size: 40, color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
