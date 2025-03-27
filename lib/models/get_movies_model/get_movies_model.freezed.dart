// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_movies_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GetMoviesModel {
  int get total;
  int get page;
  int get pages;
  @JsonKey(name: 'tv_shows')
  List<TvShowsModel> get tvShows;

  /// Create a copy of GetMoviesModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $GetMoviesModelCopyWith<GetMoviesModel> get copyWith =>
      _$GetMoviesModelCopyWithImpl<GetMoviesModel>(
          this as GetMoviesModel, _$identity);

  /// Serializes this GetMoviesModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GetMoviesModel &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.pages, pages) || other.pages == pages) &&
            const DeepCollectionEquality().equals(other.tvShows, tvShows));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, total, page, pages,
      const DeepCollectionEquality().hash(tvShows));

  @override
  String toString() {
    return 'GetMoviesModel(total: $total, page: $page, pages: $pages, tvShows: $tvShows)';
  }
}

/// @nodoc
abstract mixin class $GetMoviesModelCopyWith<$Res> {
  factory $GetMoviesModelCopyWith(
          GetMoviesModel value, $Res Function(GetMoviesModel) _then) =
      _$GetMoviesModelCopyWithImpl;
  @useResult
  $Res call(
      {int total,
      int page,
      int pages,
      @JsonKey(name: 'tv_shows') List<TvShowsModel> tvShows});
}

/// @nodoc
class _$GetMoviesModelCopyWithImpl<$Res>
    implements $GetMoviesModelCopyWith<$Res> {
  _$GetMoviesModelCopyWithImpl(this._self, this._then);

  final GetMoviesModel _self;
  final $Res Function(GetMoviesModel) _then;

  /// Create a copy of GetMoviesModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = null,
    Object? page = null,
    Object? pages = null,
    Object? tvShows = null,
  }) {
    return _then(_self.copyWith(
      total: null == total
          ? _self.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      page: null == page
          ? _self.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      pages: null == pages
          ? _self.pages
          : pages // ignore: cast_nullable_to_non_nullable
              as int,
      tvShows: null == tvShows
          ? _self.tvShows
          : tvShows // ignore: cast_nullable_to_non_nullable
              as List<TvShowsModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _GetMoviesModel implements GetMoviesModel {
  const _GetMoviesModel(
      {this.total = 0,
      this.page = 0,
      this.pages = 0,
      @JsonKey(name: 'tv_shows') final List<TvShowsModel> tvShows = const []})
      : _tvShows = tvShows;
  factory _GetMoviesModel.fromJson(Map<String, dynamic> json) =>
      _$GetMoviesModelFromJson(json);

  @override
  @JsonKey()
  final int total;
  @override
  @JsonKey()
  final int page;
  @override
  @JsonKey()
  final int pages;
  final List<TvShowsModel> _tvShows;
  @override
  @JsonKey(name: 'tv_shows')
  List<TvShowsModel> get tvShows {
    if (_tvShows is EqualUnmodifiableListView) return _tvShows;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tvShows);
  }

  /// Create a copy of GetMoviesModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$GetMoviesModelCopyWith<_GetMoviesModel> get copyWith =>
      __$GetMoviesModelCopyWithImpl<_GetMoviesModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$GetMoviesModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GetMoviesModel &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.pages, pages) || other.pages == pages) &&
            const DeepCollectionEquality().equals(other._tvShows, _tvShows));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, total, page, pages,
      const DeepCollectionEquality().hash(_tvShows));

  @override
  String toString() {
    return 'GetMoviesModel(total: $total, page: $page, pages: $pages, tvShows: $tvShows)';
  }
}

/// @nodoc
abstract mixin class _$GetMoviesModelCopyWith<$Res>
    implements $GetMoviesModelCopyWith<$Res> {
  factory _$GetMoviesModelCopyWith(
          _GetMoviesModel value, $Res Function(_GetMoviesModel) _then) =
      __$GetMoviesModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int total,
      int page,
      int pages,
      @JsonKey(name: 'tv_shows') List<TvShowsModel> tvShows});
}

/// @nodoc
class __$GetMoviesModelCopyWithImpl<$Res>
    implements _$GetMoviesModelCopyWith<$Res> {
  __$GetMoviesModelCopyWithImpl(this._self, this._then);

  final _GetMoviesModel _self;
  final $Res Function(_GetMoviesModel) _then;

  /// Create a copy of GetMoviesModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? total = null,
    Object? page = null,
    Object? pages = null,
    Object? tvShows = null,
  }) {
    return _then(_GetMoviesModel(
      total: null == total
          ? _self.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      page: null == page
          ? _self.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      pages: null == pages
          ? _self.pages
          : pages // ignore: cast_nullable_to_non_nullable
              as int,
      tvShows: null == tvShows
          ? _self._tvShows
          : tvShows // ignore: cast_nullable_to_non_nullable
              as List<TvShowsModel>,
    ));
  }
}

/// @nodoc
mixin _$TvShowsModel {
  @JsonKey(name: 'id')
  int get id;
  @JsonKey(name: 'name')
  String get name;
  @JsonKey(name: 'permalink')
  String get permalink;
  @JsonKey(name: 'start_date')
  String get startDate;
  @JsonKey(name: 'end_date')
  String get endDate;
  @JsonKey(name: 'country')
  String get country;
  @JsonKey(name: 'network')
  String get network;
  @JsonKey(name: 'status')
  String get status;
  @JsonKey(name: 'image_thumbnail_path')
  String get imageThumbnailPath;

  /// Create a copy of TvShowsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $TvShowsModelCopyWith<TvShowsModel> get copyWith =>
      _$TvShowsModelCopyWithImpl<TvShowsModel>(
          this as TvShowsModel, _$identity);

  /// Serializes this TvShowsModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TvShowsModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.permalink, permalink) ||
                other.permalink == permalink) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.network, network) || other.network == network) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.imageThumbnailPath, imageThumbnailPath) ||
                other.imageThumbnailPath == imageThumbnailPath));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, permalink, startDate,
      endDate, country, network, status, imageThumbnailPath);

  @override
  String toString() {
    return 'TvShowsModel(id: $id, name: $name, permalink: $permalink, startDate: $startDate, endDate: $endDate, country: $country, network: $network, status: $status, imageThumbnailPath: $imageThumbnailPath)';
  }
}

/// @nodoc
abstract mixin class $TvShowsModelCopyWith<$Res> {
  factory $TvShowsModelCopyWith(
          TvShowsModel value, $Res Function(TvShowsModel) _then) =
      _$TvShowsModelCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'permalink') String permalink,
      @JsonKey(name: 'start_date') String startDate,
      @JsonKey(name: 'end_date') String endDate,
      @JsonKey(name: 'country') String country,
      @JsonKey(name: 'network') String network,
      @JsonKey(name: 'status') String status,
      @JsonKey(name: 'image_thumbnail_path') String imageThumbnailPath});
}

/// @nodoc
class _$TvShowsModelCopyWithImpl<$Res> implements $TvShowsModelCopyWith<$Res> {
  _$TvShowsModelCopyWithImpl(this._self, this._then);

  final TvShowsModel _self;
  final $Res Function(TvShowsModel) _then;

  /// Create a copy of TvShowsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? permalink = null,
    Object? startDate = null,
    Object? endDate = null,
    Object? country = null,
    Object? network = null,
    Object? status = null,
    Object? imageThumbnailPath = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      permalink: null == permalink
          ? _self.permalink
          : permalink // ignore: cast_nullable_to_non_nullable
              as String,
      startDate: null == startDate
          ? _self.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String,
      endDate: null == endDate
          ? _self.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as String,
      country: null == country
          ? _self.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      network: null == network
          ? _self.network
          : network // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      imageThumbnailPath: null == imageThumbnailPath
          ? _self.imageThumbnailPath
          : imageThumbnailPath // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _TvShowsModel implements TvShowsModel {
  const _TvShowsModel(
      {@JsonKey(name: 'id') this.id = 0,
      @JsonKey(name: 'name') this.name = '',
      @JsonKey(name: 'permalink') this.permalink = '',
      @JsonKey(name: 'start_date') this.startDate = '',
      @JsonKey(name: 'end_date') this.endDate = '',
      @JsonKey(name: 'country') this.country = '',
      @JsonKey(name: 'network') this.network = '',
      @JsonKey(name: 'status') this.status = '',
      @JsonKey(name: 'image_thumbnail_path') this.imageThumbnailPath = ''});
  factory _TvShowsModel.fromJson(Map<String, dynamic> json) =>
      _$TvShowsModelFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'permalink')
  final String permalink;
  @override
  @JsonKey(name: 'start_date')
  final String startDate;
  @override
  @JsonKey(name: 'end_date')
  final String endDate;
  @override
  @JsonKey(name: 'country')
  final String country;
  @override
  @JsonKey(name: 'network')
  final String network;
  @override
  @JsonKey(name: 'status')
  final String status;
  @override
  @JsonKey(name: 'image_thumbnail_path')
  final String imageThumbnailPath;

  /// Create a copy of TvShowsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$TvShowsModelCopyWith<_TvShowsModel> get copyWith =>
      __$TvShowsModelCopyWithImpl<_TvShowsModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$TvShowsModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TvShowsModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.permalink, permalink) ||
                other.permalink == permalink) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.network, network) || other.network == network) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.imageThumbnailPath, imageThumbnailPath) ||
                other.imageThumbnailPath == imageThumbnailPath));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, permalink, startDate,
      endDate, country, network, status, imageThumbnailPath);

  @override
  String toString() {
    return 'TvShowsModel(id: $id, name: $name, permalink: $permalink, startDate: $startDate, endDate: $endDate, country: $country, network: $network, status: $status, imageThumbnailPath: $imageThumbnailPath)';
  }
}

/// @nodoc
abstract mixin class _$TvShowsModelCopyWith<$Res>
    implements $TvShowsModelCopyWith<$Res> {
  factory _$TvShowsModelCopyWith(
          _TvShowsModel value, $Res Function(_TvShowsModel) _then) =
      __$TvShowsModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'permalink') String permalink,
      @JsonKey(name: 'start_date') String startDate,
      @JsonKey(name: 'end_date') String endDate,
      @JsonKey(name: 'country') String country,
      @JsonKey(name: 'network') String network,
      @JsonKey(name: 'status') String status,
      @JsonKey(name: 'image_thumbnail_path') String imageThumbnailPath});
}

/// @nodoc
class __$TvShowsModelCopyWithImpl<$Res>
    implements _$TvShowsModelCopyWith<$Res> {
  __$TvShowsModelCopyWithImpl(this._self, this._then);

  final _TvShowsModel _self;
  final $Res Function(_TvShowsModel) _then;

  /// Create a copy of TvShowsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? permalink = null,
    Object? startDate = null,
    Object? endDate = null,
    Object? country = null,
    Object? network = null,
    Object? status = null,
    Object? imageThumbnailPath = null,
  }) {
    return _then(_TvShowsModel(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      permalink: null == permalink
          ? _self.permalink
          : permalink // ignore: cast_nullable_to_non_nullable
              as String,
      startDate: null == startDate
          ? _self.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String,
      endDate: null == endDate
          ? _self.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as String,
      country: null == country
          ? _self.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      network: null == network
          ? _self.network
          : network // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      imageThumbnailPath: null == imageThumbnailPath
          ? _self.imageThumbnailPath
          : imageThumbnailPath // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
