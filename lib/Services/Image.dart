import 'dart:io';

import 'package:image_picker/image_picker.dart';

class ImageUtility {
  static Future<File?> getImage() async {
    final image = await ImagePicker().getImage(source: ImageSource.gallery);
    if (image != null) {
      return File(image.path);
    }
    return null;
  }
}
