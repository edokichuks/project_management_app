import 'dart:developer';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:image_picker/image_picker.dart';

class AppImagePicker {
  Future<void> pickImage({
    required ImageSource source,
    required ValueNotifier<List<File>> images,
  }) async {
    try {
      final imagePicker = ImagePicker();
      final image = await imagePicker.pickImage(source: source);
      images.value = [...images.value, File(image!.path)];
    } catch (e) {
      log(e.toString());
      return;
    }
  }

  Future<void> pickMultiImage({
    required ImageSource source,
    required ValueNotifier<List<File>> images,
  }) async {
    try {
      final imagePicker = ImagePicker();
      final image = await imagePicker.pickMultiImage();
      var newImage = image.length > 7
          ? image.map((e) => File(e.path)).toList()
          : image.map((e) => File(e.path)).take(6).toList();
      images.value = [...images.value, ...newImage];
    } catch (e) {
      log(e.toString());
      return;
    }
  }
}

final imagePickerService = Provider((_) => AppImagePicker());
