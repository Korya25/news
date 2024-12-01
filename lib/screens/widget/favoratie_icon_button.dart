import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FavoraiteIconButton extends StatelessWidget {
  const FavoraiteIconButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {},
      icon: const Icon(
        FontAwesomeIcons.heart,
        size: 27,
      ),
    );
  }
}
