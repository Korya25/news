import 'package:flutter/material.dart';
import 'package:news_app/constant/style.dart';

class CatogerayCard extends StatelessWidget {
  const CatogerayCard(
      {super.key, required this.imagePath, required this.title});
  final String imagePath;
  final String title;

  // On Pressed Gester Director
  void onTap() {}
  @override
  // Build UI
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          width: 180,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            image:
                DecorationImage(image: AssetImage(imagePath), fit: BoxFit.fill),
          ),
          child: Center(
              child: Text(
            title,
            style: AppTextStyle.catogarytitle,
          )),
        ),
      ),
    );
  }
}
