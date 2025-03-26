import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
abstract class UserModel with _$UserModel {
   factory UserModel({
    @Default(0) @JsonKey(name:'id') int id,
    @Default('') @JsonKey(name:'name') String name,
    @Default('') @JsonKey(name:'username') String username,
    @Default('') @JsonKey(name:'email') String email,
    @Default('') @JsonKey(name:'phone') String phone,
    @Default('') @JsonKey(name:'website') String website,
     @Default(AddressModel()) @JsonKey(name:'address') AddressModel address,
     @Default(CompanyModel()) @JsonKey(name: 'company') CompanyModel company,

   }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) => _$UserModelFromJson(json);
}

@freezed
abstract class AddressModel with _$AddressModel {
  const factory AddressModel({
    @Default('') @JsonKey(name: 'street') String street,
    @Default('') @JsonKey(name: 'suite') String suite,
    @Default('') @JsonKey(name: 'city') String city,
    @Default('') @JsonKey(name: 'zipcode') String zipcode,
    @Default(GeoModel()) @JsonKey(name: 'geo') GeoModel geo,
  }) = _AddressModel;

  factory AddressModel.fromJson(Map<String, dynamic> json) => _$AddressModelFromJson(json);
}

@freezed
abstract class GeoModel with _$GeoModel {
  const factory GeoModel({
    @Default('') @JsonKey(name: 'lat') String lat,
    @Default('') @JsonKey(name: 'lng') String lng,
  }) = _GeoModel;

  factory GeoModel.fromJson(Map<String, dynamic> json) => _$GeoModelFromJson(json);
}


@freezed
abstract class CompanyModel with _$CompanyModel {
  const factory CompanyModel({
    @Default('') @JsonKey(name: 'name') String name,
    @Default('') @JsonKey(name: 'catchPhrase') String catchPhrase,
    @Default('') @JsonKey(name: 'bs') String bs,
  }) = _CompanyModel;

  factory CompanyModel.fromJson(Map<String, dynamic> json) => _$CompanyModelFromJson(json);
}


