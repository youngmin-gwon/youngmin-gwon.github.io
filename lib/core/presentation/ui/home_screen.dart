import 'package:flutter/material.dart';

import 'responsive_layout.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const ResponsiveLayout(
      showGrid: true,
    );
  }
}
