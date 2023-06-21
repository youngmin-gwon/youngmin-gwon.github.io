import 'package:go_router/go_router.dart';
import 'package:portfolio/core/presentation/ui/home_screen.dart';

final kRouter = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const HomeScreen(),
    ),
  ],
);
