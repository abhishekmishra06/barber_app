import 'dart:io';
import 'package:get/get.dart';

class ImageController extends GetxController {
  Rx<File?> galleryFile = Rx<File?>(null);

   void updateGalleryFile(File newFile) {
    galleryFile.value = newFile;
  }
}