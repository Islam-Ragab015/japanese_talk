import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jabanese_talk/Models/numbersModel.dart';
import 'package:jabanese_talk/Widgets/Items.dart';

class ColorsPage extends StatelessWidget {
  const ColorsPage({super.key});
  final List<GeneralModel> myColors = const [
    // black
    GeneralModel("assets/images/colors/color_black.png", "Burakku || ブラック",
        "black", "sounds/colors/black.wav"),

    // brown
    GeneralModel("assets/images/colors/color_brown.png", "Chairo || 茶色",
        "brown", "sounds/colors/brown.wav"),

    // red
    GeneralModel("assets/images/colors/color_red.png", "Aka || 赤", "red",
        "sounds/colors/red.wav"),

    // dusty yellow
    GeneralModel(
        "assets/images/colors/color_dusty_yellow.png",
        "Hokori ppoi kiiro || ほこりっぽい黄色",
        "dusty yellow",
        "sounds/colors/dusty yellow.wav"),

    // green
    GeneralModel("assets/images/colors/color_green.png", "Midori || 緑", "green",
        "sounds/colors/green.wav"),

    // yellow
    GeneralModel("assets/images/colors/color_yellow.png", "Kiiro || 黄色",
        "yellow", "sounds/colors/yellow.wav"),

    // gray
    GeneralModel("assets/images/colors/color_gray.png", "Gurē || グレー", "grey",
        "sounds/colors/gray.wav"),

    // white
    GeneralModel("assets/images/colors/color_white.png", "Shiroi || 白", "white",
        "sounds/colors/white.wav"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Colors",
          style: GoogleFonts.poppins(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.brown,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemCount: myColors.length,
          itemBuilder: (context, index) => Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            margin: const EdgeInsets.symmetric(vertical: 8),
            elevation: 4,
            child: GeneralItem(number: myColors[index]),
          ),
        ),
      ),
    );
  }
}
