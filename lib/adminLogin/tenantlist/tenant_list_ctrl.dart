part of '_index.dart';

final tlc = TenantListCtrl();

class TenantListCtrl {
  getProductLoader() {
    serv.getProductLoader();
  }

  getProductList(List<Product> moreProduct) {
    serv.getProductList(moreProduct);
  }

  select(String id) {
    serv.setSelectedId(id);
  }

  addImage() {
    for (var bytes in tld.photo!) {
      tld.itemPhotosWidgetList.add(Padding(
        padding: const EdgeInsets.all(1.0),
        child: SizedBox(
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

  uploadImageToStorage(PickedFile? pickedFile, String productId) async {
    String? pId = const Uuid().v4();
    Reference reference = FirebaseStorage.instance.ref().child('Items/$productId/product_$pId');
    await reference.putData(
      await pickedFile!.readAsBytes(),
      SettableMetadata(contentType: 'image/jpeg'),
    );
    String value = await reference.getDownloadURL();
    tld.downloadUrl.add(value);
  }
}
