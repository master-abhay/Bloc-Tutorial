import 'package:equatable/equatable.dart';

class FavourItemItemModel extends Equatable {
  final int id;
  final String title;
  final String description;
  final bool isFavourite;
  final bool isDeleting;

  const FavourItemItemModel({
    required this.id,
    required this.title,
    required this.description,
    this.isFavourite = false,
    this.isDeleting = false,
  });

  FavourItemItemModel copyWith({
    int? id,
    String? title,
    String? description,
    bool? isFavourite,
  }) {
    return FavourItemItemModel(
      id: id ?? this.id,
      title: title ?? this.title,
      description: description ?? this.description,
      isFavourite: isFavourite ?? this.isFavourite,
    );
  }

  @override
  List<Object?> get props => [id, title, description, isFavourite, isDeleting];
}
