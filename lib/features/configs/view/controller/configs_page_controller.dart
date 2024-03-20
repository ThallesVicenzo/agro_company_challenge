import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ConfigsPageController extends ChangeNotifier {
  File? _image;

  ValueNotifier inProcess = ValueNotifier(false);

  selectImageFromGallery() async {
    final picker = ImagePicker();

    inProcess.value = true;

    final imageFile = await picker.pickImage(source: ImageSource.gallery);

    if (imageFile != null) {
      _image = File(imageFile.path);
    }
    inProcess.value = false;
  }
}
