// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'home_stream_image.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

HomeStreamImage _$HomeStreamImageFromJson(Map<String, dynamic> json) {
  return _HomeStreamImage.fromJson(json);
}

/// @nodoc
class _$HomeStreamImageTearOff {
  const _$HomeStreamImageTearOff();

  _HomeStreamImage call({required String id}) {
    return _HomeStreamImage(
      id: id,
    );
  }

  HomeStreamImage fromJson(Map<String, Object> json) {
    return HomeStreamImage.fromJson(json);
  }
}

/// @nodoc
const $HomeStreamImage = _$HomeStreamImageTearOff();

/// @nodoc
mixin _$HomeStreamImage {
  String get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HomeStreamImageCopyWith<HomeStreamImage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStreamImageCopyWith<$Res> {
  factory $HomeStreamImageCopyWith(
          HomeStreamImage value, $Res Function(HomeStreamImage) then) =
      _$HomeStreamImageCopyWithImpl<$Res>;
  $Res call({String id});
}

/// @nodoc
class _$HomeStreamImageCopyWithImpl<$Res>
    implements $HomeStreamImageCopyWith<$Res> {
  _$HomeStreamImageCopyWithImpl(this._value, this._then);

  final HomeStreamImage _value;
  // ignore: unused_field
  final $Res Function(HomeStreamImage) _then;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
    ));
  }
}

/// @nodoc
abstract class _$HomeStreamImageCopyWith<$Res>
    implements $HomeStreamImageCopyWith<$Res> {
  factory _$HomeStreamImageCopyWith(
          _HomeStreamImage value, $Res Function(_HomeStreamImage) then) =
      __$HomeStreamImageCopyWithImpl<$Res>;
  @override
  $Res call({String id});
}

/// @nodoc
class __$HomeStreamImageCopyWithImpl<$Res>
    extends _$HomeStreamImageCopyWithImpl<$Res>
    implements _$HomeStreamImageCopyWith<$Res> {
  __$HomeStreamImageCopyWithImpl(
      _HomeStreamImage _value, $Res Function(_HomeStreamImage) _then)
      : super(_value, (v) => _then(v as _HomeStreamImage));

  @override
  _HomeStreamImage get _value => super._value as _HomeStreamImage;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_HomeStreamImage(
      id: id == freezed ? _value.id : id as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_HomeStreamImage implements _HomeStreamImage {
  const _$_HomeStreamImage({required this.id});

  factory _$_HomeStreamImage.fromJson(Map<String, dynamic> json) =>
      _$_$_HomeStreamImageFromJson(json);

  @override
  final String id;

  @override
  String toString() {
    return 'HomeStreamImage(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _HomeStreamImage &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(id);

  @JsonKey(ignore: true)
  @override
  _$HomeStreamImageCopyWith<_HomeStreamImage> get copyWith =>
      __$HomeStreamImageCopyWithImpl<_HomeStreamImage>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_HomeStreamImageToJson(this);
  }
}

abstract class _HomeStreamImage implements HomeStreamImage {
  const factory _HomeStreamImage({required String id}) = _$_HomeStreamImage;

  factory _HomeStreamImage.fromJson(Map<String, dynamic> json) =
      _$_HomeStreamImage.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$HomeStreamImageCopyWith<_HomeStreamImage> get copyWith =>
      throw _privateConstructorUsedError;
}
