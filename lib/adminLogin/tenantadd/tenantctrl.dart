part of '_index.dart';

final _ct = ProductAddCtrl();

class ProductAddCtrl {
  submit() => _dt.rxForm.submit();

  Future<void> createproduct() async {
    final product = Product(
      id: const Uuid().v4(),
      name: _dt.rxname.value,
      description: _dt.rxdesk.value,
      createdAt: DateTime.now().toString(),
    );
    logx.i(product.toString());
    serv.createProduct(product);
  }
}
