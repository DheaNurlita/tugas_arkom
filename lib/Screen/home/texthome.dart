import 'package:flutter/material.dart';
import 'package:tugas_arkom/respontext.dart';
import 'package:tugas_arkom/widget_library/domains/_index.dart';

class Texthome extends StatelessWidget {
  const Texthome({super.key});

  @override
  Widget build(BuildContext context) {
    var hitung = Respon();
    var lebarLayar = MediaQuery.of(context).size.width;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          '      MAMBO \nKULINER NITE',
          style: TextStyle(
              fontWeight: FontWeight.w900, fontSize: hitung.hitunghalo(lebarLayar / 1.5), color: Colors.white),
        ),
        const SizedBox(height: 30),
        Text(
          'Temukan Jajanan Favoritemu disini',
          style: TextStyle(color: Colors.white, fontSize: hitung.welcome(lebarLayar / 1.5)),
        ),
        const SizedBox(height: 30),
        const MyOutlineButoon(
          text: 'View Instagram',
          onpressed: Text('text'),
        )
      ],
    );
  }
}
