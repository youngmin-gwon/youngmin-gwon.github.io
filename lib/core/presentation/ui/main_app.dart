import 'package:flutter/material.dart';
import 'package:portfolio/core/presentation/router/router.dart';

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  final _delegate = MyAppRouterDelegate();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Router(
        routerDelegate: _delegate,
        backButtonDispatcher: RootBackButtonDispatcher(),
      ),
    );
  }
}
