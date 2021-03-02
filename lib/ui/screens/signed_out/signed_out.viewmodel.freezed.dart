// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'signed_out.viewmodel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$SignedOutViewModelStateTearOff {
  const _$SignedOutViewModelStateTearOff();

// ignore: unused_element
  _Loading loading() {
    return const _Loading();
  }

// ignore: unused_element
  _Ready ready() {
    return const _Ready();
  }
}

/// @nodoc
// ignore: unused_element
const $SignedOutViewModelState = _$SignedOutViewModelStateTearOff();

/// @nodoc
mixin _$SignedOutViewModelState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loading(),
    @required TResult ready(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loading(),
    TResult ready(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loading(_Loading value),
    @required TResult ready(_Ready value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loading(_Loading value),
    TResult ready(_Ready value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $SignedOutViewModelStateCopyWith<$Res> {
  factory $SignedOutViewModelStateCopyWith(SignedOutViewModelState value,
          $Res Function(SignedOutViewModelState) then) =
      _$SignedOutViewModelStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$SignedOutViewModelStateCopyWithImpl<$Res>
    implements $SignedOutViewModelStateCopyWith<$Res> {
  _$SignedOutViewModelStateCopyWithImpl(this._value, this._then);

  final SignedOutViewModelState _value;
  // ignore: unused_field
  final $Res Function(SignedOutViewModelState) _then;
}

/// @nodoc
abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingCopyWithImpl<$Res>
    extends _$SignedOutViewModelStateCopyWithImpl<$Res>
    implements _$LoadingCopyWith<$Res> {
  __$LoadingCopyWithImpl(_Loading _value, $Res Function(_Loading) _then)
      : super(_value, (v) => _then(v as _Loading));

  @override
  _Loading get _value => super._value as _Loading;
}

/// @nodoc
class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'SignedOutViewModelState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loading(),
    @required TResult ready(),
  }) {
    assert(loading != null);
    assert(ready != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loading(),
    TResult ready(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loading(_Loading value),
    @required TResult ready(_Ready value),
  }) {
    assert(loading != null);
    assert(ready != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loading(_Loading value),
    TResult ready(_Ready value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements SignedOutViewModelState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$ReadyCopyWith<$Res> {
  factory _$ReadyCopyWith(_Ready value, $Res Function(_Ready) then) =
      __$ReadyCopyWithImpl<$Res>;
}

/// @nodoc
class __$ReadyCopyWithImpl<$Res>
    extends _$SignedOutViewModelStateCopyWithImpl<$Res>
    implements _$ReadyCopyWith<$Res> {
  __$ReadyCopyWithImpl(_Ready _value, $Res Function(_Ready) _then)
      : super(_value, (v) => _then(v as _Ready));

  @override
  _Ready get _value => super._value as _Ready;
}

/// @nodoc
class _$_Ready implements _Ready {
  const _$_Ready();

  @override
  String toString() {
    return 'SignedOutViewModelState.ready()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Ready);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loading(),
    @required TResult ready(),
  }) {
    assert(loading != null);
    assert(ready != null);
    return ready();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loading(),
    TResult ready(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (ready != null) {
      return ready();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loading(_Loading value),
    @required TResult ready(_Ready value),
  }) {
    assert(loading != null);
    assert(ready != null);
    return ready(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loading(_Loading value),
    TResult ready(_Ready value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (ready != null) {
      return ready(this);
    }
    return orElse();
  }
}

abstract class _Ready implements SignedOutViewModelState {
  const factory _Ready() = _$_Ready;
}
