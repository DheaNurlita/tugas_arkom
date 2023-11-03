part of '_index.dart';

final rp = Repo();

class Repo {
  Future<void> createproduct(DataNama product) async {
    logx.i(product.toString());
    await x1FbFirestore.createDocument(
      colId: 'pengunjung',
      docId: product.id,
      data: product.toMap(),
    );
  }
}
