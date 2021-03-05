import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_credentials.model.freezed.dart';

@freezed
abstract class ApiCredentials with _$ApiCredentials {
  const factory ApiCredentials(
    String id,
    String secret,
  ) = _ApiCrendentials;
}
