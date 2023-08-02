// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'snap_route.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SnapRoute _$SnapRouteFromJson(Map<String, dynamic> json) {
  return _SnapRoute.fromJson(json);
}

/// @nodoc
mixin _$SnapRoute {
  String get snapRouteId => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get createdUserId => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;
  String get updatedAt => throw _privateConstructorUsedError;
  List<SnapPost> get snapPosts => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SnapRouteCopyWith<SnapRoute> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SnapRouteCopyWith<$Res> {
  factory $SnapRouteCopyWith(SnapRoute value, $Res Function(SnapRoute) then) =
      _$SnapRouteCopyWithImpl<$Res, SnapRoute>;
  @useResult
  $Res call(
      {String snapRouteId,
      String title,
      String createdUserId,
      String createdAt,
      String updatedAt,
      List<SnapPost> snapPosts});
}

/// @nodoc
class _$SnapRouteCopyWithImpl<$Res, $Val extends SnapRoute>
    implements $SnapRouteCopyWith<$Res> {
  _$SnapRouteCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? snapRouteId = null,
    Object? title = null,
    Object? createdUserId = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? snapPosts = null,
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
      createdUserId: null == createdUserId
          ? _value.createdUserId
          : createdUserId // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      snapPosts: null == snapPosts
          ? _value.snapPosts
          : snapPosts // ignore: cast_nullable_to_non_nullable
              as List<SnapPost>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SnapRouteCopyWith<$Res> implements $SnapRouteCopyWith<$Res> {
  factory _$$_SnapRouteCopyWith(
          _$_SnapRoute value, $Res Function(_$_SnapRoute) then) =
      __$$_SnapRouteCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String snapRouteId,
      String title,
      String createdUserId,
      String createdAt,
      String updatedAt,
      List<SnapPost> snapPosts});
}

/// @nodoc
class __$$_SnapRouteCopyWithImpl<$Res>
    extends _$SnapRouteCopyWithImpl<$Res, _$_SnapRoute>
    implements _$$_SnapRouteCopyWith<$Res> {
  __$$_SnapRouteCopyWithImpl(
      _$_SnapRoute _value, $Res Function(_$_SnapRoute) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? snapRouteId = null,
    Object? title = null,
    Object? createdUserId = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? snapPosts = null,
  }) {
    return _then(_$_SnapRoute(
      snapRouteId: null == snapRouteId
          ? _value.snapRouteId
          : snapRouteId // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      createdUserId: null == createdUserId
          ? _value.createdUserId
          : createdUserId // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      snapPosts: null == snapPosts
          ? _value._snapPosts
          : snapPosts // ignore: cast_nullable_to_non_nullable
              as List<SnapPost>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_SnapRoute implements _SnapRoute {
  const _$_SnapRoute(
      {required this.snapRouteId,
      required this.title,
      required this.createdUserId,
      required this.createdAt,
      required this.updatedAt,
      required final List<SnapPost> snapPosts})
      : _snapPosts = snapPosts;

  factory _$_SnapRoute.fromJson(Map<String, dynamic> json) =>
      _$$_SnapRouteFromJson(json);

  @override
  final String snapRouteId;
  @override
  final String title;
  @override
  final String createdUserId;
  @override
  final String createdAt;
  @override
  final String updatedAt;
  final List<SnapPost> _snapPosts;
  @override
  List<SnapPost> get snapPosts {
    if (_snapPosts is EqualUnmodifiableListView) return _snapPosts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_snapPosts);
  }

  @override
  String toString() {
    return 'SnapRoute(snapRouteId: $snapRouteId, title: $title, createdUserId: $createdUserId, createdAt: $createdAt, updatedAt: $updatedAt, snapPosts: $snapPosts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SnapRoute &&
            (identical(other.snapRouteId, snapRouteId) ||
                other.snapRouteId == snapRouteId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.createdUserId, createdUserId) ||
                other.createdUserId == createdUserId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            const DeepCollectionEquality()
                .equals(other._snapPosts, _snapPosts));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      snapRouteId,
      title,
      createdUserId,
      createdAt,
      updatedAt,
      const DeepCollectionEquality().hash(_snapPosts));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SnapRouteCopyWith<_$_SnapRoute> get copyWith =>
      __$$_SnapRouteCopyWithImpl<_$_SnapRoute>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SnapRouteToJson(
      this,
    );
  }
}

abstract class _SnapRoute implements SnapRoute {
  const factory _SnapRoute(
      {required final String snapRouteId,
      required final String title,
      required final String createdUserId,
      required final String createdAt,
      required final String updatedAt,
      required final List<SnapPost> snapPosts}) = _$_SnapRoute;

  factory _SnapRoute.fromJson(Map<String, dynamic> json) =
      _$_SnapRoute.fromJson;

  @override
  String get snapRouteId;
  @override
  String get title;
  @override
  String get createdUserId;
  @override
  String get createdAt;
  @override
  String get updatedAt;
  @override
  List<SnapPost> get snapPosts;
  @override
  @JsonKey(ignore: true)
  _$$_SnapRouteCopyWith<_$_SnapRoute> get copyWith =>
      throw _privateConstructorUsedError;
}
