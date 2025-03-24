import 'package:bloc_tutorial/bloc/favourite_items/favourite_items_bloc.dart';
import 'package:bloc_tutorial/bloc/favourite_items/favourite_items_event.dart';
import 'package:bloc_tutorial/bloc/favourite_items/favourite_items_state.dart';
import 'package:bloc_tutorial/core/constants/app_dimensions.dart';
import 'package:bloc_tutorial/core/constants/enum.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FavouriteItemsView extends StatefulWidget {
  const FavouriteItemsView({super.key});

  @override
  State<FavouriteItemsView> createState() => _FavouriteItemsViewState();
}

class _FavouriteItemsViewState extends State<FavouriteItemsView> {
  @override
  void initState() {
    context.read<FavouriteItemsBloc>().add(FetchFavouriteItemsEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Favourite Items"),
        actions: [
          BlocBuilder<FavouriteItemsBloc,FavouriteItemsState>(builder: (context,state){
            return IconButton(
              onPressed: (){
                context.read<FavouriteItemsBloc>().add(DeleteItemEvent());
                },
              icon: state.tempFavItems.isEmpty ?
              const SizedBox.shrink() :
              const Icon(Icons.delete,color: Colors.red,
              ),
            );
            },
          )
        ],
      ),
      body: _buildUi(context),
    );
  }

  Widget _buildUi(context) {
    return BlocBuilder<FavouriteItemsBloc, FavouriteItemsState>(
      builder: (context, state) {
        final ApiStatus apiStatus = state.apiStatus;
        if (apiStatus == ApiStatus.loading) {
          return const Center(child: CircularProgressIndicator());
        } else if (apiStatus == ApiStatus.error) {
          return const Center(
            child: Text("Something went wrong"),
          );
        } else {
          return ListView.builder(
            physics: const BouncingScrollPhysics(),
            itemCount: state.favItems.length,
            itemBuilder: (context, index) {
              var item = state.favItems[index];
              return Card(
                elevation: 1,
                child: ListTile(
                  leading: CupertinoCheckbox(
                    value: state.tempFavItems.contains(item), onChanged: (value){
                    if(value!){
                      context.read<FavouriteItemsBloc>().add(AddItemToTempListEvent(item));
                    }else{
                      context.read<FavouriteItemsBloc>().add(RemoveItemFromTempListEvent(item));
                    }
                  },),
                  tileColor: Colors.teal,
                  shape: const RoundedRectangleBorder(borderRadius: largeBorderRadius),
                  title: Text(item.title),
                  trailing: IconButton(
                      onPressed: () {
                        context.read<FavouriteItemsBloc>().add(MarkItemFavouriteEvent(item.copyWith(isFavourite: !item.isFavourite,),),);
                      },
                    // icon: AnimatedCrossFade(
                    //   duration: Duration(milliseconds: 300),
                    //   firstChild: Icon(Icons.favorite_border_outlined),
                    //   secondChild: Icon(Icons.favorite, color: Colors.red),
                    //   crossFadeState: item.isFavourite
                    //       ? CrossFadeState.showSecond
                    //       : CrossFadeState.showFirst,
                    // ),
                    icon: AnimatedSwitcher(
                      duration: const Duration(milliseconds: 300),
                      transitionBuilder: (Widget child, Animation<double> animation) {
                        return ScaleTransition(scale: animation, child: child);
                      },
                      child: item.isFavourite
                          ? const Icon(Icons.favorite, key: ValueKey('filled'), color: Colors.black,)
                          : const Icon(Icons.favorite_border_outlined, key: ValueKey('outlined'),),
                    ),
                    // icon: TweenAnimationBuilder<double>(
                    //   tween: Tween<double>(begin: 1.0, end: item.isFavourite ? 1.25 : 1.0),
                    //   duration: const Duration(milliseconds: 300),
                    //   curve: Curves.easeInOut,
                    //   builder: (context, scale, child) {
                    //     return Transform.scale(
                    //       scale: scale,
                    //       child: Icon(
                    //         item.isFavourite ? Icons.favorite : Icons.favorite_border_outlined,
                    //         color: item.isFavourite ? Colors.red : Colors.white,
                    //       ),
                    //     );
                    //   },
                    // ),

                  // icon: item.isFavourite ? const Icon(Icons.favorite,color: Colors.red,) : const Icon(Icons.favorite_border_outlined,),
              ),
                ),
              );
            },
          );
        }
      },
    );
  }
}
