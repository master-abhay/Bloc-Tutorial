

import 'package:freezed_annotation/freezed_annotation.dart';
part 'get_movies_model.freezed.dart';
part 'get_movies_model.g.dart';


@freezed
abstract class GetMoviesModel with _$GetMoviesModel {

 const  factory GetMoviesModel({
   @Default(0) int total,
    @Default(0) int page,
    @Default(0) int pages,
   @Default([]) @JsonKey(name: 'tv_shows') List<TvShowsModel> tvShows,

}) = _GetMoviesModel;

 factory GetMoviesModel.fromJson(Map<String, dynamic> json) => _$GetMoviesModelFromJson(json);

}
@freezed
abstract class TvShowsModel with _$TvShowsModel {

  const  factory TvShowsModel({

    @Default(0) @JsonKey(name: 'id') int id,
    @Default('') @JsonKey(name: 'name') String name,
    @Default('') @JsonKey(name: 'permalink') String permalink,
    @Default('') @JsonKey(name: 'start_date') String startDate,
    @Default('') @JsonKey(name: 'end_date') String endDate,
    @Default('') @JsonKey(name: 'country') String country,
    @Default('') @JsonKey(name: 'network') String network,
    @Default('') @JsonKey(name: 'status') String status,
    @Default('') @JsonKey(name: 'image_thumbnail_path') String imageThumbnailPath,
  }) = _TvShowsModel;

  factory TvShowsModel.fromJson(Map<String, dynamic> json) => _$TvShowsModelFromJson(json);

}
