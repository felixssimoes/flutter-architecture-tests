import 'package:architecture_tests/ui/screens/app/launch.screen.dart';
import 'package:architecture_tests/ui/screens/auth/sign_up/sign_up.screen.dart';
import 'package:architecture_tests/ui/screens/signed_in/signed_in.screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final navigationServiceProvider = Provider((_) => NavigationService());

class NavigationService {
  final GlobalKey<NavigatorState> _rootNavigationKey;

  GlobalKey<NavigatorState> get rootNavigationKey => _rootNavigationKey;

  NavigationService([GlobalKey<NavigatorState>? navigatorKey])
      : _rootNavigationKey = navigatorKey ?? GlobalKey<NavigatorState>();

  static Map<String, WidgetBuilder> setupRoutes(BuildContext context) {
    return {
      '/': (_) => LaunchScreen(),
    };
  }

  void switchToSignedInLayout() {
    _rootNavigationKey.currentState
        ?.pushReplacement(_createFadeRouteToScreen(SignedIn()));
  }

  void switchToSignedOutLayout() {
    _rootNavigationKey.currentState
        ?.pushReplacement(_createFadeRouteToScreen(SignUpScreen()));
  }

  Route _createFadeRouteToScreen(Widget toScreen) {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => toScreen,
      transitionsBuilder: (_, Animation<double> animation, __, Widget child) {
        return FadeTransition(opacity: animation, child: child);
      },
    );
  }
}
