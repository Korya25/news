import 'package:flutter/material.dart';

class FavoriteListItem extends StatelessWidget {
  final String item;
  const FavoriteListItem({
    super.key,
    required this.onPressed,
    required this.item,
  });
  final Function() onPressed;
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
