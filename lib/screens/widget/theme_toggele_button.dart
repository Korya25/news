import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/data/local/cuibt/theme_cuibt/theme_cuibt.dart';

class ThemeToggellButton extends StatelessWidget {
  const ThemeToggellButton({
    super.key,
    required this.sizeIcon,
  });

  final double sizeIcon;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeCubit, ThemeState>(
      builder: (context, state) {
        return IconButton(
            onPressed: () {
              context.read<ThemeCubit>().toggleTheme();
            },
            icon: Icon(
                state == ThemeState.dark ? Icons.light_mode : Icons.dark_mode,
                size: sizeIcon));
      },
    );
  }
}
