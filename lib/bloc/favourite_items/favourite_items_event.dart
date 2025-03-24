


import 'package:bloc_tutorial/models/favourite_item_model.dart';
import 'package:equatable/equatable.dart';

abstract class FavouriteItemsEvent extends Equatable{
  const FavouriteItemsEvent();
  @override
  List<Object?> get props => [];
}

class FetchFavouriteItemsEvent extends FavouriteItemsEvent{}

class MarkItemFavouriteEvent extends FavouriteItemsEvent{
  final FavourItemItemModel item;
  const MarkItemFavouriteEvent(this.item);
  @override
  List<Object?> get props => [item];
}

class AddItemToTempListEvent extends FavouriteItemsEvent{
  final FavourItemItemModel item;
  const AddItemToTempListEvent(this.item);
  @override
  List<Object?> get props => [item];
}

class RemoveItemFromTempListEvent extends FavouriteItemsEvent{
  final FavourItemItemModel item;
  const RemoveItemFromTempListEvent(this.item);
  @override
  List<Object?> get props => [item];
}

class DeleteItemEvent extends FavouriteItemsEvent{}