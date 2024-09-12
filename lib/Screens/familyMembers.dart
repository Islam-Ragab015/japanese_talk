import 'package:flutter/material.dart';
import 'package:jabanese_talk/Models/numbersModel.dart';
import 'package:jabanese_talk/Widgets/Items.dart';

class Familymembers extends StatelessWidget {
  const Familymembers({super.key});
  final List<GeneralModel> myFamily = const [
    // father
    GeneralModel("assets/images/familyMembers/family_father.png",
        "Chichioya || 父親", "father", 'sounds/familyMembers/father.wav'),
    // mother
    GeneralModel("assets/images/familyMembers/family_mother.png",
        "Hahaoya || 母親", "mother", 'sounds/familyMembers/mother.wav'),
    // daughter
    GeneralModel("assets/images/familyMembers/family_daughter.png",
        "Musume || 娘", "daughter", 'sounds/familyMembers/daughter.wav'),
    // son
    GeneralModel("assets/images/familyMembers/family_son.png", "Musuko",
        "son || 息子", 'sounds/familyMembers/son.wav'),
    // older brother
    GeneralModel(
        "assets/images/familyMembers/family_older_brother.png",
        "Nīsan || 兄さん",
        "older brother",
        'sounds/familyMembers/older bother.wav'),
    // older sister
    GeneralModel("assets/images/familyMembers/family_older_sister.png",
        "Ane || 姉", "older sister", 'sounds/familyMembers/older sister.wav'),
    // younger brother
    GeneralModel(
        "assets/images/familyMembers/family_younger_brother.png",
        "Otōto || 弟",
        "younger brother",
        'sounds/familyMembers/younger brohter.wav'),
    // younger sister
    GeneralModel(
        "assets/images/familyMembers/family_younger_sister.png",
        "Imōto || 妹",
        "younger sister",
        'sounds/familyMembers/younger sister.wav'),
    // grand father
    GeneralModel(
        "assets/images/familyMembers/family_grandfather.png",
        "Ojīsan || お爺さん",
        "grand father",
        'sounds/familyMembers/grand father.wav'),
    // grand mother
    GeneralModel("assets/images/familyMembers/family_grandmother.png",
        "Sobo || 祖母", "grand mother", 'sounds/familyMembers/grand mother.wav'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Family Members"),
          backgroundColor: Colors.green,
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 2, right: 2, top: 1, bottom: 1),
          child: ListView.builder(
            itemCount: myFamily.length,
            itemBuilder: (context, index) =>
                GeneralItem(number: myFamily[index]),
          ),
        ));
  }
}
