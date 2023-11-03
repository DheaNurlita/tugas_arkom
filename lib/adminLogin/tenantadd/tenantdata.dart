part of '_index.dart';

final _dt = ProductAddData();

class ProductAddData {
  final rxForm = RM.injectForm(
      submit: () async => await _ct.createproduct(),

      //*error berdasarkan ketikan user
      autovalidateMode: AutovalidateMode.onUserInteraction);

  final rxname = RM.injectTextEditing(
    // text: 'product baru',
    validators: [
      Validate.isNotEmpty,
      Validate.fullName,
    ],
  );

  final rxdesk = RM.injectTextEditing(
    // text: 'product baru',
    validators: [
      Validate.isNotEmpty,
    ],
  );

  final rxsosmed = RM.injectTextEditing(
    validators: [
      Validate.isNotEmpty,
    ],
  );

  final rximage = RM.injectTextEditing(
    text: 'gs://mambo-website-117d4.appspot.com',
    validators: [
      Validate.isNotEmpty,
    ],
  );
}
