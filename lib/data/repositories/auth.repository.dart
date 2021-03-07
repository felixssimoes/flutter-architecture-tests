import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:architecture_tests/config/app_config.dart';
import 'package:architecture_tests/data/api/api.dart';
import 'package:architecture_tests/data/models/auth/auth.models.dart';
import 'package:architecture_tests/services/services.dart';

final authRepositorProvider = Provider((ref) => AuthRepository(
      api: ref.read(apiProvider),
      appConfig: ref.read(appConfigProvider),
      secureStoreService: ref.read(secureStoreProvider),
    ));

class AuthRepository {
  final AppConfig appConfig;
  final Api api;
  final SecureStoreService secureStoreService;

  AuthRepository({
    required this.appConfig,
    required this.api,
    required this.secureStoreService,
  });

  Future<AuthToken> signInWithUserId(String userId) async {
    final credentials = apiCredentials[appConfig.buildType]!;
    final tokenBody = {
      'grant_type': 'password',
      'client_id': credentials.id,
      'client_secret': credentials.secret,
      'user_id': userId,
    };
    final tokenResponse = await api.post(
      path: 'oauth/token',
      body: tokenBody,
    );
    final token = AuthToken.fromJson(tokenResponse);
    return token;
  }
}
