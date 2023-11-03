part of 'domains/_index.dart';

class FormInput extends StatefulWidget {
  const FormInput({super.key});

  @override
  State<FormInput> createState() => _FormInputState();
}

class _FormInputState extends State<FormInput> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(30),
          constraints: const BoxConstraints(maxWidth: 400),
          child: OnFormBuilder(
            listenTo: dt.rxform,
            builder: () => TextField(
              focusNode: dt.rxname.focusNode,
              controller: dt.rxname.controller,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                hoverColor: Colors.white,
                hintText: 'Masukan Nama',
                errorText: dt.rxname.error,
                border: const OutlineInputBorder(),
              ),
              // onChanged: (value) {
              //   dt.namaadmin = value;
              // },
            ),
          ),
        ),
        OnFormBuilder(
          listenTo: dt.rxform,
          builder: () => ElevatedButton(
            style: ElevatedButton.styleFrom(shape: const StadiumBorder()),
            onPressed: dt.rxform.isValid
                ? () {
                    ct.submit();
                    ct.dialogBuilder(context);
                  }
                : null,
            child: const Text('  SUBMIT  '),
          ),
        )
      ],
    );
  }
}
