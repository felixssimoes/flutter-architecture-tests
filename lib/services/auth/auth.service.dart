import 'package:architecture_tests/data/types/auth.types.dart';
import 'package:architecture_tests/services/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rxdart/rxdart.dart';

// ignore: top_level_function_literal_block
final authServiceProvider = Provider((ref) {
  final navigator = ref.read(navigationServiceProvider);
  return AuthService(navigator: navigator)..autoSignIn();
});

class AuthService {
  final NavigationService navigator;
  final _statusSubject = BehaviorSubject.seeded(AuthStatus.unknown);

  AuthService({required this.navigator});

  Stream<AuthStatus> get statusStream => _statusSubject.stream;

  void dispose() {
    _statusSubject.close();
  }

  Future<void> autoSignIn() async {
    await Future.delayed(const Duration(seconds: 1));
    _statusSubject.add(AuthStatus.signedOut);
    navigator.switchToSignedOutLayout();
  }

  Future<void> signIn() async {
    await Future.delayed(const Duration(seconds: 2));
    _statusSubject.add(AuthStatus.signedIn);
    navigator.switchToSignedInLayout();
  }

  Future<void> signOut() async {
    await Future.delayed(const Duration(seconds: 1));
    _statusSubject.add(AuthStatus.signedOut);
    navigator.switchToSignedOutLayout();
  }
}
