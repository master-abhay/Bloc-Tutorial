import 'package:image_picker/image_picker.dart';

abstract class BaseMediaServices {
   final ImagePicker imagePicker = ImagePicker();

  Future<XFile?> pickImageFromCamera();

  Future<XFile?> pickImageFromGallery();
}
