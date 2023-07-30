// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PostedUser _$PostedUserFromJson(Map<String, dynamic> json) {
  return _PostedUser.fromJson(json);
}

/// @nodoc
mixin _$PostedUser {
  String get userId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get iconPath => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PostedUserCopyWith<PostedUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostedUserCopyWith<$Res> {
  factory $PostedUserCopyWith(
          PostedUser value, $Res Function(PostedUser) then) =
      _$PostedUserCopyWithImpl<$Res, PostedUser>;
  @useResult
  $Res call({String userId, String name, String iconPath});
}

/// @nodoc
class _$PostedUserCopyWithImpl<$Res, $Val extends PostedUser>
    implements $PostedUserCopyWith<$Res> {
  _$PostedUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? name = null,
    Object? iconPath = null,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
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
abstract class _$$_PostedUserCopyWith<$Res>
    implements $PostedUserCopyWith<$Res> {
  factory _$$_PostedUserCopyWith(
          _$_PostedUser value, $Res Function(_$_PostedUser) then) =
      __$$_PostedUserCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String userId, String name, String iconPath});
}

/// @nodoc
class __$$_PostedUserCopyWithImpl<$Res>
    extends _$PostedUserCopyWithImpl<$Res, _$_PostedUser>
    implements _$$_PostedUserCopyWith<$Res> {
  __$$_PostedUserCopyWithImpl(
      _$_PostedUser _value, $Res Function(_$_PostedUser) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? name = null,
    Object? iconPath = null,
  }) {
    return _then(_$_PostedUser(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
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
class _$_PostedUser implements _PostedUser {
  const _$_PostedUser(
      {required this.userId, required this.name, required this.iconPath});

  factory _$_PostedUser.fromJson(Map<String, dynamic> json) =>
      _$$_PostedUserFromJson(json);

  @override
  final String userId;
  @override
  final String name;
  @override
  final String iconPath;

  @override
  String toString() {
    return 'PostedUser(userId: $userId, name: $name, iconPath: $iconPath)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PostedUser &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.iconPath, iconPath) ||
                other.iconPath == iconPath));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, userId, name, iconPath);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PostedUserCopyWith<_$_PostedUser> get copyWith =>
      __$$_PostedUserCopyWithImpl<_$_PostedUser>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PostedUserToJson(
      this,
    );
  }
}

abstract class _PostedUser implements PostedUser {
  const factory _PostedUser(
      {required final String userId,
      required final String name,
      required final String iconPath}) = _$_PostedUser;

  factory _PostedUser.fromJson(Map<String, dynamic> json) =
      _$_PostedUser.fromJson;

  @override
  String get userId;
  @override
  String get name;
  @override
  String get iconPath;
  @override
  @JsonKey(ignore: true)
  _$$_PostedUserCopyWith<_$_PostedUser> get copyWith =>
      throw _privateConstructorUsedError;
}
