import 'dart:convert';

import 'package:architecture_tests/services/auth/auth_token.service.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;

import 'package:architecture_tests/config/app_config.dart';
import 'package:architecture_tests/data/models/api/api.models.dart';
import 'package:architecture_tests/util/log.util.dart';

import 'api_auth.dart';

typedef PaginatedListResponseItemParser<T> = T Function(
  Map<String, dynamic> json,
);

class ApiException implements Exception {
  final int statusCode;

  ApiException({required this.statusCode});

  @override
  String toString() {
    return 'ApiException{statusCode: $statusCode}';
  }
}

// ignore: top_level_function_literal_block
final apiProvider = Provider((ref) {
  final appConfig = ref.read(appConfigProvider);
  final authService = ref.read(authTokenServiceProvider);
  return Api(appConfig, authService);
});

class Api {
  final http.Client _client;
  final _basePath = '/api';
  final AppConfig _appConfig;
  final AuthTokenService _authTokenService;

  Api(
    this._appConfig,
    this._authTokenService, {
    http.Client? client,
  }) : _client = client ?? http.Client();

  Future<dynamic> get({
    required String path,
    Map<String, dynamic>? queryParameters,
  }) async {
    final response = await _client.get(
      _uriForPath(
        path,
        queryParameters: queryParameters,
      ),
      headers: _requestHeaders(),
    );

    return _processResponse(response);
  }

  Future<dynamic> post({
    required String path,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? body,
    bool addClientHeaders = false,
  }) async {
    final response = await _client.post(
      _uriForPath(
        path,
        queryParameters: queryParameters,
      ),
      headers: {
        ..._requestHeaders(),
        ...addClientHeaders ? _clientCredentialsHeaders() : {},
      },
      body: json.encode(body),
    );

    return _processResponse(response);
  }

  Future<dynamic> put({
    required String path,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? body,
  }) async {
    final response = await _client.put(
      _uriForPath(
        path,
        queryParameters: queryParameters,
      ),
      headers: _requestHeaders(),
      body: json.encode(body),
    );

    return _processResponse(response);
  }

  Future<dynamic> delete({
    required String path,
    Map<String, dynamic>? queryParameters,
  }) async {
    final response = await _client.delete(
      _uriForPath(
        path,
        queryParameters: queryParameters,
      ),
      headers: _requestHeaders(),
    );

    return _processResponse(response);
  }

  Future<PaginatedListResponse<T>> getPaginatedList<T>({
    required String path,
    String? afterCursor,
    String? beforeCursor,
    required PaginatedListResponseItemParser<T> itemParser,
  }) async {
    Map<String, String>? queryParameters;
    final hasAfterCursor = afterCursor != null && afterCursor.isNotEmpty;
    final hasBeforeCursor = beforeCursor != null && beforeCursor.isNotEmpty;
    if (hasAfterCursor || hasBeforeCursor) {
      queryParameters = {};
      if (hasAfterCursor) {
        queryParameters['after'] = afterCursor!;
      }
      if (hasBeforeCursor) {
        queryParameters['before'] = beforeCursor!;
      }
    }
    final response = await get(
      path: path,
      queryParameters: queryParameters,
    );
    final data = response['data'];
    final pagination = response['pagination'];
    if (data is! List || pagination == null) {
      throw Exception('Invalid response for paginated list');
    }
    final itemsList = (data as List)
        .map((item) => itemParser(item))
        .where((item) => item != null)
        .toList();
    return PaginatedListResponse<T>(
      list: itemsList,
      cursor: pagination['cursor'],
      nextCursor: pagination['next_cursor'],
    );
  }

  // private helper methods

  Uri _uriForPath(
    String path, {
    String version = 'v1',
    Map<String, dynamic>? queryParameters,
  }) {
    final uri = Uri.parse(_appConfig.apiHost);
    return uri.replace(
      path: '$_basePath/$version/$path',
      queryParameters: queryParameters,
    );
  }

  Map<String, String> _requestHeaders() {
    final auth = getApiAuth();
    return {
      if (auth != null) 'Authorization': auth,
      'Accept': 'application/json',
      'Content-Type': 'application/json',
    };
  }

  Map<String, String> _clientCredentialsHeaders() {
    final credentials = apiCredentials[_appConfig.buildType]!;
    return {
      'Client-Id': credentials.id,
      'Client-Secret': credentials.secret,
    };
  }

  dynamic _processResponse(http.Response response) {
    // final curl = response.request != null
    //     ? toCurl(response.request)
    //     : 'curl unavailable';
    final curl = response.request?.url ?? '';

    if (response.statusCode >= 300) {
      debugLogError('$curl FAILED ${response.statusCode}');
      throw ApiException(statusCode: response.statusCode);
    }

    debugLog('$curl SUCCESS');
    return (response.body).isNotEmpty ? json.decode(response.body) : {};
  }

  @visibleForTesting
  String? getApiAuth() {
    final token = _authTokenService.token;
    if (token == null) return null;
    return '${token.tokenType} ${token.accessToken}';
  }
}
