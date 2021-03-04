import 'package:architecture_tests/services/services.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    context.read(authServiceProvider).autoSignIn();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Architecture Tests',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      routes: NavigationService.setupRoutes(context),
      navigatorKey: context.read(navigationServiceProvider).rootNavigationKey,
    );
  }
}
