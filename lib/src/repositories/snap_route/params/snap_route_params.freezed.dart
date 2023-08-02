// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'snap_route_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CreateSnapRouteParams _$CreateSnapRouteParamsFromJson(
    Map<String, dynamic> json) {
  return _CreateSnapRouteParams.fromJson(json);
}

/// @nodoc
mixin _$CreateSnapRouteParams {
  String get title => throw _privateConstructorUsedError;
  List<String> get snapPostIds => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateSnapRouteParamsCopyWith<CreateSnapRouteParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateSnapRouteParamsCopyWith<$Res> {
  factory $CreateSnapRouteParamsCopyWith(CreateSnapRouteParams value,
          $Res Function(CreateSnapRouteParams) then) =
      _$CreateSnapRouteParamsCopyWithImpl<$Res, CreateSnapRouteParams>;
  @useResult
  $Res call({String title, List<String> snapPostIds});
}

/// @nodoc
class _$CreateSnapRouteParamsCopyWithImpl<$Res,
        $Val extends CreateSnapRouteParams>
    implements $CreateSnapRouteParamsCopyWith<$Res> {
  _$CreateSnapRouteParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? snapPostIds = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      snapPostIds: null == snapPostIds
          ? _value.snapPostIds
          : snapPostIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CreateSnapRouteParamsCopyWith<$Res>
    implements $CreateSnapRouteParamsCopyWith<$Res> {
  factory _$$_CreateSnapRouteParamsCopyWith(_$_CreateSnapRouteParams value,
          $Res Function(_$_CreateSnapRouteParams) then) =
      __$$_CreateSnapRouteParamsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, List<String> snapPostIds});
}

/// @nodoc
class __$$_CreateSnapRouteParamsCopyWithImpl<$Res>
    extends _$CreateSnapRouteParamsCopyWithImpl<$Res, _$_CreateSnapRouteParams>
    implements _$$_CreateSnapRouteParamsCopyWith<$Res> {
  __$$_CreateSnapRouteParamsCopyWithImpl(_$_CreateSnapRouteParams _value,
      $Res Function(_$_CreateSnapRouteParams) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? snapPostIds = null,
  }) {
    return _then(_$_CreateSnapRouteParams(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      snapPostIds: null == snapPostIds
          ? _value._snapPostIds
          : snapPostIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_CreateSnapRouteParams implements _CreateSnapRouteParams {
  const _$_CreateSnapRouteParams(
      {required this.title, required final List<String> snapPostIds})
      : _snapPostIds = snapPostIds;

  factory _$_CreateSnapRouteParams.fromJson(Map<String, dynamic> json) =>
      _$$_CreateSnapRouteParamsFromJson(json);

  @override
  final String title;
  final List<String> _snapPostIds;
  @override
  List<String> get snapPostIds {
    if (_snapPostIds is EqualUnmodifiableListView) return _snapPostIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_snapPostIds);
  }

  @override
  String toString() {
    return 'CreateSnapRouteParams(title: $title, snapPostIds: $snapPostIds)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreateSnapRouteParams &&
            (identical(other.title, title) || other.title == title) &&
            const DeepCollectionEquality()
                .equals(other._snapPostIds, _snapPostIds));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, title, const DeepCollectionEquality().hash(_snapPostIds));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CreateSnapRouteParamsCopyWith<_$_CreateSnapRouteParams> get copyWith =>
      __$$_CreateSnapRouteParamsCopyWithImpl<_$_CreateSnapRouteParams>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CreateSnapRouteParamsToJson(
      this,
    );
  }
}

abstract class _CreateSnapRouteParams implements CreateSnapRouteParams {
  const factory _CreateSnapRouteParams(
      {required final String title,
      required final List<String> snapPostIds}) = _$_CreateSnapRouteParams;

  factory _CreateSnapRouteParams.fromJson(Map<String, dynamic> json) =
      _$_CreateSnapRouteParams.fromJson;

  @override
  String get title;
  @override
  List<String> get snapPostIds;
  @override
  @JsonKey(ignore: true)
  _$$_CreateSnapRouteParamsCopyWith<_$_CreateSnapRouteParams> get copyWith =>
      throw _privateConstructorUsedError;
}

UpdateSnapRouteParams _$UpdateSnapRouteParamsFromJson(
    Map<String, dynamic> json) {
  return _UpdateSnapRouteParams.fromJson(json);
}

/// @nodoc
mixin _$UpdateSnapRouteParams {
  String get snapRouteId => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  List<String> get snapPostIds => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdateSnapRouteParamsCopyWith<UpdateSnapRouteParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateSnapRouteParamsCopyWith<$Res> {
  factory $UpdateSnapRouteParamsCopyWith(UpdateSnapRouteParams value,
          $Res Function(UpdateSnapRouteParams) then) =
      _$UpdateSnapRouteParamsCopyWithImpl<$Res, UpdateSnapRouteParams>;
  @useResult
  $Res call({String snapRouteId, String title, List<String> snapPostIds});
}

/// @nodoc
class _$UpdateSnapRouteParamsCopyWithImpl<$Res,
        $Val extends UpdateSnapRouteParams>
    implements $UpdateSnapRouteParamsCopyWith<$Res> {
  _$UpdateSnapRouteParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? snapRouteId = null,
    Object? title = null,
    Object? snapPostIds = null,
  }) {
    return _then(_value.copyWith(
      snapRouteId: null == snapRouteId
          ? _value.snapRouteId
          : snapRouteId // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      snapPostIds: null == snapPostIds
          ? _value.snapPostIds
          : snapPostIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UpdateSnapRouteParamsCopyWith<$Res>
    implements $UpdateSnapRouteParamsCopyWith<$Res> {
  factory _$$_UpdateSnapRouteParamsCopyWith(_$_UpdateSnapRouteParams value,
          $Res Function(_$_UpdateSnapRouteParams) then) =
      __$$_UpdateSnapRouteParamsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String snapRouteId, String title, List<String> snapPostIds});
}

/// @nodoc
class __$$_UpdateSnapRouteParamsCopyWithImpl<$Res>
    extends _$UpdateSnapRouteParamsCopyWithImpl<$Res, _$_UpdateSnapRouteParams>
    implements _$$_UpdateSnapRouteParamsCopyWith<$Res> {
  __$$_UpdateSnapRouteParamsCopyWithImpl(_$_UpdateSnapRouteParams _value,
      $Res Function(_$_UpdateSnapRouteParams) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? snapRouteId = null,
    Object? title = null,
    Object? snapPostIds = null,
  }) {
    return _then(_$_UpdateSnapRouteParams(
      snapRouteId: null == snapRouteId
          ? _value.snapRouteId
          : snapRouteId // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      snapPostIds: null == snapPostIds
          ? _value._snapPostIds
          : snapPostIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_UpdateSnapRouteParams implements _UpdateSnapRouteParams {
  const _$_UpdateSnapRouteParams(
      {required this.snapRouteId,
      required this.title,
      required final List<String> snapPostIds})
      : _snapPostIds = snapPostIds;

  factory _$_UpdateSnapRouteParams.fromJson(Map<String, dynamic> json) =>
      _$$_UpdateSnapRouteParamsFromJson(json);

  @override
  final String snapRouteId;
  @override
  final String title;
  final List<String> _snapPostIds;
  @override
  List<String> get snapPostIds {
    if (_snapPostIds is EqualUnmodifiableListView) return _snapPostIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_snapPostIds);
  }

  @override
  String toString() {
    return 'UpdateSnapRouteParams(snapRouteId: $snapRouteId, title: $title, snapPostIds: $snapPostIds)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateSnapRouteParams &&
            (identical(other.snapRouteId, snapRouteId) ||
                other.snapRouteId == snapRouteId) &&
            (identical(other.title, title) || other.title == title) &&
            const DeepCollectionEquality()
                .equals(other._snapPostIds, _snapPostIds));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, snapRouteId, title,
      const DeepCollectionEquality().hash(_snapPostIds));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdateSnapRouteParamsCopyWith<_$_UpdateSnapRouteParams> get copyWith =>
      __$$_UpdateSnapRouteParamsCopyWithImpl<_$_UpdateSnapRouteParams>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UpdateSnapRouteParamsToJson(
      this,
    );
  }
}

abstract class _UpdateSnapRouteParams implements UpdateSnapRouteParams {
  const factory _UpdateSnapRouteParams(
      {required final String snapRouteId,
      required final String title,
      required final List<String> snapPostIds}) = _$_UpdateSnapRouteParams;

  factory _UpdateSnapRouteParams.fromJson(Map<String, dynamic> json) =
      _$_UpdateSnapRouteParams.fromJson;

  @override
  String get snapRouteId;
  @override
  String get title;
  @override
  List<String> get snapPostIds;
  @override
  @JsonKey(ignore: true)
  _$$_UpdateSnapRouteParamsCopyWith<_$_UpdateSnapRouteParams> get copyWith =>
      throw _privateConstructorUsedError;
}

DeleteSnapRouteParams _$DeleteSnapRouteParamsFromJson(
    Map<String, dynamic> json) {
  return _DeleteSnapRouteParams.fromJson(json);
}

/// @nodoc
mixin _$DeleteSnapRouteParams {
  String get snapRouteId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeleteSnapRouteParamsCopyWith<DeleteSnapRouteParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeleteSnapRouteParamsCopyWith<$Res> {
  factory $DeleteSnapRouteParamsCopyWith(DeleteSnapRouteParams value,
          $Res Function(DeleteSnapRouteParams) then) =
      _$DeleteSnapRouteParamsCopyWithImpl<$Res, DeleteSnapRouteParams>;
  @useResult
  $Res call({String snapRouteId});
}

/// @nodoc
class _$DeleteSnapRouteParamsCopyWithImpl<$Res,
        $Val extends DeleteSnapRouteParams>
    implements $DeleteSnapRouteParamsCopyWith<$Res> {
  _$DeleteSnapRouteParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? snapRouteId = null,
  }) {
    return _then(_value.copyWith(
      snapRouteId: null == snapRouteId
          ? _value.snapRouteId
          : snapRouteId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DeleteSnapRouteParamsCopyWith<$Res>
    implements $DeleteSnapRouteParamsCopyWith<$Res> {
  factory _$$_DeleteSnapRouteParamsCopyWith(_$_DeleteSnapRouteParams value,
          $Res Function(_$_DeleteSnapRouteParams) then) =
      __$$_DeleteSnapRouteParamsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String snapRouteId});
}

/// @nodoc
class __$$_DeleteSnapRouteParamsCopyWithImpl<$Res>
    extends _$DeleteSnapRouteParamsCopyWithImpl<$Res, _$_DeleteSnapRouteParams>
    implements _$$_DeleteSnapRouteParamsCopyWith<$Res> {
  __$$_DeleteSnapRouteParamsCopyWithImpl(_$_DeleteSnapRouteParams _value,
      $Res Function(_$_DeleteSnapRouteParams) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? snapRouteId = null,
  }) {
    return _then(_$_DeleteSnapRouteParams(
      snapRouteId: null == snapRouteId
          ? _value.snapRouteId
          : snapRouteId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DeleteSnapRouteParams implements _DeleteSnapRouteParams {
  const _$_DeleteSnapRouteParams({required this.snapRouteId});

  factory _$_DeleteSnapRouteParams.fromJson(Map<String, dynamic> json) =>
      _$$_DeleteSnapRouteParamsFromJson(json);

  @override
  final String snapRouteId;

  @override
  String toString() {
    return 'DeleteSnapRouteParams(snapRouteId: $snapRouteId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeleteSnapRouteParams &&
            (identical(other.snapRouteId, snapRouteId) ||
                other.snapRouteId == snapRouteId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, snapRouteId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DeleteSnapRouteParamsCopyWith<_$_DeleteSnapRouteParams> get copyWith =>
      __$$_DeleteSnapRouteParamsCopyWithImpl<_$_DeleteSnapRouteParams>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DeleteSnapRouteParamsToJson(
      this,
    );
  }
}

abstract class _DeleteSnapRouteParams implements DeleteSnapRouteParams {
  const factory _DeleteSnapRouteParams({required final String snapRouteId}) =
      _$_DeleteSnapRouteParams;

  factory _DeleteSnapRouteParams.fromJson(Map<String, dynamic> json) =
      _$_DeleteSnapRouteParams.fromJson;

  @override
  String get snapRouteId;
  @override
  @JsonKey(ignore: true)
  _$$_DeleteSnapRouteParamsCopyWith<_$_DeleteSnapRouteParams> get copyWith =>
      throw _privateConstructorUsedError;
}

FetchSnapRouteParams _$FetchSnapRouteParamsFromJson(Map<String, dynamic> json) {
  return _FetchSnapRouteParams.fromJson(json);
}

/// @nodoc
mixin _$FetchSnapRouteParams {
  String get snapRouteId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FetchSnapRouteParamsCopyWith<FetchSnapRouteParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FetchSnapRouteParamsCopyWith<$Res> {
  factory $FetchSnapRouteParamsCopyWith(FetchSnapRouteParams value,
          $Res Function(FetchSnapRouteParams) then) =
      _$FetchSnapRouteParamsCopyWithImpl<$Res, FetchSnapRouteParams>;
  @useResult
  $Res call({String snapRouteId});
}

/// @nodoc
class _$FetchSnapRouteParamsCopyWithImpl<$Res,
        $Val extends FetchSnapRouteParams>
    implements $FetchSnapRouteParamsCopyWith<$Res> {
  _$FetchSnapRouteParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? snapRouteId = null,
  }) {
    return _then(_value.copyWith(
      snapRouteId: null == snapRouteId
          ? _value.snapRouteId
          : snapRouteId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FetchSnapRouteParamsCopyWith<$Res>
    implements $FetchSnapRouteParamsCopyWith<$Res> {
  factory _$$_FetchSnapRouteParamsCopyWith(_$_FetchSnapRouteParams value,
          $Res Function(_$_FetchSnapRouteParams) then) =
      __$$_FetchSnapRouteParamsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String snapRouteId});
}

/// @nodoc
class __$$_FetchSnapRouteParamsCopyWithImpl<$Res>
    extends _$FetchSnapRouteParamsCopyWithImpl<$Res, _$_FetchSnapRouteParams>
    implements _$$_FetchSnapRouteParamsCopyWith<$Res> {
  __$$_FetchSnapRouteParamsCopyWithImpl(_$_FetchSnapRouteParams _value,
      $Res Function(_$_FetchSnapRouteParams) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? snapRouteId = null,
  }) {
    return _then(_$_FetchSnapRouteParams(
      snapRouteId: null == snapRouteId
          ? _value.snapRouteId
          : snapRouteId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FetchSnapRouteParams implements _FetchSnapRouteParams {
  const _$_FetchSnapRouteParams({required this.snapRouteId});

  factory _$_FetchSnapRouteParams.fromJson(Map<String, dynamic> json) =>
      _$$_FetchSnapRouteParamsFromJson(json);

  @override
  final String snapRouteId;

  @override
  String toString() {
    return 'FetchSnapRouteParams(snapRouteId: $snapRouteId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FetchSnapRouteParams &&
            (identical(other.snapRouteId, snapRouteId) ||
                other.snapRouteId == snapRouteId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, snapRouteId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FetchSnapRouteParamsCopyWith<_$_FetchSnapRouteParams> get copyWith =>
      __$$_FetchSnapRouteParamsCopyWithImpl<_$_FetchSnapRouteParams>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FetchSnapRouteParamsToJson(
      this,
    );
  }
}

abstract class _FetchSnapRouteParams implements FetchSnapRouteParams {
  const factory _FetchSnapRouteParams({required final String snapRouteId}) =
      _$_FetchSnapRouteParams;

  factory _FetchSnapRouteParams.fromJson(Map<String, dynamic> json) =
      _$_FetchSnapRouteParams.fromJson;

  @override
  String get snapRouteId;
  @override
  @JsonKey(ignore: true)
  _$$_FetchSnapRouteParamsCopyWith<_$_FetchSnapRouteParams> get copyWith =>
      throw _privateConstructorUsedError;
}
