import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/domain/cuibt/theme_cuibt/theme_cuibt.dart';

class ThemeToggleButton extends StatelessWidget {
  const ThemeToggleButton({
    super.key,
    this.iconSize,
  });

  final double? iconSize;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeCubit, ThemeState>(
      builder: (context, state) {
        final isDarkMode = state == ThemeState.dark;

        return IconButton(
          onPressed: () => context.read<ThemeCubit>().toggleTheme(),
          icon: Icon(
            isDarkMode ? Icons.light_mode : Icons.dark_mode,
            size: iconSize,
          ),
          tooltip: isDarkMode ? 'Switch to Light Mode' : 'Switch to Dark Mode',
        );
      },
    );
  }
}
