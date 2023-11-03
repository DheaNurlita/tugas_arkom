part of '_index.dart';

final pv = ProductProv();

class ProductProv {
  final limit = 3;
  final rxInt = 0.inj();
  final rxproductloader = RM.injectFuture<List<Product>>(
    () => Future.value([]),
    sideEffects: SideEffects(
      initState: () => serv.getProductLoader(),
      onSetState: (snap) {
        if (snap.hasData) {
          final moreProduct = snap.state.whereType<Product>().toList();
          serv.getProductList(moreProduct);
        }
      },
    ),
  );
  final itemImagesList = RM.inject<List<Product>>(() => []);

  final rxProductList = RM.inject<List<Product>>(() => []);

  final rxIsEnd = false.inj();

  final rxSelectedId = RM.inject<String>(() => '');

  final rxProductDetail = RM.injectFuture<Product?>(() => Future.value(null),
      sideEffects: SideEffects(
        initState: () => serv.getProductDetail(),
      ));
}
