import 'package:flutter/material.dart';

class FavoriteListItem extends StatelessWidget {
  const FavoriteListItem({
    super.key,
    required this.onPressed,
    required this.item,
  });
  final Function() onPressed;
  final String item;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(item),
      trailing: IconButton(
        onPressed: onPressed,
        icon: const Icon(
          Icons.remove,
          color: Colors.red,
        ),
      ),
    );
  }
}
