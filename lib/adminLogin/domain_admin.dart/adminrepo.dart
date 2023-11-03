part of '_index.dart';

final rp = ProductRepo();

class ProductRepo {
  //*membaca dari firesore

  Future<Product> readProduct(String id) async {
    final result = await x1FbFirestore.readDocument(colId: 'product', docId: id);
    final productResult = Product.fromMap(result.data());
    logx.wtf(productResult.toString());
    return productResult;
  }

//*membuat dan menyimpan ke firestore secara random
  Future<void> createproduct(Product product) async {
    logx.i(product.toString());
    await x1FbFirestore.createDocument(
      colId: 'product',
      docId: product.id,
      data: product.toMap(),
    );
  }

  //*membuat satu data
  Future<void> createOneProduct() async {
    final product = Product(
      id: 'dua product',
      name: 'one product',
      description: 'coba satu',
      createdAt: DateTime.now().toString(),
    );
    logx.i(product.toString());
    await x1FbFirestore.createDocument(
      colId: 'product',
      docId: product.id,
      data: product.toMap(),
    );
  }

//*menghapus data dari firestore
  Future<void> deleteProduct(String id) async {
    await x1FbFirestore.deleteDocument(
      colId: 'product',
      docId: id,
    );
  }

//*mengubah data dari firestore
  Future<void> updateProduct(Product product) async {
    logx.wtf(product.toString());
    await x1FbFirestore.updateDocument(
      colId: 'product',
      docId: product.id,
      data: product.toMap(),
    );
  }

//*membaca semua data dari firesrore
  Future<List<Product>> readAllProduct() async {
    List<Product> product = [];
    final QuerySnapshot<Map<String, dynamic>> result = await x1FbFirestore.readCollection(
      colId: 'product',
      limit: pv.limit,
      lastCreateTime: pv.rxProductList.st.isNotEmpty ? pv.rxProductList.st.last.createdAt : '9999-99-99 99:99:99.99',
    );
    logx.wtf(result.docs.length.toString());
    for (var i in result.docs) {
      product.add(
        Product.fromMap(
          i.data(),
        ),
      );
    }
    // logx.i(product[0].toString());
    // logx.s(product[1].toString());
    // logx.wtf(product[2].toString());
    // logx.i(product[3].toString());
    // logx.s(product[4].toString());
    // logx.w(product[5].toString());
    // logx.s(product[6].toString());
    // logx.i(product[7].toString());
    // logx.wtf(product[8].toString());
    // logx.s(product.length.toString());
    return product;
  }
}
