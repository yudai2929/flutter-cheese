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

_$_UpdateSnapPostParams _$$_UpdateSnapPostParamsFromJson(
        Map<String, dynamic> json) =>
    _$_UpdateSnapPostParams(
      snapPostId: json['snapPostId'] as String,
      title: json['title'] as String,
      comment: json['comment'] as String?,
    );

Map<String, dynamic> _$$_UpdateSnapPostParamsToJson(
        _$_UpdateSnapPostParams instance) =>
    <String, dynamic>{
      'snapPostId': instance.snapPostId,
      'title': instance.title,
      'comment': instance.comment,
    };

_$_DeleteSnapPostParams _$$_DeleteSnapPostParamsFromJson(
        Map<String, dynamic> json) =>
    _$_DeleteSnapPostParams(
      snapPostId: json['snapPostId'] as String,
    );

Map<String, dynamic> _$$_DeleteSnapPostParamsToJson(
        _$_DeleteSnapPostParams instance) =>
    <String, dynamic>{
      'snapPostId': instance.snapPostId,
    };

_$_LikeSnapPostParams _$$_LikeSnapPostParamsFromJson(
        Map<String, dynamic> json) =>
    _$_LikeSnapPostParams(
      snapPostIds: (json['snapPostIds'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$_LikeSnapPostParamsToJson(
        _$_LikeSnapPostParams instance) =>
    <String, dynamic>{
      'snapPostIds': instance.snapPostIds,
    };

_$_FetchNearbySnapPostsParams _$$_FetchNearbySnapPostsParamsFromJson(
        Map<String, dynamic> json) =>
    _$_FetchNearbySnapPostsParams(
      longitude: (json['longitude'] as num).toDouble(),
      latitude: (json['latitude'] as num).toDouble(),
    );

Map<String, dynamic> _$$_FetchNearbySnapPostsParamsToJson(
        _$_FetchNearbySnapPostsParams instance) =>
    <String, dynamic>{
      'longitude': instance.longitude,
      'latitude': instance.latitude,
    };

_$_FetchSnapPostParams _$$_FetchSnapPostParamsFromJson(
        Map<String, dynamic> json) =>
    _$_FetchSnapPostParams(
      snapPostId: json['snapPostId'] as String,
    );

Map<String, dynamic> _$$_FetchSnapPostParamsToJson(
        _$_FetchSnapPostParams instance) =>
    <String, dynamic>{
      'snapPostId': instance.snapPostId,
    };
