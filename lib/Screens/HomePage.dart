import 'package:flutter/material.dart';
import 'package:jabanese_talk/Screens/NumbersPage.dart';
import 'package:jabanese_talk/Screens/colorsPage.dart';
import 'package:jabanese_talk/Screens/familyMembers.dart';
import 'package:jabanese_talk/Screens/phrasesPage.dart';
import 'package:jabanese_talk/Widgets/Containers.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan,
      appBar: AppBar(
        title: const Text("Toku Talk"),
        backgroundColor: Colors.black45,
        leading: const Icon(
          Icons.home,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            HomePageContainer(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Numberspage()));
              },
              containerText: "Numbers",
              containerColor: Colors.deepPurpleAccent,
            ),
            const SizedBox(
              height: 10,
            ),
            HomePageContainer(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Familymembers()));
              },
              containerText: "Family Members",
              containerColor: Colors.green,
            ),
            const SizedBox(
              height: 10,
            ),
            HomePageContainer(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ColorsPage()));
              },
              containerText: "Colors",
              containerColor: Colors.brown,
            ),
            const SizedBox(
              height: 10,
            ),
            HomePageContainer(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Phrasespage()));
              },
              containerText: "Phrases",
              containerColor: Colors.blueGrey,
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
