import 'package:bloc_tutorial/models/favourite_item_model.dart';

class Repository {
  Future<List<FavourItemItemModel>> fetchFavouriteItems() async {
    await Future.delayed(const Duration(seconds: 3));
    return List.of(_generateListOfFavouriteItem(20));
  }

  List<FavourItemItemModel> _generateListOfFavouriteItem([int length = 10]) {
    return List.generate(length, (index) {
      return FavourItemItemModel(
          id: index, title: "Title $index", description: "Description $index");
    });
  }
}
