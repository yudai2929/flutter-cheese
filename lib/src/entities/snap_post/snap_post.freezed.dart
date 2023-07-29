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
      PostedUser postedUser});

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
      PostedUser postedUser});

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
      required this.postedUser})
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
  String toString() {
    return 'SnapPost(snapPostId: $snapPostId, userId: $userId, postImages: $postImages, tags: $tags, title: $title, comment: $comment, longitude: $longitude, latitude: $latitude, postedAt: $postedAt, updatedAt: $updatedAt, likedCount: $likedCount, postedUser: $postedUser)';
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
                other.postedUser == postedUser));
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
      postedUser);

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
      required final PostedUser postedUser}) = _$_SnapPost;

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
  @JsonKey(ignore: true)
  _$$_SnapPostCopyWith<_$_SnapPost> get copyWith =>
      throw _privateConstructorUsedError;
}

PostImage _$PostImageFromJson(Map<String, dynamic> json) {
  return _PostImage.fromJson(json);
}

/// @nodoc
mixin _$PostImage {
  String get imagePath => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PostImageCopyWith<PostImage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostImageCopyWith<$Res> {
  factory $PostImageCopyWith(PostImage value, $Res Function(PostImage) then) =
      _$PostImageCopyWithImpl<$Res, PostImage>;
  @useResult
  $Res call({String imagePath});
}

/// @nodoc
class _$PostImageCopyWithImpl<$Res, $Val extends PostImage>
    implements $PostImageCopyWith<$Res> {
  _$PostImageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imagePath = null,
  }) {
    return _then(_value.copyWith(
      imagePath: null == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PostImageCopyWith<$Res> implements $PostImageCopyWith<$Res> {
  factory _$$_PostImageCopyWith(
          _$_PostImage value, $Res Function(_$_PostImage) then) =
      __$$_PostImageCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String imagePath});
}

/// @nodoc
class __$$_PostImageCopyWithImpl<$Res>
    extends _$PostImageCopyWithImpl<$Res, _$_PostImage>
    implements _$$_PostImageCopyWith<$Res> {
  __$$_PostImageCopyWithImpl(
      _$_PostImage _value, $Res Function(_$_PostImage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imagePath = null,
  }) {
    return _then(_$_PostImage(
      imagePath: null == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PostImage implements _PostImage {
  const _$_PostImage({required this.imagePath});

  factory _$_PostImage.fromJson(Map<String, dynamic> json) =>
      _$$_PostImageFromJson(json);

  @override
  final String imagePath;

  @override
  String toString() {
    return 'PostImage(imagePath: $imagePath)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PostImage &&
            (identical(other.imagePath, imagePath) ||
                other.imagePath == imagePath));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, imagePath);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PostImageCopyWith<_$_PostImage> get copyWith =>
      __$$_PostImageCopyWithImpl<_$_PostImage>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PostImageToJson(
      this,
    );
  }
}

abstract class _PostImage implements PostImage {
  const factory _PostImage({required final String imagePath}) = _$_PostImage;

  factory _PostImage.fromJson(Map<String, dynamic> json) =
      _$_PostImage.fromJson;

  @override
  String get imagePath;
  @override
  @JsonKey(ignore: true)
  _$$_PostImageCopyWith<_$_PostImage> get copyWith =>
      throw _privateConstructorUsedError;
}

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
