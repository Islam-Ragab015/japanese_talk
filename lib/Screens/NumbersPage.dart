import 'package:flutter/material.dart';
import 'package:jabanese_talk/Models/numbersModel.dart';
import 'package:jabanese_talk/Widgets/Items.dart';

class Numberspage extends StatelessWidget {
  const Numberspage({super.key});
  final List<GeneralModel> myNumbers = const [
    GeneralModel("assets/images/numbers/number_one.png", "Ichi || いち", "One",
        "sounds/numbers/number_one_sound.mp3"),
    GeneralModel("assets/images/numbers/number_two.png", "Ni || 二", "Two",
        "sounds/numbers/number_two_sound.mp3"),
    GeneralModel("assets/images/numbers/number_three.png", "San || 三", "Three",
        "sounds/numbers/number_three_sound.mp3"),
    GeneralModel("assets/images/numbers/number_four.png", "Shi || 四", "Four",
        'sounds/numbers/number_four_sound.mp3'),
    GeneralModel("assets/images/numbers/number_five.png", "Go || 五", "Five",
        'sounds/numbers/number_five_sound.mp3'),
    GeneralModel("assets/images/numbers/number_six.png", "Roku || 六", "Six",
        'sounds/numbers/number_six_sound.mp3'),
    GeneralModel("assets/images/numbers/number_seven.png", "Sebun || 七",
        "Seven", 'sounds/numbers/number_seven_sound.mp3'),
    GeneralModel("assets/images/numbers/number_eight.png", "Hachi || 八",
        "Eight", 'sounds/numbers/number_eight_sound.mp3'),
    GeneralModel("assets/images/numbers/number_nine.png", "Kyū  || 九", "Nin",
        'sounds/numbers/number_nine_sound.mp3'),
    GeneralModel("assets/images/numbers/number_ten.png", "Jū  || 十", "Ten",
        'sounds/numbers/number_ten_sound.mp3'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Numbers"),
          backgroundColor: Colors.deepPurpleAccent,
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 2, right: 2, top: 1, bottom: 1),
          child: ListView.builder(
            itemCount: myNumbers.length,
            itemBuilder: (context, index) =>
                GeneralItem(number: myNumbers[index]),
          ),
        ));
  }
}
