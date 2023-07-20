import 'dart:io';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:image_picker/image_picker.dart';
import 'package:do_it/src/core/app_export.dart';
import 'package:do_it/src/core/services/third_party_services/image_picker_services.dart';
import 'package:do_it/src/general_widgets/app_bottom_sheet.dart';
import 'package:do_it/src/presentation/project/widgets/select_tile.dart';

import '../../../general_widgets/general_widgets_exports.dart';

enum ImageType { single, multi }

class SelectImage {
  static chooseImage({
    required BuildContext context,
    required ValueNotifier<List<File>> imageList,
    required ImageType type,
  }) async {
    return AppBottomSheet.sheet(
      context: context,
      child: Select(
        imageList: imageList,
        type: type,
      ),
    );
  }
}

class Select extends HookConsumerWidget {
  const Select({
    Key? key,
    required this.imageList,
    required this.type,
  }) : super(key: key);

  final ValueNotifier<List<File>> imageList;
  final ImageType type;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final textTheme = Theme.of(context).textTheme;

    final picker = ref.read(imagePickerService);
    void selectImage(AppImagePicker picker, ImageSource source) async {
      if (type == ImageType.single) {
        picker.pickImage(source: source, images: imageList).then((value) {
          Navigator.of(context).pop();
        });
      } else {
        picker.pickMultiImage(source: source, images: imageList).then((value) {
          Navigator.of(context).pop();
        });
      }
    }

    return Wrap(
      children: [
        Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Align(
                alignment: Alignment.center,
                child: Container(
                  height: AppDimensions.tiny,
                  width: 60,
                  decoration: BoxDecoration(
                    color: const Color(0xFF808080),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              const Spacing.mediumHeight(),
              Text(
                'Select Image',
                style: textTheme.headlineMedium!.copyWith(fontSize: 24),
              ),
              const Spacing.mediumHeight(),
              SelectTile(
                title: 'Take a Photo',
                currency: 'assets/images/svg/cam.svg',
                onTap: () => selectImage(picker, ImageSource.camera),
              ),
              const Spacing.mediumHeight(),
              SelectTile(
                title: 'Upload from Galary',
                currency: 'assets/images/svg/gallery.svg',
                onTap: () => selectImage(picker, ImageSource.gallery),
              )
            ],
          ),
        ),
      ],
    );
  }
}
