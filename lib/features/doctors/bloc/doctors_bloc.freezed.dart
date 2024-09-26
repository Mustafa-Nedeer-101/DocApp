// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'doctors_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DoctorsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DoctorsEventCopyWith<$Res> {
  factory $DoctorsEventCopyWith(
          DoctorsEvent value, $Res Function(DoctorsEvent) then) =
      _$DoctorsEventCopyWithImpl<$Res, DoctorsEvent>;
}

/// @nodoc
class _$DoctorsEventCopyWithImpl<$Res, $Val extends DoctorsEvent>
    implements $DoctorsEventCopyWith<$Res> {
  _$DoctorsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$DoctorsEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'DoctorsEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements DoctorsEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
mixin _$DoctorsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<DoctorEntity> data) success,
    required TResult Function(Failure error) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<DoctorEntity> data)? success,
    TResult? Function(Failure error)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<DoctorEntity> data)? success,
    TResult Function(Failure error)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(DocLoading value) loading,
    required TResult Function(DocSuccess value) success,
    required TResult Function(DocFailure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(DocLoading value)? loading,
    TResult? Function(DocSuccess value)? success,
    TResult? Function(DocFailure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(DocLoading value)? loading,
    TResult Function(DocSuccess value)? success,
    TResult Function(DocFailure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DoctorsStateCopyWith<$Res> {
  factory $DoctorsStateCopyWith(
          DoctorsState value, $Res Function(DoctorsState) then) =
      _$DoctorsStateCopyWithImpl<$Res, DoctorsState>;
}

/// @nodoc
class _$DoctorsStateCopyWithImpl<$Res, $Val extends DoctorsState>
    implements $DoctorsStateCopyWith<$Res> {
  _$DoctorsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$DoctorsStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'DoctorsState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<DoctorEntity> data) success,
    required TResult Function(Failure error) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<DoctorEntity> data)? success,
    TResult? Function(Failure error)? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<DoctorEntity> data)? success,
    TResult Function(Failure error)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(DocLoading value) loading,
    required TResult Function(DocSuccess value) success,
    required TResult Function(DocFailure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(DocLoading value)? loading,
    TResult? Function(DocSuccess value)? success,
    TResult? Function(DocFailure value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(DocLoading value)? loading,
    TResult Function(DocSuccess value)? success,
    TResult Function(DocFailure value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements DoctorsState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$DocLoadingImplCopyWith<$Res> {
  factory _$$DocLoadingImplCopyWith(
          _$DocLoadingImpl value, $Res Function(_$DocLoadingImpl) then) =
      __$$DocLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DocLoadingImplCopyWithImpl<$Res>
    extends _$DoctorsStateCopyWithImpl<$Res, _$DocLoadingImpl>
    implements _$$DocLoadingImplCopyWith<$Res> {
  __$$DocLoadingImplCopyWithImpl(
      _$DocLoadingImpl _value, $Res Function(_$DocLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DocLoadingImpl implements DocLoading {
  const _$DocLoadingImpl();

  @override
  String toString() {
    return 'DoctorsState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DocLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<DoctorEntity> data) success,
    required TResult Function(Failure error) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<DoctorEntity> data)? success,
    TResult? Function(Failure error)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<DoctorEntity> data)? success,
    TResult Function(Failure error)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(DocLoading value) loading,
    required TResult Function(DocSuccess value) success,
    required TResult Function(DocFailure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(DocLoading value)? loading,
    TResult? Function(DocSuccess value)? success,
    TResult? Function(DocFailure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(DocLoading value)? loading,
    TResult Function(DocSuccess value)? success,
    TResult Function(DocFailure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class DocLoading implements DoctorsState {
  const factory DocLoading() = _$DocLoadingImpl;
}

/// @nodoc
abstract class _$$DocSuccessImplCopyWith<$Res> {
  factory _$$DocSuccessImplCopyWith(
          _$DocSuccessImpl value, $Res Function(_$DocSuccessImpl) then) =
      __$$DocSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<DoctorEntity> data});
}

/// @nodoc
class __$$DocSuccessImplCopyWithImpl<$Res>
    extends _$DoctorsStateCopyWithImpl<$Res, _$DocSuccessImpl>
    implements _$$DocSuccessImplCopyWith<$Res> {
  __$$DocSuccessImplCopyWithImpl(
      _$DocSuccessImpl _value, $Res Function(_$DocSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$DocSuccessImpl(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<DoctorEntity>,
    ));
  }
}

/// @nodoc

class _$DocSuccessImpl implements DocSuccess {
  const _$DocSuccessImpl({required final List<DoctorEntity> data})
      : _data = data;

  final List<DoctorEntity> _data;
  @override
  List<DoctorEntity> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'DoctorsState.success(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DocSuccessImpl &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DocSuccessImplCopyWith<_$DocSuccessImpl> get copyWith =>
      __$$DocSuccessImplCopyWithImpl<_$DocSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<DoctorEntity> data) success,
    required TResult Function(Failure error) failure,
  }) {
    return success(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<DoctorEntity> data)? success,
    TResult? Function(Failure error)? failure,
  }) {
    return success?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<DoctorEntity> data)? success,
    TResult Function(Failure error)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(DocLoading value) loading,
    required TResult Function(DocSuccess value) success,
    required TResult Function(DocFailure value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(DocLoading value)? loading,
    TResult? Function(DocSuccess value)? success,
    TResult? Function(DocFailure value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(DocLoading value)? loading,
    TResult Function(DocSuccess value)? success,
    TResult Function(DocFailure value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class DocSuccess implements DoctorsState {
  const factory DocSuccess({required final List<DoctorEntity> data}) =
      _$DocSuccessImpl;

  List<DoctorEntity> get data;
  @JsonKey(ignore: true)
  _$$DocSuccessImplCopyWith<_$DocSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DocFailureImplCopyWith<$Res> {
  factory _$$DocFailureImplCopyWith(
          _$DocFailureImpl value, $Res Function(_$DocFailureImpl) then) =
      __$$DocFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Failure error});
}

/// @nodoc
class __$$DocFailureImplCopyWithImpl<$Res>
    extends _$DoctorsStateCopyWithImpl<$Res, _$DocFailureImpl>
    implements _$$DocFailureImplCopyWith<$Res> {
  __$$DocFailureImplCopyWithImpl(
      _$DocFailureImpl _value, $Res Function(_$DocFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$DocFailureImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }
}

/// @nodoc

class _$DocFailureImpl implements DocFailure {
  const _$DocFailureImpl({required this.error});

  @override
  final Failure error;

  @override
  String toString() {
    return 'DoctorsState.failure(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DocFailureImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DocFailureImplCopyWith<_$DocFailureImpl> get copyWith =>
      __$$DocFailureImplCopyWithImpl<_$DocFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<DoctorEntity> data) success,
    required TResult Function(Failure error) failure,
  }) {
    return failure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<DoctorEntity> data)? success,
    TResult? Function(Failure error)? failure,
  }) {
    return failure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<DoctorEntity> data)? success,
    TResult Function(Failure error)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(DocLoading value) loading,
    required TResult Function(DocSuccess value) success,
    required TResult Function(DocFailure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(DocLoading value)? loading,
    TResult? Function(DocSuccess value)? success,
    TResult? Function(DocFailure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(DocLoading value)? loading,
    TResult Function(DocSuccess value)? success,
    TResult Function(DocFailure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class DocFailure implements DoctorsState {
  const factory DocFailure({required final Failure error}) = _$DocFailureImpl;

  Failure get error;
  @JsonKey(ignore: true)
  _$$DocFailureImplCopyWith<_$DocFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
