part of '_index.dart';

final pv = Prov();

class Prov {
  final rxProductList = RM.inject<List<DataNama>>(() => []);
  
}
