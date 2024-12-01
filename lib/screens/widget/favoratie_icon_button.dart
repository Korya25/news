import 'package:flutter/material.dart';

class FavoraiteIconButton extends StatelessWidget {
  const FavoraiteIconButton({
    super.key,
    required this.isFavorrtie,
    required this.onpressed,
  });
  final bool isFavorrtie;
  final Function() onpressed;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onpressed,
      icon: Icon(
        isFavorrtie ? Icons.favorite : Icons.favorite_border,
        color: isFavorrtie ? Colors.red : null,
        size: 27,
      ),
    );
  }
}
