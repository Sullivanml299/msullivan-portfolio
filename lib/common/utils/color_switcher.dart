import 'dart:ui';
import 'package:flutter/material.dart';

class ColorSwitcher extends StatefulWidget {
  final Widget child;
  final Color initialColor;

  ColorSwitcher({required this.child, required this.initialColor});

  @override
  State<ColorSwitcher> createState() => _ColorSwitcherState();
}

class _ColorSwitcherState extends State<ColorSwitcher> {
  late InheritedColor _colorPasser;

  @override
  void initState() {
    super.initState();
    _colorPasser = InheritedColor(
        color: widget.initialColor,
        setColorFunction: setColor,
        child: widget.child);
  }

  @override
  Widget build(BuildContext context) {
    return _colorPasser;
  }

  void setColor(Color newColor) {
    setState(() {
      _colorPasser = InheritedColor(
          color: newColor, setColorFunction: setColor, child: widget.child);
    });
  }
}

class InheritedColor extends InheritedWidget {
  final Color color;
  final Function setColorFunction;

  InheritedColor({
    super.key,
    required this.color,
    required Widget child,
    required this.setColorFunction,
  }) : super(child: child);

  static switchColor(BuildContext context, Color newColor) {
    final InheritedColor inheritedColor =
        context.findAncestorWidgetOfExactType<InheritedColor>()!;
    inheritedColor.setColorFunction(newColor);
  }

  static InheritedColor of(BuildContext context) {
    final InheritedColor? result =
        context.dependOnInheritedWidgetOfExactType<InheritedColor>();
    assert(result != null, 'No InheritedColor found in context');
    return result!;
  }

  @override
  bool updateShouldNotify(InheritedColor old) => color != old.color;
}
