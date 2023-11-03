import 'package:flutter/material.dart';
import 'package:states_rebuilder/states_rebuilder.dart';
import 'package:tugas_arkom/adminLogin/tenantadd/tenantimage.dart';
import 'package:tugas_arkom/adminLogin/tenantlist/_index.dart';
import 'package:tugas_arkom/config/xtras.dart';
// import 'dart:html' as html;

class TenantListView extends StatelessWidget {
  const TenantListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:
          //*Read data dari firebase berdasarkan length/limit

          OnBuilder.all(
              //*---Tanpa Product List----
              // listenTo: tld.rxproductloader,
              listenToMany: [tld.rxproductloader, tld.rxProductList],
              onWaiting: () => const Center(
                    child: CircularProgressIndicator(),
                  ),
              onError: (error, refreshError) => const Text('error'),
              onData: (data) => Center(
                    child: ListView(
                      children: [
                        ...List.generate(
                          //*---dengan Product List----
                          tld.rxProductList.st.length,
                          //*---Ta,npa Product List----
                          // data.length,
                          (index) => OnReactive(
                            () => SizedBox(
                              height: 300,
                              width: 400,
                              child: Card(
                                color: Colors.amber,
                                child: Column(
                                  children: [
                                    // UploadPage(),
                                    Container(
                                      height: 100,
                                      width: 100,
                                      color: Colors.pink,
                                      child: Column(
                                        // spacing: 5.0,
                                        // direction: Axis.horizontal,
                                        // alignment: WrapAlignment.spaceEvenly,
                                        // runSpacing: 10.0,
                                        children: tld.itemPhotosWidgetList,
                                      ),
                                    ),
                                    Text(tld.rxProductList.st[index].name),
                                    Text(tld.rxProductList.st[index].description.toString()),
                                    // Text('text'),
                                  ],
                                ),
                                // child: ListTile(
                                //   // title: Text(data[index].name),
                                //   title: Text(tld.rxProductList.st[index].name),
                                //   // subtitle: IconButton(onPressed: html.window.open(tld.rxProductList.st[index].description.toString(), 'newtab'), icon: Icons.holiday_village)
                                // subtitle: Text(tld.rxProductList.st[index].description.toString()),
                                //   selected: tld.rxSelectedId.st == tld.rxProductList.st[index].id,
                                //   onTap: () {
                                //     tlc.select(tld.rxProductList.st[index].id);
                                //   },
                                // ),
                              ),
                            ),
                          ),
                        ),

                        Center(
                          child: tld.rxIsEnd.st == true
                              ? const Column(
                                  children: [
                                    SizedBox(height: 20),
                                    Text('Data Sudah Habis'),
                                  ],
                                )
                              : OutlinedButton(
                                  onPressed: () {
                                    tlc.getProductLoader();
                                  },
                                  child: const Text('load more ...'),
                                ),
                        ),
                        // )
                      ],
                    ),
                  )

              // child: Column(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   children: [
              //* tombol-tombol CRUD
              //     // ElevatedButton(
              //     //   onPressed: () async {
              //     //     await tlc.readProduct();
              //     //   },
              //     //   child: const Text(
              //     //     "read",
              //     //   ),
              //     // ),

              //     // ElevatedButton(
              //     //   onPressed: () async {
              //     //     await tlc.createproduct();
              //     //   },
              //     //   child: const Text(
              //     //     "create Product Random",
              //     //   ),
              //     // ),
              //     // ElevatedButton(
              //     //   onPressed: () async {
              //     //     await tlc.createOneProduct();
              //     //   },
              //     //   child: const Text(
              //     //     "Create One Product",
              //     //   ),
              //     // ),
              //     // ElevatedButton(
              //     //   onPressed: () async {
              //     //     await tlc.deleteProduct();
              //     //   },
              //     //   child: const Text(
              //     //     "delete",
              //     //   ),
              //     // ),
              //     // ElevatedButton(
              //     //   onPressed: () async {
              //     //     await tlc.updateProduct();
              //     //   },
              //     //   child: const Text(
              //     //     "update",
              //     //   ),
              //     // ),
              //     // ElevatedButton(
              //     //   onPressed: () async {
              //     //     await tlc.readAllProduct();
              //     //   },
              //     //   child: const Text(
              //     //     "Read All Document",
              //     //   ),
              //     // ),
              //     // ElevatedButton(
              //     //   onPressed: () async {
              //     //     await tlc.readAllProduct();
              //     //   },
              //     //   child: const Text(
              //     //     "Read All Document",
              //     //   ),
              //     // ),
              //   ],
              // ),
              ),
    );
  }
}
