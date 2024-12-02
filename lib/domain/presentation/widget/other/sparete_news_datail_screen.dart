import 'package:flutter/material.dart';
import 'package:news_app/constant/style.dart';

class SpareteDetailNews extends StatelessWidget {
  const SpareteDetailNews({
    super.key,
    required this.title,
  });
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          child: Divider(
            thickness: 1,
            indent: 50,
            endIndent: 50,
          ),
        ),
        Text(
          title,
          style: AppTextStyle.heading,
        ),
        const Expanded(
          child: Divider(
            thickness: 1,
            indent: 50,
            endIndent: 50,
          ),
        ),
      ],
    );
  }
}
