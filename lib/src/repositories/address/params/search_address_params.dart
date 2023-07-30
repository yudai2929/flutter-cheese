import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_address_params.freezed.dart';
part 'search_address_params.g.dart';

@freezed
class SearchAddressParams with _$SearchAddressParams {
  const factory SearchAddressParams({
    required double latitude,
    required double longitude,
  }) = _SearchAddressParams;

  factory SearchAddressParams.fromJson(Map<String, dynamic> json) =>
      _$SearchAddressParamsFromJson(json);
}
