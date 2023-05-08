import 'package:flutter/material.dart';
import 'package:msullivan_portfolio/config.dart';

class ThemeSwitcher extends InheritedWidget {
  const ThemeSwitcher({
    super.key,
    required this.service,
    required super.child,
  });

  final GlobalThemeService service;

  static set(BuildContext context, ThemeData theme) {
    context
        .dependOnInheritedWidgetOfExactType<ThemeSwitcher>()
        ?.service
        .set(theme);
  }

  static ThemeData? maybeOf(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<ThemeSwitcher>()
        ?.service
        .theme;
  }

  static ThemeData? of(BuildContext context) {
    final ThemeData? result = maybeOf(context);
    assert(result != null, 'No theme data found in context');
    return result!;
  }

  @override
  bool updateShouldNotify(ThemeSwitcher old) => true;
}

class GlobalThemeService {
  GlobalThemeService();

  ThemeData _theme = UnityTheme;

  ThemeData get theme => _theme;
  set(ThemeData theme) => _theme = theme;
}
