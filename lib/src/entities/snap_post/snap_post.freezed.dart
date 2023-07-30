// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'snap_post.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SnapPost _$SnapPostFromJson(Map<String, dynamic> json) {
  return _SnapPost.fromJson(json);
}

/// @nodoc
mixin _$SnapPost {
  String get snapPostId => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  List<PostImage> get postImages => throw _privateConstructorUsedError;
  List<String> get tags => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String? get comment => throw _privateConstructorUsedError;
  double get longitude => throw _privateConstructorUsedError;
  double get latitude => throw _privateConstructorUsedError;
  String get postedAt => throw _privateConstructorUsedError;
  String get updatedAt => throw _privateConstructorUsedError;
  int get likedCount => throw _privateConstructorUsedError;
  PostedUser get postedUser => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SnapPostCopyWith<SnapPost> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SnapPostCopyWith<$Res> {
  factory $SnapPostCopyWith(SnapPost value, $Res Function(SnapPost) then) =
      _$SnapPostCopyWithImpl<$Res, SnapPost>;
  @useResult
  $Res call(
      {String snapPostId,
      String userId,
      List<PostImage> postImages,
      List<String> tags,
      String title,
      String? comment,
      double longitude,
      double latitude,
      String postedAt,
      String updatedAt,
      int likedCount,
      PostedUser postedUser,
      String address});

  $PostedUserCopyWith<$Res> get postedUser;
}

/// @nodoc
class _$SnapPostCopyWithImpl<$Res, $Val extends SnapPost>
    implements $SnapPostCopyWith<$Res> {
  _$SnapPostCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? snapPostId = null,
    Object? userId = null,
    Object? postImages = null,
    Object? tags = null,
    Object? title = null,
    Object? comment = freezed,
    Object? longitude = null,
    Object? latitude = null,
    Object? postedAt = null,
    Object? updatedAt = null,
    Object? likedCount = null,
    Object? postedUser = null,
    Object? address = null,
  }) {
    return _then(_value.copyWith(
      snapPostId: null == snapPostId
          ? _value.snapPostId
          : snapPostId // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      postImages: null == postImages
          ? _value.postImages
          : postImages // ignore: cast_nullable_to_non_nullable
              as List<PostImage>,
      tags: null == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      postedAt: null == postedAt
          ? _value.postedAt
          : postedAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      likedCount: null == likedCount
          ? _value.likedCount
          : likedCount // ignore: cast_nullable_to_non_nullable
              as int,
      postedUser: null == postedUser
          ? _value.postedUser
          : postedUser // ignore: cast_nullable_to_non_nullable
              as PostedUser,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PostedUserCopyWith<$Res> get postedUser {
    return $PostedUserCopyWith<$Res>(_value.postedUser, (value) {
      return _then(_value.copyWith(postedUser: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_SnapPostCopyWith<$Res> implements $SnapPostCopyWith<$Res> {
  factory _$$_SnapPostCopyWith(
          _$_SnapPost value, $Res Function(_$_SnapPost) then) =
      __$$_SnapPostCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String snapPostId,
      String userId,
      List<PostImage> postImages,
      List<String> tags,
      String title,
      String? comment,
      double longitude,
      double latitude,
      String postedAt,
      String updatedAt,
      int likedCount,
      PostedUser postedUser,
      String address});

  @override
  $PostedUserCopyWith<$Res> get postedUser;
}

/// @nodoc
class __$$_SnapPostCopyWithImpl<$Res>
    extends _$SnapPostCopyWithImpl<$Res, _$_SnapPost>
    implements _$$_SnapPostCopyWith<$Res> {
  __$$_SnapPostCopyWithImpl(
      _$_SnapPost _value, $Res Function(_$_SnapPost) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? snapPostId = null,
    Object? userId = null,
    Object? postImages = null,
    Object? tags = null,
    Object? title = null,
    Object? comment = freezed,
    Object? longitude = null,
    Object? latitude = null,
    Object? postedAt = null,
    Object? updatedAt = null,
    Object? likedCount = null,
    Object? postedUser = null,
    Object? address = null,
  }) {
    return _then(_$_SnapPost(
      snapPostId: null == snapPostId
          ? _value.snapPostId
          : snapPostId // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      postImages: null == postImages
          ? _value._postImages
          : postImages // ignore: cast_nullable_to_non_nullable
              as List<PostImage>,
      tags: null == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      postedAt: null == postedAt
          ? _value.postedAt
          : postedAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      likedCount: null == likedCount
          ? _value.likedCount
          : likedCount // ignore: cast_nullable_to_non_nullable
              as int,
      postedUser: null == postedUser
          ? _value.postedUser
          : postedUser // ignore: cast_nullable_to_non_nullable
              as PostedUser,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_SnapPost implements _SnapPost {
  const _$_SnapPost(
      {required this.snapPostId,
      required this.userId,
      required final List<PostImage> postImages,
      required final List<String> tags,
      required this.title,
      this.comment,
      required this.longitude,
      required this.latitude,
      required this.postedAt,
      required this.updatedAt,
      required this.likedCount,
      required this.postedUser,
      required this.address})
      : _postImages = postImages,
        _tags = tags;

  factory _$_SnapPost.fromJson(Map<String, dynamic> json) =>
      _$$_SnapPostFromJson(json);

  @override
  final String snapPostId;
  @override
  final String userId;
  final List<PostImage> _postImages;
  @override
  List<PostImage> get postImages {
    if (_postImages is EqualUnmodifiableListView) return _postImages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_postImages);
  }

  final List<String> _tags;
  @override
  List<String> get tags {
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

  @override
  final String title;
  @override
  final String? comment;
  @override
  final double longitude;
  @override
  final double latitude;
  @override
  final String postedAt;
  @override
  final String updatedAt;
  @override
  final int likedCount;
  @override
  final PostedUser postedUser;
  @override
  final String address;

  @override
  String toString() {
    return 'SnapPost(snapPostId: $snapPostId, userId: $userId, postImages: $postImages, tags: $tags, title: $title, comment: $comment, longitude: $longitude, latitude: $latitude, postedAt: $postedAt, updatedAt: $updatedAt, likedCount: $likedCount, postedUser: $postedUser, address: $address)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SnapPost &&
            (identical(other.snapPostId, snapPostId) ||
                other.snapPostId == snapPostId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            const DeepCollectionEquality()
                .equals(other._postImages, _postImages) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.comment, comment) || other.comment == comment) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.postedAt, postedAt) ||
                other.postedAt == postedAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.likedCount, likedCount) ||
                other.likedCount == likedCount) &&
            (identical(other.postedUser, postedUser) ||
                other.postedUser == postedUser) &&
            (identical(other.address, address) || other.address == address));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      snapPostId,
      userId,
      const DeepCollectionEquality().hash(_postImages),
      const DeepCollectionEquality().hash(_tags),
      title,
      comment,
      longitude,
      latitude,
      postedAt,
      updatedAt,
      likedCount,
      postedUser,
      address);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SnapPostCopyWith<_$_SnapPost> get copyWith =>
      __$$_SnapPostCopyWithImpl<_$_SnapPost>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SnapPostToJson(
      this,
    );
  }
}

abstract class _SnapPost implements SnapPost {
  const factory _SnapPost(
      {required final String snapPostId,
      required final String userId,
      required final List<PostImage> postImages,
      required final List<String> tags,
      required final String title,
      final String? comment,
      required final double longitude,
      required final double latitude,
      required final String postedAt,
      required final String updatedAt,
      required final int likedCount,
      required final PostedUser postedUser,
      required final String address}) = _$_SnapPost;

  factory _SnapPost.fromJson(Map<String, dynamic> json) = _$_SnapPost.fromJson;

  @override
  String get snapPostId;
  @override
  String get userId;
  @override
  List<PostImage> get postImages;
  @override
  List<String> get tags;
  @override
  String get title;
  @override
  String? get comment;
  @override
  double get longitude;
  @override
  double get latitude;
  @override
  String get postedAt;
  @override
  String get updatedAt;
  @override
  int get likedCount;
  @override
  PostedUser get postedUser;
  @override
  String get address;
  @override
  @JsonKey(ignore: true)
  _$$_SnapPostCopyWith<_$_SnapPost> get copyWith =>
      throw _privateConstructorUsedError;
}
