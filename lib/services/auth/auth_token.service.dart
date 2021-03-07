import 'dart:convert';

import 'package:architecture_tests/data/models/auth/auth.models.dart';
import 'package:architecture_tests/services/services.dart';
import 'package:architecture_tests/util/log.util.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

const _secureStoreTokenKey = 'tk8.auth.session.token';

final authTokenServiceProvider = Provider((ref) => AuthTokenService(
      secureStoreService: ref.read(secureStoreProvider),
    ));

class AuthTokenService {
  final SecureStoreService secureStoreService;
  AuthToken? _token;

  AuthTokenService({required this.secureStoreService});

  AuthToken? get token => _token;

  void setToken(AuthToken? value) {
    _token = value;
    if (value == null) {
      _deleteSessionInfo();
    } else {
      _saveSessionInfo(value);
    }
  }

  Future<void> loadToken() async {
    final tokenJson =
        await secureStoreService.getSecureValueForKey(_secureStoreTokenKey);
    if (tokenJson == null) return;

    _token = AuthToken.fromJson(json.decode(tokenJson));
    debugLog('loaded saved session token: $_token');
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
