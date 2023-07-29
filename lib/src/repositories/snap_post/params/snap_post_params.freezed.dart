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
      List<String> tags});
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
      List<String> tags});
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
      required final List<String> tags})
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
  String toString() {
    return 'CreateSnapPostParams(title: $title, comment: $comment, longitude: $longitude, latitude: $latitude, postImages: $postImages, tags: $tags)';
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
            const DeepCollectionEquality().equals(other._tags, _tags));
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
      const DeepCollectionEquality().hash(_tags));

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
      required final List<String> tags}) = _$_CreateSnapPostParams;

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
