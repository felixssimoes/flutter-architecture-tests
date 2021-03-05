// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'api_credentials.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ApiCredentialsTearOff {
  const _$ApiCredentialsTearOff();

  _ApiCrendentials call(String id, String secret) {
    return _ApiCrendentials(
      id,
      secret,
    );
  }
}

/// @nodoc
const $ApiCredentials = _$ApiCredentialsTearOff();

/// @nodoc
mixin _$ApiCredentials {
  String get id => throw _privateConstructorUsedError;
  String get secret => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ApiCredentialsCopyWith<ApiCredentials> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiCredentialsCopyWith<$Res> {
  factory $ApiCredentialsCopyWith(
          ApiCredentials value, $Res Function(ApiCredentials) then) =
      _$ApiCredentialsCopyWithImpl<$Res>;
  $Res call({String id, String secret});
}

/// @nodoc
class _$ApiCredentialsCopyWithImpl<$Res>
    implements $ApiCredentialsCopyWith<$Res> {
  _$ApiCredentialsCopyWithImpl(this._value, this._then);

  final ApiCredentials _value;
  // ignore: unused_field
  final $Res Function(ApiCredentials) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? secret = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      secret: secret == freezed ? _value.secret : secret as String,
    ));
  }
}

/// @nodoc
abstract class _$ApiCrendentialsCopyWith<$Res>
    implements $ApiCredentialsCopyWith<$Res> {
  factory _$ApiCrendentialsCopyWith(
          _ApiCrendentials value, $Res Function(_ApiCrendentials) then) =
      __$ApiCrendentialsCopyWithImpl<$Res>;
  @override
  $Res call({String id, String secret});
}

/// @nodoc
class __$ApiCrendentialsCopyWithImpl<$Res>
    extends _$ApiCredentialsCopyWithImpl<$Res>
    implements _$ApiCrendentialsCopyWith<$Res> {
  __$ApiCrendentialsCopyWithImpl(
      _ApiCrendentials _value, $Res Function(_ApiCrendentials) _then)
      : super(_value, (v) => _then(v as _ApiCrendentials));

  @override
  _ApiCrendentials get _value => super._value as _ApiCrendentials;

  @override
  $Res call({
    Object? id = freezed,
    Object? secret = freezed,
  }) {
    return _then(_ApiCrendentials(
      id == freezed ? _value.id : id as String,
      secret == freezed ? _value.secret : secret as String,
    ));
  }
}

/// @nodoc
class _$_ApiCrendentials implements _ApiCrendentials {
  const _$_ApiCrendentials(this.id, this.secret);

  @override
  final String id;
  @override
  final String secret;

  @override
  String toString() {
    return 'ApiCredentials(id: $id, secret: $secret)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ApiCrendentials &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.secret, secret) ||
                const DeepCollectionEquality().equals(other.secret, secret)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(secret);

  @JsonKey(ignore: true)
  @override
  _$ApiCrendentialsCopyWith<_ApiCrendentials> get copyWith =>
      __$ApiCrendentialsCopyWithImpl<_ApiCrendentials>(this, _$identity);
}

abstract class _ApiCrendentials implements ApiCredentials {
  const factory _ApiCrendentials(String id, String secret) = _$_ApiCrendentials;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get secret => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ApiCrendentialsCopyWith<_ApiCrendentials> get copyWith =>
      throw _privateConstructorUsedError;
}
