// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_User _$$_UserFromJson(Map<String, dynamic> json) => _$_User(
      userId: json['userId'] as String,
      name: json['name'] as String,
      iconPath: json['iconPath'] as String,
      resistedAt: json['resistedAt'] as String,
      updatedAt: json['updatedAt'] as String,
      searchedRadiusInM: (json['searchedRadiusInM'] as num).toDouble(),
    );

Map<String, dynamic> _$$_UserToJson(_$_User instance) => <String, dynamic>{
      'userId': instance.userId,
      'name': instance.name,
      'iconPath': instance.iconPath,
      'resistedAt': instance.resistedAt,
      'updatedAt': instance.updatedAt,
      'searchedRadiusInM': instance.searchedRadiusInM,
    };
