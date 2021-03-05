// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'paginated_list_response.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PaginatedListResponseTearOff {
  const _$PaginatedListResponseTearOff();

  _PaginatedListResponse<T> call<T>(
      {required List<T> list, String? cursor, String? nextCursor}) {
    return _PaginatedListResponse<T>(
      list: list,
      cursor: cursor,
      nextCursor: nextCursor,
    );
  }
}

/// @nodoc
const $PaginatedListResponse = _$PaginatedListResponseTearOff();

/// @nodoc
mixin _$PaginatedListResponse<T> {
  List<T> get list => throw _privateConstructorUsedError;
  String? get cursor => throw _privateConstructorUsedError;
  String? get nextCursor => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PaginatedListResponseCopyWith<T, PaginatedListResponse<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaginatedListResponseCopyWith<T, $Res> {
  factory $PaginatedListResponseCopyWith(PaginatedListResponse<T> value,
          $Res Function(PaginatedListResponse<T>) then) =
      _$PaginatedListResponseCopyWithImpl<T, $Res>;
  $Res call({List<T> list, String? cursor, String? nextCursor});
}

/// @nodoc
class _$PaginatedListResponseCopyWithImpl<T, $Res>
    implements $PaginatedListResponseCopyWith<T, $Res> {
  _$PaginatedListResponseCopyWithImpl(this._value, this._then);

  final PaginatedListResponse<T> _value;
  // ignore: unused_field
  final $Res Function(PaginatedListResponse<T>) _then;

  @override
  $Res call({
    Object? list = freezed,
    Object? cursor = freezed,
    Object? nextCursor = freezed,
  }) {
    return _then(_value.copyWith(
      list: list == freezed ? _value.list : list as List<T>,
      cursor: cursor == freezed ? _value.cursor : cursor as String?,
      nextCursor:
          nextCursor == freezed ? _value.nextCursor : nextCursor as String?,
    ));
  }
}

/// @nodoc
abstract class _$PaginatedListResponseCopyWith<T, $Res>
    implements $PaginatedListResponseCopyWith<T, $Res> {
  factory _$PaginatedListResponseCopyWith(_PaginatedListResponse<T> value,
          $Res Function(_PaginatedListResponse<T>) then) =
      __$PaginatedListResponseCopyWithImpl<T, $Res>;
  @override
  $Res call({List<T> list, String? cursor, String? nextCursor});
}

/// @nodoc
class __$PaginatedListResponseCopyWithImpl<T, $Res>
    extends _$PaginatedListResponseCopyWithImpl<T, $Res>
    implements _$PaginatedListResponseCopyWith<T, $Res> {
  __$PaginatedListResponseCopyWithImpl(_PaginatedListResponse<T> _value,
      $Res Function(_PaginatedListResponse<T>) _then)
      : super(_value, (v) => _then(v as _PaginatedListResponse<T>));

  @override
  _PaginatedListResponse<T> get _value =>
      super._value as _PaginatedListResponse<T>;

  @override
  $Res call({
    Object? list = freezed,
    Object? cursor = freezed,
    Object? nextCursor = freezed,
  }) {
    return _then(_PaginatedListResponse<T>(
      list: list == freezed ? _value.list : list as List<T>,
      cursor: cursor == freezed ? _value.cursor : cursor as String?,
      nextCursor:
          nextCursor == freezed ? _value.nextCursor : nextCursor as String?,
    ));
  }
}

/// @nodoc
class _$_PaginatedListResponse<T> implements _PaginatedListResponse<T> {
  const _$_PaginatedListResponse(
      {required this.list, this.cursor, this.nextCursor});

  @override
  final List<T> list;
  @override
  final String? cursor;
  @override
  final String? nextCursor;

  @override
  String toString() {
    return 'PaginatedListResponse<$T>(list: $list, cursor: $cursor, nextCursor: $nextCursor)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PaginatedListResponse<T> &&
            (identical(other.list, list) ||
                const DeepCollectionEquality().equals(other.list, list)) &&
            (identical(other.cursor, cursor) ||
                const DeepCollectionEquality().equals(other.cursor, cursor)) &&
            (identical(other.nextCursor, nextCursor) ||
                const DeepCollectionEquality()
                    .equals(other.nextCursor, nextCursor)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(list) ^
      const DeepCollectionEquality().hash(cursor) ^
      const DeepCollectionEquality().hash(nextCursor);

  @JsonKey(ignore: true)
  @override
  _$PaginatedListResponseCopyWith<T, _PaginatedListResponse<T>> get copyWith =>
      __$PaginatedListResponseCopyWithImpl<T, _PaginatedListResponse<T>>(
          this, _$identity);
}

abstract class _PaginatedListResponse<T> implements PaginatedListResponse<T> {
  const factory _PaginatedListResponse(
      {required List<T> list,
      String? cursor,
      String? nextCursor}) = _$_PaginatedListResponse<T>;

  @override
  List<T> get list => throw _privateConstructorUsedError;
  @override
  String? get cursor => throw _privateConstructorUsedError;
  @override
  String? get nextCursor => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PaginatedListResponseCopyWith<T, _PaginatedListResponse<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
