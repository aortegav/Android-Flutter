import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'routes/app_router.dart';

void main() {
  final appRouter = AppRouter();
  runApp(MyApp(router: appRouter.router));
}

class MyApp extends StatelessWidget {
  final GoRouter router;
  const MyApp({super.key, required this.router});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Hola Mundo - Taller',
      routerDelegate: router.routerDelegate,
      routeInformationParser: router.routeInformationParser,
      routeInformationProvider: router.routeInformationProvider,
    );
  }
}
