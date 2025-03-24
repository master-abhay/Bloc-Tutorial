

import 'package:equatable/equatable.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerStates extends Equatable{

  XFile? file;

  ImagePickerStates({this.file});


  ImagePickerStates copyWith({XFile? file}) {
    return ImagePickerStates(
      file: file ?? this.file,
    );
  }



  @override
  List<Object?> get props => [file];

}