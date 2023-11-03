import 'dart:html';

import 'package:flutter/material.dart';
import 'package:tugas_arkom/respontext.dart';

class TextKiriAbout extends StatelessWidget {
  const TextKiriAbout({super.key});

  @override
  Widget build(BuildContext context) {
    var hitung = Respon();
    var lebarLayar = MediaQuery.of(context).size.width;
    bool isDesktop(BuildContext context) => MediaQuery.of(context).size.width >= 1000;
    const maxLines = 5;
    const maxLines2 = 10;

    return Container(
        // height: 300,
        // width: 700,
        // color: Colors.pink,
        child: isDesktop(context)
            ? Align(
                alignment: Alignment.bottomLeft,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Text(
                          'Bagi kamu yang mempunyai bisnis kuliner diTasikmalaya \n bisa bergabung dengan 190 tenant lainnya di mambo \nkuliner nite Tasikmalaya Simak Cara Pendaftarannya \nDISINI > ',
                          style: TextStyle(fontSize: hitung.about2(lebarLayar / 1.5)),
                          maxLines: maxLines,
                        ),
                        const SizedBox(height: 30),
                        ElevatedButton(
                          onPressed: () {
                            window.open('https://pendaftarantenant.carrd.co/', 'newtab');
                          },
                          style: ElevatedButton.styleFrom(
                              shape: const StadiumBorder(), backgroundColor: Colors.blue.shade900),
                          child: const Text(
                            'Daftar Tenant',
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 30),
                    Text(
                      'Bagaimana Cara \nDaftar Tenant?',
                      style: TextStyle(fontSize: hitung.about(lebarLayar / 1.5)),
                      maxLines: maxLines2,
                    ),
                  ],
                ),
              )
            : Column(
                children: [
                  Text(
                    'Bagaimana Cara \nDaftar Tenant ?',
                    style: TextStyle(fontSize: hitung.about(lebarLayar / 1.5)),
                  ),
                  const SizedBox(height: 30),
                  Text(
                    'Bagi kamu yang mempunyai bisnis kuliner diTasikmalaya \n bisa bergabung dengan 190 tenant lainnya di mambo \nkuliner nite Tasikmalaya Simak Cara Pendaftarannya \nDISINI >>',
                    style: TextStyle(fontSize: hitung.about2(lebarLayar / 1.5)),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      window.open('https://pendaftarantenant.carrd.co/', 'newtab');
                    },
                    style:
                        ElevatedButton.styleFrom(shape: const StadiumBorder(), backgroundColor: Colors.blue.shade900),
                    child: const Text(
                      'Daftar Tenant',
                    ),
                  ),
                ],
              ));
  }
}
