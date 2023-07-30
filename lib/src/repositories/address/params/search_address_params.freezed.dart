// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_address_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SearchAddressParams _$SearchAddressParamsFromJson(Map<String, dynamic> json) {
  return _SearchAddressParams.fromJson(json);
}

/// @nodoc
mixin _$SearchAddressParams {
  double get latitude => throw _privateConstructorUsedError;
  double get longitude => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchAddressParamsCopyWith<SearchAddressParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchAddressParamsCopyWith<$Res> {
  factory $SearchAddressParamsCopyWith(
          SearchAddressParams value, $Res Function(SearchAddressParams) then) =
      _$SearchAddressParamsCopyWithImpl<$Res, SearchAddressParams>;
  @useResult
  $Res call({double latitude, double longitude});
}

/// @nodoc
class _$SearchAddressParamsCopyWithImpl<$Res, $Val extends SearchAddressParams>
    implements $SearchAddressParamsCopyWith<$Res> {
  _$SearchAddressParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = null,
    Object? longitude = null,
  }) {
    return _then(_value.copyWith(
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SearchAddressParamsCopyWith<$Res>
    implements $SearchAddressParamsCopyWith<$Res> {
  factory _$$_SearchAddressParamsCopyWith(_$_SearchAddressParams value,
          $Res Function(_$_SearchAddressParams) then) =
      __$$_SearchAddressParamsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double latitude, double longitude});
}

/// @nodoc
class __$$_SearchAddressParamsCopyWithImpl<$Res>
    extends _$SearchAddressParamsCopyWithImpl<$Res, _$_SearchAddressParams>
    implements _$$_SearchAddressParamsCopyWith<$Res> {
  __$$_SearchAddressParamsCopyWithImpl(_$_SearchAddressParams _value,
      $Res Function(_$_SearchAddressParams) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = null,
    Object? longitude = null,
  }) {
    return _then(_$_SearchAddressParams(
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SearchAddressParams implements _SearchAddressParams {
  const _$_SearchAddressParams(
      {required this.latitude, required this.longitude});

  factory _$_SearchAddressParams.fromJson(Map<String, dynamic> json) =>
      _$$_SearchAddressParamsFromJson(json);

  @override
  final double latitude;
  @override
  final double longitude;

  @override
  String toString() {
    return 'SearchAddressParams(latitude: $latitude, longitude: $longitude)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchAddressParams &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, latitude, longitude);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SearchAddressParamsCopyWith<_$_SearchAddressParams> get copyWith =>
      __$$_SearchAddressParamsCopyWithImpl<_$_SearchAddressParams>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SearchAddressParamsToJson(
      this,
    );
  }
}

abstract class _SearchAddressParams implements SearchAddressParams {
  const factory _SearchAddressParams(
      {required final double latitude,
      required final double longitude}) = _$_SearchAddressParams;

  factory _SearchAddressParams.fromJson(Map<String, dynamic> json) =
      _$_SearchAddressParams.fromJson;

  @override
  double get latitude;
  @override
  double get longitude;
  @override
  @JsonKey(ignore: true)
  _$$_SearchAddressParamsCopyWith<_$_SearchAddressParams> get copyWith =>
      throw _privateConstructorUsedError;
}
