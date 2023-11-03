part of '_index.dart';

final serv = ProductServ();

class ProductServ {
  getProductLoader() {
    pv.rxproductloader.stateAsync = rp.readAllProduct();
  }

  getProductList(List<Product> moreProduct) {
    pv.rxProductList.st = [...pv.rxProductList.st, ...moreProduct];
    if (moreProduct.length < pv.limit) {
      pv.rxIsEnd.st = true;
    }
  }

  createProduct(Product product) {
    rp.createproduct(product);
    pv.rxProductList.st = [...pv.rxProductList.st]..insert(0, product);
  }

  setSelectedId(String id) {
    pv.rxSelectedId.st = id;
  }

  getProductDetail() {
    pv.rxProductDetail.stateAsync = rp.readProduct(pv.rxSelectedId.st);
  }

  deleteProduct() {
    rp.deleteProduct(pv.rxSelectedId.st);
    pv.rxProductList.st = [...pv.rxProductList.st]..removeWhere((element) => element.id == pv.rxSelectedId.st);
  }

  updateProduct(Product product) {
    rp.updateProduct(product);
    pv.rxProductList.setState((s) {
      final index = pv.rxProductList.st.indexWhere((element) => element.id == pv.rxSelectedId.st);
      return s[index] = product;
    });
  }
}
