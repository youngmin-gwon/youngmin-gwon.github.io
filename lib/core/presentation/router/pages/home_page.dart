import 'package:flutter/material.dart';
import 'package:portfolio/core/presentation/util/widget/color_grid.dart';

class HomePage extends Page {
  const HomePage({required this.onColorTap});

  final Function(String) onColorTap;

  @override
  Route createRoute(BuildContext context) {
    return MaterialPageRoute(
      settings: this,
      builder: (context) => HomeScreen(
        onColorTap: onColorTap,
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key, required this.onColorTap});

  final Function(String) onColorTap;
  static final List<Color> colors = Colors.primaries.reversed.toList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
      ),
      body: ColorGrid(
        colors: colors,
        onColorTap: onColorTap,
      ),
    );
  }
}
