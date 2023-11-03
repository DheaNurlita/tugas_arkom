// import 'dart:io';

// import 'package:flutter/material.dart';
// import 'package:image_picker/image_picker.dart';

// class UploadingImageToFirebaseStorage extends StatefulWidget {
//   const UploadingImageToFirebaseStorage({super.key});

//   @override
//   // ignore: library_private_types_in_public_api
//   _UploadingImageToFirebaseStorageState createState() => _UploadingImageToFirebaseStorageState();
// }

// class _UploadingImageToFirebaseStorageState extends State<UploadingImageToFirebaseStorage> {
//   // ignore: unused_field
//   late File _imageFile;

//   ///NOTE: Only supported on Android & iOS
//   ///Needs image_picker plugin {https://pub.dev/packages/image_picker}
//   final picker = ImagePicker();

//   Future pickImage() async {
//     final pickedFile = await picker.pickImage(source: ImageSource.camera);

//     setState(() {
//       _imageFile = File(pickedFile!.path);
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     throw UnimplementedError();
//   }
// }
