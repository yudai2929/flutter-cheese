// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CreateUserParams _$$_CreateUserParamsFromJson(Map<String, dynamic> json) =>
    _$_CreateUserParams(
      name: json['name'] as String,
      iconPath: json['iconPath'] as String,
    );

Map<String, dynamic> _$$_CreateUserParamsToJson(_$_CreateUserParams instance) =>
    <String, dynamic>{
      'name': instance.name,
      'iconPath': instance.iconPath,
    };

_$_UpdateUserParams _$$_UpdateUserParamsFromJson(Map<String, dynamic> json) =>
    _$_UpdateUserParams(
      name: json['name'] as String,
      iconPath: json['iconPath'] as String,
      searchedRadiusInM: (json['searchedRadiusInM'] as num).toDouble(),
    );

Map<String, dynamic> _$$_UpdateUserParamsToJson(_$_UpdateUserParams instance) =>
    <String, dynamic>{
      'name': instance.name,
      'iconPath': instance.iconPath,
      'searchedRadiusInM': instance.searchedRadiusInM,
    };
