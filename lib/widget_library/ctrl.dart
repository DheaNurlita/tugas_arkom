part of 'domains/_index.dart';

final ct = Ctrl();

class Ctrl {
  Future createname() async {
    final product = DataNama(
      createdAt: DateTime.now().toString(),
      name: dt.rxname.value,
      id: const Uuid().v1(),
    );
    logx.i(product.toString());
    sv.createProduct(product);
  }

  // Future<void> createproduct(DataNama product) async {
  //   logx.i(product.toString());
  //   await x1FbFirestore.createDocument(
  //     colId: 'dataweb',
  //     docId: product.id,
  //     data: product.toMap(),
  //   );
  // }

  submit() => dt.rxform.submit();

  Future<void> dialogBuilder(BuildContext context) {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          actions: [
            TextButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const MainHome(),
                    ));
              },
              child: const Text('Next'),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const UserLogin(),
                    ));
              },
              child: const Text('Back'),
            ),
          ],
          // ignore: deprecated_member_use
          title: Center(
            // ignore: deprecated_member_use
            child: Text(
              // ignore: deprecated_member_use
              'HALL0 ${dt.rxname.state}',
              style: const TextStyle(
                fontSize: 30,
              ),
            ),
          ),
          content: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Welcome To Mambo \nKuliner Nite Website !!'),
            ],
          ),
        );
      },
    );
  }
}
