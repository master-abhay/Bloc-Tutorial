
import 'package:equatable/equatable.dart';

abstract class ImagePickerEvent extends Equatable{

  const ImagePickerEvent();

  @override
  List<Object?> get props => [];
}

class GetFromCameraEvent extends ImagePickerEvent{}
class GetFromGalleryEvent extends ImagePickerEvent{}