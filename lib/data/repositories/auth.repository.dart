import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:architecture_tests/config/app_config.dart';
import 'package:architecture_tests/data/api/api.dart';
import 'package:architecture_tests/data/models/auth/auth.models.dart';
import 'package:architecture_tests/services/services.dart';
import 'package:architecture_tests/util/log.util.dart';

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
    _saveSessionInfo(token);
    return token;
  }

  static const _secureStoreTokenKey = 'tk8.auth.session.token';

  Future<AuthToken?> loadToken() async {
    final tokenJson =
        await secureStoreService.getSecureValueForKey(_secureStoreTokenKey);
    if (tokenJson == null) return null;

    final token = AuthToken.fromJson(json.decode(tokenJson));
    debugLog('loaded saved session token: $token');
    return token;
  }

  Future<void> _saveSessionInfo(AuthToken token) async {
    await secureStoreService.setSecureValue(
      _secureStoreTokenKey,
      json.encode(token.toJson()),
    );
  }

  Future<void> _deleteSessionInfo() async {
    await secureStoreService.deleteValueForKey(_secureStoreTokenKey);
  }
}
