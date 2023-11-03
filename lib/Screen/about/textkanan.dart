import 'package:flutter/material.dart';
import 'package:tugas_arkom/respontext.dart';

class TextKananAbout extends StatelessWidget {
  const TextKananAbout({super.key});

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
        // color: Colors.amber,
        padding: const EdgeInsets.all(30),
        child: isDesktop(context)
            ? Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    'Apa itu \nmambo \nkuliner ?',
                    style: TextStyle(
                      fontSize: hitung.about(lebarLayar / 1.5),
                    ),
                    maxLines: maxLines,
                  ),
                  Text(
                    'Mambo Kuliner Nite Tasikmalaya (MKNT) merupakan \n pasar kuliner yang menjual berbagai makanan dan \n minuman produk UMKM. Oleh karena itu, \nMKNT dapat dikatakan sebagai salah satu peluang \nbagi masyarakat Tasikmalaya untuk bisa mengembangkan UMKM-nya.',
                    style: TextStyle(fontSize: hitung.about2(lebarLayar / 1.5)),
                    maxLines: maxLines2,
                  ),
                ],
              )
            : Column(
                // mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    'Apa itu \nmambo \nkuliner ?',
                    style: TextStyle(fontSize: hitung.about(lebarLayar / 1.5)),
                    maxLines: maxLines,
                  ),
                  const SizedBox(height: 30),
                  Text(
                    'Mambo Kuliner Nite Tasikmalaya (MKNT) merupakan \n pasar kuliner yang menjual berbagai makanan dan \n minuman produk UMKM. Oleh karena itu, \nMKNT dapat dikatakan sebagai salah satu peluang \nbagi masyarakat Tasikmalaya untuk bisa mengembangkan UMKM-nya.',
                    style: TextStyle(fontSize: hitung.about2(lebarLayar / 1.5)),
                    maxLines: maxLines2,
                  ),
                ],
              ));
  }
}
