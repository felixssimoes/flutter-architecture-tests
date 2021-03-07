import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rxdart/rxdart.dart';

import 'package:architecture_tests/data/models/auth/auth.models.dart';
import 'package:architecture_tests/data/repositories/auth.repository.dart';
import 'package:architecture_tests/data/types/auth.types.dart';
import 'package:architecture_tests/services/services.dart';

import 'auth_token.service.dart';

// ignore: top_level_function_literal_block
final authServiceProvider = Provider((ref) {
  return AuthService(
    navigator: ref.read(navigationServiceProvider),
    authRepository: ref.read(authRepositorProvider),
    authTokenService: ref.read(authTokenServiceProvider),
  )..autoSignIn();
});

class AuthService {
  final NavigationService navigator;
  final AuthRepository authRepository;
  final AuthTokenService authTokenService;
  final _statusSubject = BehaviorSubject.seeded(AuthStatus.unknown);

  AuthService({
    required this.navigator,
    required this.authRepository,
    required this.authTokenService,
  });

  Stream<AuthStatus> get statusStream => _statusSubject.stream;
  AuthToken? get authToken => null;

  void dispose() {
    _statusSubject.close();
  }

  Future<void> autoSignIn() async {
    await authTokenService.loadToken();
    if (authTokenService.token == null) {
      _statusSubject.add(AuthStatus.signedOut);
      navigator.switchToSignedOutLayout();
      return;
    }
    _statusSubject.add(AuthStatus.signedIn);
    navigator.switchToSignedInLayout();
  }

  Future<void> signIn() async {
    await Future.delayed(const Duration(seconds: 2));
    const fakeToken = AuthToken(
      accessToken: 'adfasdfasdf-q23r23-adfasd-23r23',
      tokenType: 'Bearer',
    );
    authTokenService.setToken(fakeToken);
    _statusSubject.add(AuthStatus.signedIn);
    navigator.switchToSignedInLayout();
  }

  Future<void> signOut() async {
    await Future.delayed(const Duration(seconds: 1));
    authTokenService.setToken(null);
    _statusSubject.add(AuthStatus.signedOut);
    navigator.switchToSignedOutLayout();
  }
}
