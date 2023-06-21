import 'package:flutter/material.dart';
import 'package:portfolio/core/presentation/router/router.dart';
import 'package:portfolio/core/presentation/theme/theme.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: kRouter,
      debugShowCheckedModeBanner: false,
      theme: MyTheme.light,
      darkTheme: MyTheme.dark,
      themeMode: ThemeMode.system,
    );
  }
}
