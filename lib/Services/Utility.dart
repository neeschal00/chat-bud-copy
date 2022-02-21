import 'package:cloudinary_sdk/cloudinary_sdk.dart';
import 'package:flutter/material.dart';
import 'package:chat_bud/Services/Cred.dart';
import 'package:chat_bud/Services/Image.dart';

class UtilityNotifier extends ChangeNotifier {
  final ImageUtility imageUtility = new ImageUtility();

  String userimage = "";
  String get getuserimage => userimage;

  Future uploadImage() async {
    final cloudinary = Cloudinary(Cred.APIKEY, Cred.APISecret, Cred.Cloud);
    try {
      final image = await ImageUtility.getImage();

      await cloudinary
          .uploadFile(
              filePath: image!.path,
              resourceType: CloudinaryResourceType.image,
              folder: "socially")
          .then((value) {
        userimage = value.secureUrl!;
        notifyListeners();
        return userimage;
      });
    } catch (e) {}
  }
}
