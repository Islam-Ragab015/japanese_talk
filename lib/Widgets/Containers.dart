import 'package:flutter/material.dart';

// ignore: must_be_immutable
class HomePageContainer extends StatelessWidget {
  HomePageContainer(
      {super.key, this.containerText, this.containerColor, this.onTap});

  String? containerText;
  Color? containerColor;
  VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: containerColor!,
          borderRadius: BorderRadius.circular(12),
        ),
        height: 60,
        width: double.infinity,
        child: Center(
          child: Text(
            containerText!,
            style: const TextStyle(
              fontSize: 25,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
