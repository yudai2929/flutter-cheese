// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'snap_route.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SnapRoute _$$_SnapRouteFromJson(Map<String, dynamic> json) => _$_SnapRoute(
      snapRouteId: json['snapRouteId'] as String,
      title: json['title'] as String,
      createdUserId: json['createdUserId'] as String,
      createdAt: json['createdAt'] as String,
      updatedAt: json['updatedAt'] as String,
      snapPosts: (json['snapPosts'] as List<dynamic>)
          .map((e) => SnapPost.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_SnapRouteToJson(_$_SnapRoute instance) =>
    <String, dynamic>{
      'snapRouteId': instance.snapRouteId,
      'title': instance.title,
      'createdUserId': instance.createdUserId,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'snapPosts': instance.snapPosts.map((e) => e.toJson()).toList(),
    };
