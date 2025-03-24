import 'package:bloc/bloc.dart';
import 'package:bloc_tutorial/bloc/image_picker/image_picker_event.dart';
import 'package:bloc_tutorial/bloc/image_picker/image_picker_state.dart';
import 'package:bloc_tutorial/core/services/media_services.dart';

class ImagePickerBloc extends Bloc<ImagePickerEvent, ImagePickerStates> {
  ImagePickerBloc() : super(ImagePickerStates()) {
    on<GetFromCameraEvent>(_getFromCamera);
    on<GetFromGalleryEvent>(_getFromGallery);
  }

  void _getFromCamera(GetFromCameraEvent event, Emitter<ImagePickerStates> emit) async{
    emit(state.copyWith(file: await MediaServices.pickImageFromCamera()));
  }

  void _getFromGallery(GetFromGalleryEvent event, Emitter<ImagePickerStates> emit) async{
    emit(state.copyWith(file: await MediaServices.pickImageFromGallery()));
  }
}
