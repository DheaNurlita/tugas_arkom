part of '_index.dart';

class TenantAddView extends StatefulWidget {
  const TenantAddView({Key? key}) : super(key: key);

  @override
  State<TenantAddView> createState() => _TenantAddViewState();
}

class _TenantAddViewState extends State<TenantAddView> {
  PlatformFile? pickedFile;

  Future selectFile() async {
    final result = await FilePicker.platform.pickFiles();
    if (result == null) return;
    setState(() {
      pickedFile = result.files.first;
    });
    {}
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(30),
          constraints: const BoxConstraints(maxWidth: 400),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const UploadPage(),
                // ProductAddCharlie(),
                // ProductAddDelta(),
                // ProductAddEcho(),
                //*onFormBuilder untuk mengidentifikasi tombol
                OnFormBuilder(
                  listenTo: _dt.rxForm,
                  builder: () => TextField(
                    focusNode: _dt.rxname.focusNode,
                    controller: _dt.rxname.controller,
                    onEditingComplete: () => _dt.rxdesk.focusNode.requestFocus(),
                    decoration: InputDecoration(
                      labelText: 'nama',
                      hintText: 'input your product name',
                      errorText: _dt.rxname.error,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                OnFormBuilder(
                  listenTo: _dt.rxForm,
                  builder: () => TextField(
                    keyboardType: TextInputType.number,
                    onEditingComplete: () => _dt.rxsosmed.focusNode.requestFocus(),
                    focusNode: _dt.rxdesk.focusNode,
                    controller: _dt.rxdesk.controller,
                    decoration: InputDecoration(
                      labelText: 'Deskripsi',
                      hintText: 'deskripsi',
                      errorText: _dt.rxdesk.error,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                // OnFormBuilder(
                //   listenTo: _dt.rxForm,
                //   builder: () => TextField(
                //     keyboardType: TextInputType.number,
                //     onEditingComplete: () => _dt.rxsosmed.focusNode.unfocus(),
                //     focusNode: _dt.rxsosmed.focusNode,
                //     controller: _dt.rxsosmed.controller,
                //     decoration: InputDecoration(
                //       labelText: 'LINK GOOFOOD',
                //       hintText: 'LINK GOFOOD',
                //       errorText: _dt.rxsosmed.error,
                //     ),
                //   ),
                // ),
                const SizedBox(height: 20),

                OnFormBuilder(
                  listenTo: _dt.rxForm,
                  builder: () => ElevatedButton(
                    onPressed: _dt.rxForm.isValid ? () => _ct.submit() : null,
                    child: const Text(
                      "submit",
                    ),
                  ),
                ),

                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const TenantListView(),
                        ));
                  },
                  child: const Text(
                    "ListView",
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
