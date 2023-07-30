// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'snap_post_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CreateSnapPostParams _$$_CreateSnapPostParamsFromJson(
        Map<String, dynamic> json) =>
    _$_CreateSnapPostParams(
      title: json['title'] as String,
      comment: json['comment'] as String?,
      longitude: (json['longitude'] as num).toDouble(),
      latitude: (json['latitude'] as num).toDouble(),
      postImages: (json['postImages'] as List<dynamic>)
          .map((e) => PostImage.fromJson(e as Map<String, dynamic>))
          .toList(),
      tags: (json['tags'] as List<dynamic>).map((e) => e as String).toList(),
      address: json['address'] as String,
    );

Map<String, dynamic> _$$_CreateSnapPostParamsToJson(
        _$_CreateSnapPostParams instance) =>
    <String, dynamic>{
      'title': instance.title,
      'comment': instance.comment,
      'longitude': instance.longitude,
      'latitude': instance.latitude,
      'postImages': instance.postImages.map((e) => e.toJson()).toList(),
      'tags': instance.tags,
      'address': instance.address,
    };

_$_PostImage _$$_PostImageFromJson(Map<String, dynamic> json) => _$_PostImage(
      imagePath: json['imagePath'] as String,
    );

Map<String, dynamic> _$$_PostImageToJson(_$_PostImage instance) =>
    <String, dynamic>{
      'imagePath': instance.imagePath,
    };
