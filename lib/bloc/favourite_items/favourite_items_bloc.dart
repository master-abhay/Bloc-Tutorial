import 'package:bloc/bloc.dart';
import 'package:bloc_tutorial/bloc/favourite_items/favourite_items_event.dart';
import 'package:bloc_tutorial/bloc/favourite_items/favourite_items_state.dart';
import 'package:bloc_tutorial/core/constants/enum.dart';
import 'package:bloc_tutorial/models/favourite_item_model.dart';
import 'package:bloc_tutorial/repository/repository.dart';

class FavouriteItemsBloc extends Bloc<FavouriteItemsEvent, FavouriteItemsState> {
  List<FavourItemItemModel> favItems = [];
  List<FavourItemItemModel> tempFavItems = [];
  final Repository repository;

  /// repository is dependency
  FavouriteItemsBloc(this.repository) : super(const FavouriteItemsState()) {
    on<FetchFavouriteItemsEvent>(_fetchFavouriteItems);
    on<MarkItemFavouriteEvent>(_markItemFavouriteEvent);
    on<AddItemToTempListEvent>(_addItemToTempList);
    on<RemoveItemFromTempListEvent>(_removeItemFromTempList);
    on<DeleteItemEvent>(_deleteItem);
  }


  /// fetch list of items
  void _fetchFavouriteItems(FetchFavouriteItemsEvent event, Emitter<FavouriteItemsState> emit) async{
    favItems = await repository.fetchFavouriteItems();
    emit(state.copyWith(favItems:  List.from(favItems),apiStatus: ApiStatus.completed,));
  }

  /// mark item as favourite
  void _markItemFavouriteEvent(MarkItemFavouriteEvent event, Emitter<FavouriteItemsState> emit) async{

    /// find index of the item
    final index = favItems.indexWhere((element)=> element.id == event.item.id);

      if(tempFavItems.contains(favItems[index])){
        tempFavItems.remove(favItems[index]);
        tempFavItems.add(event.item);
      }

    if(index != -1){
      favItems[index] = event.item;
      emit(state.copyWith(favItems:  List.from(favItems),tempFavItems: List.from(tempFavItems),),);
    }
  }

  /// add item to temp list
  void _addItemToTempList(AddItemToTempListEvent event, Emitter<FavouriteItemsState> emit) async{
    tempFavItems.add(event.item);
    emit(state.copyWith(tempFavItems:  List.from(tempFavItems),),);
  }

  /// remove item to temp list
  void _removeItemFromTempList(RemoveItemFromTempListEvent event, Emitter<FavouriteItemsState> emit) async{
    tempFavItems.remove(event.item);
    emit(state.copyWith(tempFavItems:  List.from(tempFavItems),),);
  }

  /// delete items
  void _deleteItem(DeleteItemEvent event, Emitter<FavouriteItemsState> emit) async{

    for(var element in tempFavItems){
      favItems.remove(element);
    }
    tempFavItems.clear();
    emit(state.copyWith(favItems: List.from(favItems),tempFavItems: List.from(tempFavItems),),);
  }

}
