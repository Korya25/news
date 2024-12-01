import 'package:flutter/material.dart';
import 'package:news_app/constant/style.dart';

class TextFeildSearch extends StatelessWidget {
  const TextFeildSearch({super.key});
  static const String id = 'TextFeildSearch';

  // OnSubmitted Button Pressed
  void onSubmitted(value) {}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 28, 28, 28),
        title: SizedBox(
          height: 50,
          child: Center(
            child: TextField(
              onSubmitted: onSubmitted,
              decoration: InputDecoration(
                hintText: "Search",
                hintStyle: AppTextStyle.hintTextfield,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
