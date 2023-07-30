import 'package:freezed_annotation/freezed_annotation.dart';

part 'post_user.freezed.dart';
part 'post_user.g.dart';

@freezed
class PostedUser with _$PostedUser {
  const factory PostedUser({
    required String userId,
    required String name,
    required String iconPath,
  }) = _PostedUser;

  factory PostedUser.fromJson(Map<String, dynamic> json) =>
      _$PostedUserFromJson(json);
}
