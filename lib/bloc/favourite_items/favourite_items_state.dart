import 'package:bloc_tutorial/core/constants/enum.dart';
import 'package:bloc_tutorial/models/favourite_item_model.dart';
import 'package:equatable/equatable.dart';

class FavouriteItemsState extends Equatable {
  final List<FavourItemItemModel> favItems;
  final List<FavourItemItemModel> tempFavItems;
  final ApiStatus apiStatus;

  const FavouriteItemsState({
    this.favItems = const [],
    this.tempFavItems = const [],
    this.apiStatus = ApiStatus.loading,
  });

  FavouriteItemsState copyWith({List<FavourItemItemModel>? favItems,List<FavourItemItemModel>? tempFavItems, ApiStatus? apiStatus}) {
    return FavouriteItemsState(
      favItems: favItems ?? this.favItems,
      tempFavItems: tempFavItems ?? this.tempFavItems,
      apiStatus: apiStatus ?? this.apiStatus,
    );
  }

  @override
  List<Object?> get props => [favItems,apiStatus,tempFavItems,];
}
