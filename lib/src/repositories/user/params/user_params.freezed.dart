// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CreateUserParams _$CreateUserParamsFromJson(Map<String, dynamic> json) {
  return _CreateUserParams.fromJson(json);
}

/// @nodoc
mixin _$CreateUserParams {
  String get name => throw _privateConstructorUsedError;
  String get iconPath => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateUserParamsCopyWith<CreateUserParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateUserParamsCopyWith<$Res> {
  factory $CreateUserParamsCopyWith(
          CreateUserParams value, $Res Function(CreateUserParams) then) =
      _$CreateUserParamsCopyWithImpl<$Res, CreateUserParams>;
  @useResult
  $Res call({String name, String iconPath});
}

/// @nodoc
class _$CreateUserParamsCopyWithImpl<$Res, $Val extends CreateUserParams>
    implements $CreateUserParamsCopyWith<$Res> {
  _$CreateUserParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? iconPath = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      iconPath: null == iconPath
          ? _value.iconPath
          : iconPath // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CreateUserParamsCopyWith<$Res>
    implements $CreateUserParamsCopyWith<$Res> {
  factory _$$_CreateUserParamsCopyWith(
          _$_CreateUserParams value, $Res Function(_$_CreateUserParams) then) =
      __$$_CreateUserParamsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String iconPath});
}

/// @nodoc
class __$$_CreateUserParamsCopyWithImpl<$Res>
    extends _$CreateUserParamsCopyWithImpl<$Res, _$_CreateUserParams>
    implements _$$_CreateUserParamsCopyWith<$Res> {
  __$$_CreateUserParamsCopyWithImpl(
      _$_CreateUserParams _value, $Res Function(_$_CreateUserParams) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? iconPath = null,
  }) {
    return _then(_$_CreateUserParams(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      iconPath: null == iconPath
          ? _value.iconPath
          : iconPath // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CreateUserParams implements _CreateUserParams {
  const _$_CreateUserParams({required this.name, required this.iconPath});

  factory _$_CreateUserParams.fromJson(Map<String, dynamic> json) =>
      _$$_CreateUserParamsFromJson(json);

  @override
  final String name;
  @override
  final String iconPath;

  @override
  String toString() {
    return 'CreateUserParams(name: $name, iconPath: $iconPath)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreateUserParams &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.iconPath, iconPath) ||
                other.iconPath == iconPath));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, iconPath);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CreateUserParamsCopyWith<_$_CreateUserParams> get copyWith =>
      __$$_CreateUserParamsCopyWithImpl<_$_CreateUserParams>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CreateUserParamsToJson(
      this,
    );
  }
}

abstract class _CreateUserParams implements CreateUserParams {
  const factory _CreateUserParams(
      {required final String name,
      required final String iconPath}) = _$_CreateUserParams;

  factory _CreateUserParams.fromJson(Map<String, dynamic> json) =
      _$_CreateUserParams.fromJson;

  @override
  String get name;
  @override
  String get iconPath;
  @override
  @JsonKey(ignore: true)
  _$$_CreateUserParamsCopyWith<_$_CreateUserParams> get copyWith =>
      throw _privateConstructorUsedError;
}

UpdateUserParams _$UpdateUserParamsFromJson(Map<String, dynamic> json) {
  return _UpdateUserParams.fromJson(json);
}

/// @nodoc
mixin _$UpdateUserParams {
  String get name => throw _privateConstructorUsedError;
  String get iconPath => throw _privateConstructorUsedError;
  double get searchedRadiusInM => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdateUserParamsCopyWith<UpdateUserParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateUserParamsCopyWith<$Res> {
  factory $UpdateUserParamsCopyWith(
          UpdateUserParams value, $Res Function(UpdateUserParams) then) =
      _$UpdateUserParamsCopyWithImpl<$Res, UpdateUserParams>;
  @useResult
  $Res call({String name, String iconPath, double searchedRadiusInM});
}

/// @nodoc
class _$UpdateUserParamsCopyWithImpl<$Res, $Val extends UpdateUserParams>
    implements $UpdateUserParamsCopyWith<$Res> {
  _$UpdateUserParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? iconPath = null,
    Object? searchedRadiusInM = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      iconPath: null == iconPath
          ? _value.iconPath
          : iconPath // ignore: cast_nullable_to_non_nullable
              as String,
      searchedRadiusInM: null == searchedRadiusInM
          ? _value.searchedRadiusInM
          : searchedRadiusInM // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UpdateUserParamsCopyWith<$Res>
    implements $UpdateUserParamsCopyWith<$Res> {
  factory _$$_UpdateUserParamsCopyWith(
          _$_UpdateUserParams value, $Res Function(_$_UpdateUserParams) then) =
      __$$_UpdateUserParamsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String iconPath, double searchedRadiusInM});
}

/// @nodoc
class __$$_UpdateUserParamsCopyWithImpl<$Res>
    extends _$UpdateUserParamsCopyWithImpl<$Res, _$_UpdateUserParams>
    implements _$$_UpdateUserParamsCopyWith<$Res> {
  __$$_UpdateUserParamsCopyWithImpl(
      _$_UpdateUserParams _value, $Res Function(_$_UpdateUserParams) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? iconPath = null,
    Object? searchedRadiusInM = null,
  }) {
    return _then(_$_UpdateUserParams(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      iconPath: null == iconPath
          ? _value.iconPath
          : iconPath // ignore: cast_nullable_to_non_nullable
              as String,
      searchedRadiusInM: null == searchedRadiusInM
          ? _value.searchedRadiusInM
          : searchedRadiusInM // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UpdateUserParams implements _UpdateUserParams {
  const _$_UpdateUserParams(
      {required this.name,
      required this.iconPath,
      required this.searchedRadiusInM});

  factory _$_UpdateUserParams.fromJson(Map<String, dynamic> json) =>
      _$$_UpdateUserParamsFromJson(json);

  @override
  final String name;
  @override
  final String iconPath;
  @override
  final double searchedRadiusInM;

  @override
  String toString() {
    return 'UpdateUserParams(name: $name, iconPath: $iconPath, searchedRadiusInM: $searchedRadiusInM)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateUserParams &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.iconPath, iconPath) ||
                other.iconPath == iconPath) &&
            (identical(other.searchedRadiusInM, searchedRadiusInM) ||
                other.searchedRadiusInM == searchedRadiusInM));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, iconPath, searchedRadiusInM);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdateUserParamsCopyWith<_$_UpdateUserParams> get copyWith =>
      __$$_UpdateUserParamsCopyWithImpl<_$_UpdateUserParams>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UpdateUserParamsToJson(
      this,
    );
  }
}

abstract class _UpdateUserParams implements UpdateUserParams {
  const factory _UpdateUserParams(
      {required final String name,
      required final String iconPath,
      required final double searchedRadiusInM}) = _$_UpdateUserParams;

  factory _UpdateUserParams.fromJson(Map<String, dynamic> json) =
      _$_UpdateUserParams.fromJson;

  @override
  String get name;
  @override
  String get iconPath;
  @override
  double get searchedRadiusInM;
  @override
  @JsonKey(ignore: true)
  _$$_UpdateUserParamsCopyWith<_$_UpdateUserParams> get copyWith =>
      throw _privateConstructorUsedError;
}
