// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'home_stream_video.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

HomeStreamVideo _$HomeStreamVideoFromJson(Map<String, dynamic> json) {
  return _HomeStreamVideo.fromJson(json);
}

/// @nodoc
class _$HomeStreamVideoTearOff {
  const _$HomeStreamVideoTearOff();

  _HomeStreamVideo call({required String id}) {
    return _HomeStreamVideo(
      id: id,
    );
  }

  HomeStreamVideo fromJson(Map<String, Object> json) {
    return HomeStreamVideo.fromJson(json);
  }
}

/// @nodoc
const $HomeStreamVideo = _$HomeStreamVideoTearOff();

/// @nodoc
mixin _$HomeStreamVideo {
  String get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HomeStreamVideoCopyWith<HomeStreamVideo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStreamVideoCopyWith<$Res> {
  factory $HomeStreamVideoCopyWith(
          HomeStreamVideo value, $Res Function(HomeStreamVideo) then) =
      _$HomeStreamVideoCopyWithImpl<$Res>;
  $Res call({String id});
}

/// @nodoc
class _$HomeStreamVideoCopyWithImpl<$Res>
    implements $HomeStreamVideoCopyWith<$Res> {
  _$HomeStreamVideoCopyWithImpl(this._value, this._then);

  final HomeStreamVideo _value;
  // ignore: unused_field
  final $Res Function(HomeStreamVideo) _then;

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
abstract class _$HomeStreamVideoCopyWith<$Res>
    implements $HomeStreamVideoCopyWith<$Res> {
  factory _$HomeStreamVideoCopyWith(
          _HomeStreamVideo value, $Res Function(_HomeStreamVideo) then) =
      __$HomeStreamVideoCopyWithImpl<$Res>;
  @override
  $Res call({String id});
}

/// @nodoc
class __$HomeStreamVideoCopyWithImpl<$Res>
    extends _$HomeStreamVideoCopyWithImpl<$Res>
    implements _$HomeStreamVideoCopyWith<$Res> {
  __$HomeStreamVideoCopyWithImpl(
      _HomeStreamVideo _value, $Res Function(_HomeStreamVideo) _then)
      : super(_value, (v) => _then(v as _HomeStreamVideo));

  @override
  _HomeStreamVideo get _value => super._value as _HomeStreamVideo;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_HomeStreamVideo(
      id: id == freezed ? _value.id : id as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_HomeStreamVideo implements _HomeStreamVideo {
  const _$_HomeStreamVideo({required this.id});

  factory _$_HomeStreamVideo.fromJson(Map<String, dynamic> json) =>
      _$_$_HomeStreamVideoFromJson(json);

  @override
  final String id;

  @override
  String toString() {
    return 'HomeStreamVideo(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _HomeStreamVideo &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(id);

  @JsonKey(ignore: true)
  @override
  _$HomeStreamVideoCopyWith<_HomeStreamVideo> get copyWith =>
      __$HomeStreamVideoCopyWithImpl<_HomeStreamVideo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_HomeStreamVideoToJson(this);
  }
}

abstract class _HomeStreamVideo implements HomeStreamVideo {
  const factory _HomeStreamVideo({required String id}) = _$_HomeStreamVideo;

  factory _HomeStreamVideo.fromJson(Map<String, dynamic> json) =
      _$_HomeStreamVideo.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$HomeStreamVideoCopyWith<_HomeStreamVideo> get copyWith =>
      throw _privateConstructorUsedError;
}
