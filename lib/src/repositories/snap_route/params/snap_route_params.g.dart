// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'snap_route_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CreateSnapRouteParams _$$_CreateSnapRouteParamsFromJson(
        Map<String, dynamic> json) =>
    _$_CreateSnapRouteParams(
      title: json['title'] as String,
      snapPostIds: (json['snapPostIds'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$_CreateSnapRouteParamsToJson(
        _$_CreateSnapRouteParams instance) =>
    <String, dynamic>{
      'title': instance.title,
      'snapPostIds': instance.snapPostIds,
    };

_$_UpdateSnapRouteParams _$$_UpdateSnapRouteParamsFromJson(
        Map<String, dynamic> json) =>
    _$_UpdateSnapRouteParams(
      snapRouteId: json['snapRouteId'] as String,
      title: json['title'] as String,
      snapPostIds: (json['snapPostIds'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$_UpdateSnapRouteParamsToJson(
        _$_UpdateSnapRouteParams instance) =>
    <String, dynamic>{
      'snapRouteId': instance.snapRouteId,
      'title': instance.title,
      'snapPostIds': instance.snapPostIds,
    };

_$_DeleteSnapRouteParams _$$_DeleteSnapRouteParamsFromJson(
        Map<String, dynamic> json) =>
    _$_DeleteSnapRouteParams(
      snapRouteId: json['snapRouteId'] as String,
    );

Map<String, dynamic> _$$_DeleteSnapRouteParamsToJson(
        _$_DeleteSnapRouteParams instance) =>
    <String, dynamic>{
      'snapRouteId': instance.snapRouteId,
    };

_$_FetchSnapRouteParams _$$_FetchSnapRouteParamsFromJson(
        Map<String, dynamic> json) =>
    _$_FetchSnapRouteParams(
      snapRouteId: json['snapRouteId'] as String,
    );

Map<String, dynamic> _$$_FetchSnapRouteParamsToJson(
        _$_FetchSnapRouteParams instance) =>
    <String, dynamic>{
      'snapRouteId': instance.snapRouteId,
    };
