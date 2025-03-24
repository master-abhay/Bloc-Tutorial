import 'dart:io';

import 'package:bloc_tutorial/bloc/image_picker/image_picker_bloc.dart';
import 'package:bloc_tutorial/bloc/image_picker/image_picker_event.dart';
import 'package:bloc_tutorial/bloc/image_picker/image_picker_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerView extends StatefulWidget {
  const ImagePickerView({super.key});

  @override
  State<ImagePickerView> createState() => _ImagePickerViewState();
}

class _ImagePickerViewState extends State<ImagePickerView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Image Picker Example")),
      body: _buildUi(context),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.camera),
        onPressed: () {
          context.read<ImagePickerBloc>().add(GetFromGalleryEvent());
        },
      ),
    );
  }

  Widget _buildUi(context) {
    return BlocBuilder<ImagePickerBloc,ImagePickerStates>(builder: (context,state){
      return state.file == null ? const SizedBox.shrink() : Container(
        decoration: BoxDecoration(
          image: DecorationImage(image: FileImage(File(state.file!.path)))
        ),
      );
    });


  }
}
