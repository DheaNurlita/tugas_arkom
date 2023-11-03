part of '_index.dart';

final tld = TenantListData();

class TenantListData {
  final rxproductloader = pv.rxproductloader;

  final rxProductList = pv.rxProductList;

  final rxIsEnd = pv.rxIsEnd;

  final rxSelectedId = pv.rxSelectedId;

  List<Widget> itemPhotosWidgetList = <Widget>[];
  final ImagePicker picker = ImagePicker();
  File? file;
  List<XFile>? photo = <XFile>[];
  List<XFile> itemImagesList = <XFile>[];
  // final itemImagesList = pv.itemImagesList;
  List<String> downloadUrl = <String>[];
  bool uploading = false;
}
