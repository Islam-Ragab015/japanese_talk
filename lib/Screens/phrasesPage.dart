import 'package:flutter/material.dart';
import 'package:jabanese_talk/Models/phrasesModel.dart';
import 'package:jabanese_talk/Widgets/Items.dart';

class Phrasespage extends StatelessWidget {
  Phrasespage({super.key});
  final List<PhraseModel> myPhrases = [
    PhraseModel(
      phrase: "1- are you coming",
      sound: "sounds/phrases/are_you_coming.wav",
      meaning: 'Kimasu ka || 来ますか',
    ),
    PhraseModel(
      phrase: "2- don't forget to subscribe",
      sound: "sounds/phrases/dont_forget_to_subscribe.wav",
      meaning: 'Kōdoku o wasurenaide kudasai || 後悔しないでください',
    ),
    PhraseModel(
      phrase: "3- how are you feeling",
      sound: "sounds/phrases/how_are_you_feeling.wav",
      meaning: 'Go kibun wa ikagadesu ka. || 元気出してください',
    ),
    PhraseModel(
      phrase: "4- i love you programming",
      sound: "sounds/phrases/i_love_programming.wav",
      meaning: 'Puroguramingu ga daisukidesu || 動物大好き',
    ),
    PhraseModel(
      phrase: "5- programming is easy",
      sound: "sounds/phrases/programming_is_easy.wav",
      meaning: 'Puroguramingu wa kantan || 動物大好き',
    ),
    PhraseModel(
      phrase: "6- what is your name",
      sound: "sounds/phrases/what_is_your_name.wav",
      meaning: 'Anata no namae wa nanidesu ka || 名前を教えてください',
    ),
    PhraseModel(
      phrase: "7- where are you going",
      sound: "sounds/phrases/where_are_you_going.wav",
      meaning: 'Doko ni iku no || どこに行くの',
    ),
    PhraseModel(
      phrase: "8- yes im coming",
      sound: "sounds/phrases/yes_im_coming.wav",
      meaning: 'Hai, ikimasu || はい、行きます',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Phrases"),
          backgroundColor: Colors.grey,
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 2, right: 2, top: 1, bottom: 1),
          child: ListView.builder(
            itemCount: myPhrases.length,
            itemBuilder: (context, index) =>
                PhrasesItem(phrase: myPhrases[index]),
          ),
        ));
  }
}
