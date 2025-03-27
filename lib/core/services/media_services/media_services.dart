import 'package:bloc_tutorial/core/services/media_services/base_media_services.dart';
import 'package:flutter/cupertino.dart';
import 'package:image_picker/image_picker.dart';

class MediaServices extends BaseMediaServices {
  @override
  Future<XFile?> pickImageFromCamera() async {
    try {
      return await imagePicker.pickImage(source: ImageSource.camera);
    } catch (e) {
      debugPrint(e.toString());
    }
    return null;
  }

  @override
  Future<XFile?> pickImageFromGallery() async {
    try {
      return await imagePicker.pickImage(source: ImageSource.gallery);
    } catch (e) {
      debugPrint(e.toString());
    }
    return null;
  }
}
