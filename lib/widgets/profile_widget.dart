import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:old_care/utils/colors.dart';

class ProfileWidget extends StatefulWidget {
  const ProfileWidget({super.key});

  @override
  State<ProfileWidget> createState() => _ProfileWidgetState();
}

class _ProfileWidgetState extends State<ProfileWidget> {
  File? _image;
  final imagePicker = ImagePicker();
  Future<void> getImage() async {
    final image = await imagePicker.pickImage(source: ImageSource.camera);
    setState(() {
      _image = File(image!.path);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          width: 100,
          height: 100,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: _image == null
                ? Image.asset("assets/images/profile.png")
                : Image.file(fit: BoxFit.fill, _image!),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        GestureDetector(
          onTap: () => getImage(),
          child: Container(
            height: 56,
            width: 230,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colours.primaryColor),
            child: const Center(
                child: Text(
              "Add a profile picture",
              style: TextStyle(fontWeight: FontWeight.bold),
            )),
          ),
        )
      ],
    );
  }
}
