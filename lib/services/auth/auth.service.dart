import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rxdart/rxdart.dart';

import 'package:architecture_tests/data/models/auth/auth.models.dart';
import 'package:architecture_tests/data/repositories/auth.repository.dart';
import 'package:architecture_tests/data/types/auth.types.dart';
import 'package:architecture_tests/services/services.dart';

final authTokenServiceProvider = Provider((_) => AuthTokenService());

// ignore: top_level_function_literal_block
final authServiceProvider = Provider((ref) {
  return AuthService(
    navigator: ref.read(navigationServiceProvider),
    authRepository: ref.read(authRepositorProvider),
    authTokenService: ref.read(authTokenServiceProvider),
  )..autoSignIn();
});

class AuthTokenService {
  AuthToken? token;
}

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
    authTokenService.token = await authRepository.loadToken();
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
    _statusSubject.add(AuthStatus.signedIn);
    navigator.switchToSignedInLayout();
  }

  Future<void> signOut() async {
    await Future.delayed(const Duration(seconds: 1));
    _statusSubject.add(AuthStatus.signedOut);
    navigator.switchToSignedOutLayout();
  }
}
