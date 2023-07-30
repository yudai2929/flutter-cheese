// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_image.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
