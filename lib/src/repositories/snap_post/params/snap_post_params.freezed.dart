// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'snap_post_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CreateSnapPostParams _$CreateSnapPostParamsFromJson(Map<String, dynamic> json) {
  return _CreateSnapPostParams.fromJson(json);
}

/// @nodoc
mixin _$CreateSnapPostParams {
  String get title => throw _privateConstructorUsedError;
  String? get comment => throw _privateConstructorUsedError;
  double get longitude => throw _privateConstructorUsedError;
  double get latitude => throw _privateConstructorUsedError;
  List<PostImage> get postImages => throw _privateConstructorUsedError;
  List<String> get tags => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateSnapPostParamsCopyWith<CreateSnapPostParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateSnapPostParamsCopyWith<$Res> {
  factory $CreateSnapPostParamsCopyWith(CreateSnapPostParams value,
          $Res Function(CreateSnapPostParams) then) =
      _$CreateSnapPostParamsCopyWithImpl<$Res, CreateSnapPostParams>;
  @useResult
  $Res call(
      {String title,
      String? comment,
      double longitude,
      double latitude,
      List<PostImage> postImages,
      List<String> tags,
      String address});
}

/// @nodoc
class _$CreateSnapPostParamsCopyWithImpl<$Res,
        $Val extends CreateSnapPostParams>
    implements $CreateSnapPostParamsCopyWith<$Res> {
  _$CreateSnapPostParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? comment = freezed,
    Object? longitude = null,
    Object? latitude = null,
    Object? postImages = null,
    Object? tags = null,
    Object? address = null,
  }) {
    return _then(_value.copyWith(
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
      postImages: null == postImages
          ? _value.postImages
          : postImages // ignore: cast_nullable_to_non_nullable
              as List<PostImage>,
      tags: null == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CreateSnapPostParamsCopyWith<$Res>
    implements $CreateSnapPostParamsCopyWith<$Res> {
  factory _$$_CreateSnapPostParamsCopyWith(_$_CreateSnapPostParams value,
          $Res Function(_$_CreateSnapPostParams) then) =
      __$$_CreateSnapPostParamsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      String? comment,
      double longitude,
      double latitude,
      List<PostImage> postImages,
      List<String> tags,
      String address});
}

/// @nodoc
class __$$_CreateSnapPostParamsCopyWithImpl<$Res>
    extends _$CreateSnapPostParamsCopyWithImpl<$Res, _$_CreateSnapPostParams>
    implements _$$_CreateSnapPostParamsCopyWith<$Res> {
  __$$_CreateSnapPostParamsCopyWithImpl(_$_CreateSnapPostParams _value,
      $Res Function(_$_CreateSnapPostParams) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? comment = freezed,
    Object? longitude = null,
    Object? latitude = null,
    Object? postImages = null,
    Object? tags = null,
    Object? address = null,
  }) {
    return _then(_$_CreateSnapPostParams(
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
      postImages: null == postImages
          ? _value._postImages
          : postImages // ignore: cast_nullable_to_non_nullable
              as List<PostImage>,
      tags: null == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_CreateSnapPostParams implements _CreateSnapPostParams {
  const _$_CreateSnapPostParams(
      {required this.title,
      this.comment,
      required this.longitude,
      required this.latitude,
      required final List<PostImage> postImages,
      required final List<String> tags,
      required this.address})
      : _postImages = postImages,
        _tags = tags;

  factory _$_CreateSnapPostParams.fromJson(Map<String, dynamic> json) =>
      _$$_CreateSnapPostParamsFromJson(json);

  @override
  final String title;
  @override
  final String? comment;
  @override
  final double longitude;
  @override
  final double latitude;
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
  final String address;

  @override
  String toString() {
    return 'CreateSnapPostParams(title: $title, comment: $comment, longitude: $longitude, latitude: $latitude, postImages: $postImages, tags: $tags, address: $address)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreateSnapPostParams &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.comment, comment) || other.comment == comment) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            const DeepCollectionEquality()
                .equals(other._postImages, _postImages) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            (identical(other.address, address) || other.address == address));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      title,
      comment,
      longitude,
      latitude,
      const DeepCollectionEquality().hash(_postImages),
      const DeepCollectionEquality().hash(_tags),
      address);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CreateSnapPostParamsCopyWith<_$_CreateSnapPostParams> get copyWith =>
      __$$_CreateSnapPostParamsCopyWithImpl<_$_CreateSnapPostParams>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CreateSnapPostParamsToJson(
      this,
    );
  }
}

abstract class _CreateSnapPostParams implements CreateSnapPostParams {
  const factory _CreateSnapPostParams(
      {required final String title,
      final String? comment,
      required final double longitude,
      required final double latitude,
      required final List<PostImage> postImages,
      required final List<String> tags,
      required final String address}) = _$_CreateSnapPostParams;

  factory _CreateSnapPostParams.fromJson(Map<String, dynamic> json) =
      _$_CreateSnapPostParams.fromJson;

  @override
  String get title;
  @override
  String? get comment;
  @override
  double get longitude;
  @override
  double get latitude;
  @override
  List<PostImage> get postImages;
  @override
  List<String> get tags;
  @override
  String get address;
  @override
  @JsonKey(ignore: true)
  _$$_CreateSnapPostParamsCopyWith<_$_CreateSnapPostParams> get copyWith =>
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

UpdateSnapPostParams _$UpdateSnapPostParamsFromJson(Map<String, dynamic> json) {
  return _UpdateSnapPostParams.fromJson(json);
}

/// @nodoc
mixin _$UpdateSnapPostParams {
  String get snapPostId => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String? get comment => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdateSnapPostParamsCopyWith<UpdateSnapPostParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateSnapPostParamsCopyWith<$Res> {
  factory $UpdateSnapPostParamsCopyWith(UpdateSnapPostParams value,
          $Res Function(UpdateSnapPostParams) then) =
      _$UpdateSnapPostParamsCopyWithImpl<$Res, UpdateSnapPostParams>;
  @useResult
  $Res call({String snapPostId, String title, String? comment});
}

/// @nodoc
class _$UpdateSnapPostParamsCopyWithImpl<$Res,
        $Val extends UpdateSnapPostParams>
    implements $UpdateSnapPostParamsCopyWith<$Res> {
  _$UpdateSnapPostParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? snapPostId = null,
    Object? title = null,
    Object? comment = freezed,
  }) {
    return _then(_value.copyWith(
      snapPostId: null == snapPostId
          ? _value.snapPostId
          : snapPostId // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UpdateSnapPostParamsCopyWith<$Res>
    implements $UpdateSnapPostParamsCopyWith<$Res> {
  factory _$$_UpdateSnapPostParamsCopyWith(_$_UpdateSnapPostParams value,
          $Res Function(_$_UpdateSnapPostParams) then) =
      __$$_UpdateSnapPostParamsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String snapPostId, String title, String? comment});
}

/// @nodoc
class __$$_UpdateSnapPostParamsCopyWithImpl<$Res>
    extends _$UpdateSnapPostParamsCopyWithImpl<$Res, _$_UpdateSnapPostParams>
    implements _$$_UpdateSnapPostParamsCopyWith<$Res> {
  __$$_UpdateSnapPostParamsCopyWithImpl(_$_UpdateSnapPostParams _value,
      $Res Function(_$_UpdateSnapPostParams) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? snapPostId = null,
    Object? title = null,
    Object? comment = freezed,
  }) {
    return _then(_$_UpdateSnapPostParams(
      snapPostId: null == snapPostId
          ? _value.snapPostId
          : snapPostId // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_UpdateSnapPostParams implements _UpdateSnapPostParams {
  const _$_UpdateSnapPostParams(
      {required this.snapPostId, required this.title, this.comment});

  factory _$_UpdateSnapPostParams.fromJson(Map<String, dynamic> json) =>
      _$$_UpdateSnapPostParamsFromJson(json);

  @override
  final String snapPostId;
  @override
  final String title;
  @override
  final String? comment;

  @override
  String toString() {
    return 'UpdateSnapPostParams(snapPostId: $snapPostId, title: $title, comment: $comment)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateSnapPostParams &&
            (identical(other.snapPostId, snapPostId) ||
                other.snapPostId == snapPostId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.comment, comment) || other.comment == comment));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, snapPostId, title, comment);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdateSnapPostParamsCopyWith<_$_UpdateSnapPostParams> get copyWith =>
      __$$_UpdateSnapPostParamsCopyWithImpl<_$_UpdateSnapPostParams>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UpdateSnapPostParamsToJson(
      this,
    );
  }
}

abstract class _UpdateSnapPostParams implements UpdateSnapPostParams {
  const factory _UpdateSnapPostParams(
      {required final String snapPostId,
      required final String title,
      final String? comment}) = _$_UpdateSnapPostParams;

  factory _UpdateSnapPostParams.fromJson(Map<String, dynamic> json) =
      _$_UpdateSnapPostParams.fromJson;

  @override
  String get snapPostId;
  @override
  String get title;
  @override
  String? get comment;
  @override
  @JsonKey(ignore: true)
  _$$_UpdateSnapPostParamsCopyWith<_$_UpdateSnapPostParams> get copyWith =>
      throw _privateConstructorUsedError;
}

DeleteSnapPostParams _$DeleteSnapPostParamsFromJson(Map<String, dynamic> json) {
  return _DeleteSnapPostParams.fromJson(json);
}

/// @nodoc
mixin _$DeleteSnapPostParams {
  String get snapPostId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeleteSnapPostParamsCopyWith<DeleteSnapPostParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeleteSnapPostParamsCopyWith<$Res> {
  factory $DeleteSnapPostParamsCopyWith(DeleteSnapPostParams value,
          $Res Function(DeleteSnapPostParams) then) =
      _$DeleteSnapPostParamsCopyWithImpl<$Res, DeleteSnapPostParams>;
  @useResult
  $Res call({String snapPostId});
}

/// @nodoc
class _$DeleteSnapPostParamsCopyWithImpl<$Res,
        $Val extends DeleteSnapPostParams>
    implements $DeleteSnapPostParamsCopyWith<$Res> {
  _$DeleteSnapPostParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? snapPostId = null,
  }) {
    return _then(_value.copyWith(
      snapPostId: null == snapPostId
          ? _value.snapPostId
          : snapPostId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DeleteSnapPostParamsCopyWith<$Res>
    implements $DeleteSnapPostParamsCopyWith<$Res> {
  factory _$$_DeleteSnapPostParamsCopyWith(_$_DeleteSnapPostParams value,
          $Res Function(_$_DeleteSnapPostParams) then) =
      __$$_DeleteSnapPostParamsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String snapPostId});
}

/// @nodoc
class __$$_DeleteSnapPostParamsCopyWithImpl<$Res>
    extends _$DeleteSnapPostParamsCopyWithImpl<$Res, _$_DeleteSnapPostParams>
    implements _$$_DeleteSnapPostParamsCopyWith<$Res> {
  __$$_DeleteSnapPostParamsCopyWithImpl(_$_DeleteSnapPostParams _value,
      $Res Function(_$_DeleteSnapPostParams) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? snapPostId = null,
  }) {
    return _then(_$_DeleteSnapPostParams(
      snapPostId: null == snapPostId
          ? _value.snapPostId
          : snapPostId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DeleteSnapPostParams implements _DeleteSnapPostParams {
  const _$_DeleteSnapPostParams({required this.snapPostId});

  factory _$_DeleteSnapPostParams.fromJson(Map<String, dynamic> json) =>
      _$$_DeleteSnapPostParamsFromJson(json);

  @override
  final String snapPostId;

  @override
  String toString() {
    return 'DeleteSnapPostParams(snapPostId: $snapPostId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeleteSnapPostParams &&
            (identical(other.snapPostId, snapPostId) ||
                other.snapPostId == snapPostId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, snapPostId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DeleteSnapPostParamsCopyWith<_$_DeleteSnapPostParams> get copyWith =>
      __$$_DeleteSnapPostParamsCopyWithImpl<_$_DeleteSnapPostParams>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DeleteSnapPostParamsToJson(
      this,
    );
  }
}

abstract class _DeleteSnapPostParams implements DeleteSnapPostParams {
  const factory _DeleteSnapPostParams({required final String snapPostId}) =
      _$_DeleteSnapPostParams;

  factory _DeleteSnapPostParams.fromJson(Map<String, dynamic> json) =
      _$_DeleteSnapPostParams.fromJson;

  @override
  String get snapPostId;
  @override
  @JsonKey(ignore: true)
  _$$_DeleteSnapPostParamsCopyWith<_$_DeleteSnapPostParams> get copyWith =>
      throw _privateConstructorUsedError;
}

LikeSnapPostParams _$LikeSnapPostParamsFromJson(Map<String, dynamic> json) {
  return _LikeSnapPostParams.fromJson(json);
}

/// @nodoc
mixin _$LikeSnapPostParams {
  List<String> get snapPostIds => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LikeSnapPostParamsCopyWith<LikeSnapPostParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LikeSnapPostParamsCopyWith<$Res> {
  factory $LikeSnapPostParamsCopyWith(
          LikeSnapPostParams value, $Res Function(LikeSnapPostParams) then) =
      _$LikeSnapPostParamsCopyWithImpl<$Res, LikeSnapPostParams>;
  @useResult
  $Res call({List<String> snapPostIds});
}

/// @nodoc
class _$LikeSnapPostParamsCopyWithImpl<$Res, $Val extends LikeSnapPostParams>
    implements $LikeSnapPostParamsCopyWith<$Res> {
  _$LikeSnapPostParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? snapPostIds = null,
  }) {
    return _then(_value.copyWith(
      snapPostIds: null == snapPostIds
          ? _value.snapPostIds
          : snapPostIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LikeSnapPostParamsCopyWith<$Res>
    implements $LikeSnapPostParamsCopyWith<$Res> {
  factory _$$_LikeSnapPostParamsCopyWith(_$_LikeSnapPostParams value,
          $Res Function(_$_LikeSnapPostParams) then) =
      __$$_LikeSnapPostParamsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<String> snapPostIds});
}

/// @nodoc
class __$$_LikeSnapPostParamsCopyWithImpl<$Res>
    extends _$LikeSnapPostParamsCopyWithImpl<$Res, _$_LikeSnapPostParams>
    implements _$$_LikeSnapPostParamsCopyWith<$Res> {
  __$$_LikeSnapPostParamsCopyWithImpl(
      _$_LikeSnapPostParams _value, $Res Function(_$_LikeSnapPostParams) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? snapPostIds = null,
  }) {
    return _then(_$_LikeSnapPostParams(
      snapPostIds: null == snapPostIds
          ? _value._snapPostIds
          : snapPostIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LikeSnapPostParams implements _LikeSnapPostParams {
  const _$_LikeSnapPostParams({required final List<String> snapPostIds})
      : _snapPostIds = snapPostIds;

  factory _$_LikeSnapPostParams.fromJson(Map<String, dynamic> json) =>
      _$$_LikeSnapPostParamsFromJson(json);

  final List<String> _snapPostIds;
  @override
  List<String> get snapPostIds {
    if (_snapPostIds is EqualUnmodifiableListView) return _snapPostIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_snapPostIds);
  }

  @override
  String toString() {
    return 'LikeSnapPostParams(snapPostIds: $snapPostIds)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LikeSnapPostParams &&
            const DeepCollectionEquality()
                .equals(other._snapPostIds, _snapPostIds));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_snapPostIds));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LikeSnapPostParamsCopyWith<_$_LikeSnapPostParams> get copyWith =>
      __$$_LikeSnapPostParamsCopyWithImpl<_$_LikeSnapPostParams>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LikeSnapPostParamsToJson(
      this,
    );
  }
}

abstract class _LikeSnapPostParams implements LikeSnapPostParams {
  const factory _LikeSnapPostParams({required final List<String> snapPostIds}) =
      _$_LikeSnapPostParams;

  factory _LikeSnapPostParams.fromJson(Map<String, dynamic> json) =
      _$_LikeSnapPostParams.fromJson;

  @override
  List<String> get snapPostIds;
  @override
  @JsonKey(ignore: true)
  _$$_LikeSnapPostParamsCopyWith<_$_LikeSnapPostParams> get copyWith =>
      throw _privateConstructorUsedError;
}

FetchNearbySnapPostsParams _$FetchNearbySnapPostsParamsFromJson(
    Map<String, dynamic> json) {
  return _FetchNearbySnapPostsParams.fromJson(json);
}

/// @nodoc
mixin _$FetchNearbySnapPostsParams {
  double get longitude => throw _privateConstructorUsedError;
  double get latitude => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FetchNearbySnapPostsParamsCopyWith<FetchNearbySnapPostsParams>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FetchNearbySnapPostsParamsCopyWith<$Res> {
  factory $FetchNearbySnapPostsParamsCopyWith(FetchNearbySnapPostsParams value,
          $Res Function(FetchNearbySnapPostsParams) then) =
      _$FetchNearbySnapPostsParamsCopyWithImpl<$Res,
          FetchNearbySnapPostsParams>;
  @useResult
  $Res call({double longitude, double latitude});
}

/// @nodoc
class _$FetchNearbySnapPostsParamsCopyWithImpl<$Res,
        $Val extends FetchNearbySnapPostsParams>
    implements $FetchNearbySnapPostsParamsCopyWith<$Res> {
  _$FetchNearbySnapPostsParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? longitude = null,
    Object? latitude = null,
  }) {
    return _then(_value.copyWith(
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FetchNearbySnapPostsParamsCopyWith<$Res>
    implements $FetchNearbySnapPostsParamsCopyWith<$Res> {
  factory _$$_FetchNearbySnapPostsParamsCopyWith(
          _$_FetchNearbySnapPostsParams value,
          $Res Function(_$_FetchNearbySnapPostsParams) then) =
      __$$_FetchNearbySnapPostsParamsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double longitude, double latitude});
}

/// @nodoc
class __$$_FetchNearbySnapPostsParamsCopyWithImpl<$Res>
    extends _$FetchNearbySnapPostsParamsCopyWithImpl<$Res,
        _$_FetchNearbySnapPostsParams>
    implements _$$_FetchNearbySnapPostsParamsCopyWith<$Res> {
  __$$_FetchNearbySnapPostsParamsCopyWithImpl(
      _$_FetchNearbySnapPostsParams _value,
      $Res Function(_$_FetchNearbySnapPostsParams) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? longitude = null,
    Object? latitude = null,
  }) {
    return _then(_$_FetchNearbySnapPostsParams(
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FetchNearbySnapPostsParams implements _FetchNearbySnapPostsParams {
  const _$_FetchNearbySnapPostsParams(
      {required this.longitude, required this.latitude});

  factory _$_FetchNearbySnapPostsParams.fromJson(Map<String, dynamic> json) =>
      _$$_FetchNearbySnapPostsParamsFromJson(json);

  @override
  final double longitude;
  @override
  final double latitude;

  @override
  String toString() {
    return 'FetchNearbySnapPostsParams(longitude: $longitude, latitude: $latitude)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FetchNearbySnapPostsParams &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, longitude, latitude);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FetchNearbySnapPostsParamsCopyWith<_$_FetchNearbySnapPostsParams>
      get copyWith => __$$_FetchNearbySnapPostsParamsCopyWithImpl<
          _$_FetchNearbySnapPostsParams>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FetchNearbySnapPostsParamsToJson(
      this,
    );
  }
}

abstract class _FetchNearbySnapPostsParams
    implements FetchNearbySnapPostsParams {
  const factory _FetchNearbySnapPostsParams(
      {required final double longitude,
      required final double latitude}) = _$_FetchNearbySnapPostsParams;

  factory _FetchNearbySnapPostsParams.fromJson(Map<String, dynamic> json) =
      _$_FetchNearbySnapPostsParams.fromJson;

  @override
  double get longitude;
  @override
  double get latitude;
  @override
  @JsonKey(ignore: true)
  _$$_FetchNearbySnapPostsParamsCopyWith<_$_FetchNearbySnapPostsParams>
      get copyWith => throw _privateConstructorUsedError;
}

FetchSnapPostParams _$FetchSnapPostParamsFromJson(Map<String, dynamic> json) {
  return _FetchSnapPostParams.fromJson(json);
}

/// @nodoc
mixin _$FetchSnapPostParams {
  String get snapPostId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FetchSnapPostParamsCopyWith<FetchSnapPostParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FetchSnapPostParamsCopyWith<$Res> {
  factory $FetchSnapPostParamsCopyWith(
          FetchSnapPostParams value, $Res Function(FetchSnapPostParams) then) =
      _$FetchSnapPostParamsCopyWithImpl<$Res, FetchSnapPostParams>;
  @useResult
  $Res call({String snapPostId});
}

/// @nodoc
class _$FetchSnapPostParamsCopyWithImpl<$Res, $Val extends FetchSnapPostParams>
    implements $FetchSnapPostParamsCopyWith<$Res> {
  _$FetchSnapPostParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? snapPostId = null,
  }) {
    return _then(_value.copyWith(
      snapPostId: null == snapPostId
          ? _value.snapPostId
          : snapPostId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FetchSnapPostParamsCopyWith<$Res>
    implements $FetchSnapPostParamsCopyWith<$Res> {
  factory _$$_FetchSnapPostParamsCopyWith(_$_FetchSnapPostParams value,
          $Res Function(_$_FetchSnapPostParams) then) =
      __$$_FetchSnapPostParamsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String snapPostId});
}

/// @nodoc
class __$$_FetchSnapPostParamsCopyWithImpl<$Res>
    extends _$FetchSnapPostParamsCopyWithImpl<$Res, _$_FetchSnapPostParams>
    implements _$$_FetchSnapPostParamsCopyWith<$Res> {
  __$$_FetchSnapPostParamsCopyWithImpl(_$_FetchSnapPostParams _value,
      $Res Function(_$_FetchSnapPostParams) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? snapPostId = null,
  }) {
    return _then(_$_FetchSnapPostParams(
      snapPostId: null == snapPostId
          ? _value.snapPostId
          : snapPostId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FetchSnapPostParams implements _FetchSnapPostParams {
  const _$_FetchSnapPostParams({required this.snapPostId});

  factory _$_FetchSnapPostParams.fromJson(Map<String, dynamic> json) =>
      _$$_FetchSnapPostParamsFromJson(json);

  @override
  final String snapPostId;

  @override
  String toString() {
    return 'FetchSnapPostParams(snapPostId: $snapPostId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FetchSnapPostParams &&
            (identical(other.snapPostId, snapPostId) ||
                other.snapPostId == snapPostId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, snapPostId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FetchSnapPostParamsCopyWith<_$_FetchSnapPostParams> get copyWith =>
      __$$_FetchSnapPostParamsCopyWithImpl<_$_FetchSnapPostParams>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FetchSnapPostParamsToJson(
      this,
    );
  }
}

abstract class _FetchSnapPostParams implements FetchSnapPostParams {
  const factory _FetchSnapPostParams({required final String snapPostId}) =
      _$_FetchSnapPostParams;

  factory _FetchSnapPostParams.fromJson(Map<String, dynamic> json) =
      _$_FetchSnapPostParams.fromJson;

  @override
  String get snapPostId;
  @override
  @JsonKey(ignore: true)
  _$$_FetchSnapPostParamsCopyWith<_$_FetchSnapPostParams> get copyWith =>
      throw _privateConstructorUsedError;
}
