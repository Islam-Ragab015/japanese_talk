import 'package:flutter/material.dart';
import 'package:jabanese_talk/Screens/NumbersPage.dart';
import 'package:jabanese_talk/Screens/colorsPage.dart';
import 'package:jabanese_talk/Screens/familyMembers.dart';
import 'package:jabanese_talk/Screens/phrasesPage.dart';
import 'package:google_fonts/google_fonts.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Gradient Background
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.cyan, Colors.teal],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Custom AppBar
            AppBar(
              title: Text(
                "Toku Talk",
                style: GoogleFonts.lato(
                  textStyle: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
              ),
              backgroundColor: Colors.transparent,
              elevation: 0,
              centerTitle: true,
              leading: const Icon(
                Icons.home,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView(
                padding: const EdgeInsets.all(16.0),
                children: [
                  // Numbers Container
                  HomePageContainer(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Numberspage()),
                      );
                    },
                    containerText: "Numbers",
                    containerColor: Colors.deepPurpleAccent,
                    icon: Icons.format_list_numbered,
                  ),
                  const SizedBox(height: 12),
                  // Family Members Container
                  HomePageContainer(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Familymembers()),
                      );
                    },
                    containerText: "Family Members",
                    containerColor: Colors.green,
                    icon: Icons.family_restroom,
                  ),
                  const SizedBox(height: 12),
                  // Colors Container
                  HomePageContainer(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ColorsPage()),
                      );
                    },
                    containerText: "Colors",
                    containerColor: Colors.brown,
                    icon: Icons.palette,
                  ),
                  const SizedBox(height: 12),
                  // Phrases Container
                  HomePageContainer(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Phrasespage()),
                      );
                    },
                    containerText: "Phrases",
                    containerColor: Colors.blueGrey,
                    icon: Icons.chat,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class HomePageContainer extends StatelessWidget {
  final VoidCallback onTap;
  final String containerText;
  final Color containerColor;
  final IconData? icon; // Add the icon parameter

  const HomePageContainer({
    super.key,
    required this.onTap,
    required this.containerText,
    required this.containerColor,
    this.icon, // Initialize the icon parameter
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: containerColor,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              spreadRadius: 2,
              blurRadius: 6,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            if (icon != null)
              Icon(
                icon,
                size: 28,
                color: Colors.white,
              ),
            const SizedBox(width: 16),
            Expanded(
              child: Text(
                containerText,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
