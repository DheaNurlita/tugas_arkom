import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:tugas_arkom/adminLogin/tenantadd/_index.dart';
import 'package:tugas_arkom/adminLogin/tenantlist/_index.dart';
import 'package:uuid/uuid.dart';

class UploadPage extends StatefulWidget {
  const UploadPage({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _UploadPageState createState() => _UploadPageState();
}

class _UploadPageState extends State<UploadPage> {
  final dt = ProductAddData();

  @override
  Widget build(BuildContext context) {
    double screenwidth = MediaQuery.of(context).size.width, screenheight = MediaQuery.of(context).size.height;
    return displayWebUploadFormScreen(screenwidth, screenheight);

    // LayoutBuilder(builder: (BuildContext context, BoxConstraints constraints) {
    //   if (constraints.maxWidth < 480) {
    //     return displayPhoneUploadFormScreen(screenwidth, screenheight);
    //   } else {
    //     return displayWebUploadFormScreen(screenwidth, screenheight);
    //   }
    // }
  }

  displayPhoneUploadFormScreen(screenwidth, screenheight) {
    return Container(
      color: Colors.deepOrange,
    );
  }

  displayWebUploadFormScreen(screenwidth, screenheight) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(12.0), color: Colors.pink, boxShadow: [
            BoxShadow(
              color: Colors.grey.shade200,
              offset: const Offset(0.0, 0.5),
              blurRadius: 30.0,
            )
          ]),
          width: screenwidth * 0.7,
          height: 300.0,
          child: Center(
            child: tld.itemPhotosWidgetList.isEmpty
                ? Center(
                    child: MaterialButton(
                      onPressed: pickPhotoFromGallery,
                      child: Container(
                        color: Colors.blue,
                        alignment: Alignment.bottomCenter,
                        child: Center(
                          child: Image.network(
                            "https://static.thenounproject.com/png/3322766-200.png",
                            height: 100.0,
                            width: 100.0,
                          ),
                        ),
                      ),
                    ),
                  )
                : SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Wrap(
                      spacing: 5.0,
                      direction: Axis.horizontal,
                      alignment: WrapAlignment.spaceEvenly,
                      runSpacing: 10.0,
                      children: tld.itemPhotosWidgetList,
                    ),
                  ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 50.0,
                left: 100.0,
                right: 100.0,
              ),
              child: ElevatedButton(
                  onPressed: tld.uploading ? null : () => upload(),
                  child: tld.uploading
                      ? const SizedBox(
                          height: 15.0,
                          child: CircularProgressIndicator(),
                        )
                      : const Text(
                          "Add",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        )),
            ),
          ],
        ),
      ],
    );
  }

  addImage() {
    for (var bytes in tld.photo!) {
      tld.itemPhotosWidgetList.add(Padding(
        padding: const EdgeInsets.all(1.0),
        child: Container(
          color: Colors.green,
          height: 90.0,
          child: AspectRatio(
            aspectRatio: 16 / 9,
            child: Container(
              child: kIsWeb
                  ? Image.network(File(bytes.path).path)
                  : Image.file(
                      File(bytes.path),
                    ),
            ),
          ),
        ),
      ));
    }
  }

  pickPhotoFromGallery() async {
    tld.photo = await tld.picker.pickMultiImage();
    if (tld.photo != null) {
      setState(() {
        tld.itemImagesList = tld.itemImagesList + tld.photo!;
        addImage();
        tld.photo!.clear();
      });
    }
  }

  upload() async {
    // ignore: unused_local_variable
    String productId = await uplaodImageAndSaveItemInfo();
    setState(() {
      tld.uploading = false;
    });
    // showToast("Image Uploaded Successfully");
  }

  Future<String> uplaodImageAndSaveItemInfo() async {
    setState(() {
      tld.uploading = true;
    });
    PickedFile? pickedFile;
    String? productId = const Uuid().v4();
    for (int i = 0; i < tld.itemImagesList.length; i++) {
      tld.file = File(tld.itemImagesList[i].path);
      pickedFile = PickedFile(tld.file!.path);

      await uploadImageToStorage(pickedFile, productId);
    }
    return productId;
  }

  uploadImageToStorage(PickedFile? pickedFile, String productId) async {
    String? pId = dt.rximage.value;
    Reference reference = FirebaseStorage.instance.ref().child('Items/$productId/product_$pId');
    await reference.putData(
      await pickedFile!.readAsBytes(),
      SettableMetadata(contentType: 'image/jpeg'),
    );
    String value = await reference.getDownloadURL();
    tld.downloadUrl.add(value);
  }
}
