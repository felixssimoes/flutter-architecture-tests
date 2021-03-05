import 'package:freezed_annotation/freezed_annotation.dart';

part 'token.model.freezed.dart';
part 'token.model.g.dart';

@freezed
abstract class AuthToken with _$AuthToken {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory AuthToken({
    required String accessToken,
    required String tokenType,
  }) = _AuthToken;

  factory AuthToken.fromJson(Map<String, dynamic> json) =>
      _$AuthTokenFromJson(json);
}
