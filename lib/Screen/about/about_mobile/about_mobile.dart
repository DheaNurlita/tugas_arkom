import 'package:flutter/material.dart';
import 'package:tugas_arkom/Screen/about/textkanan.dart';
import 'package:tugas_arkom/Screen/about/textkiri.dart';

class AboutMobile extends StatelessWidget {
  const AboutMobile({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Container(
      width: width,
      height: height,
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          TextKananAbout(),
          TextKiriAbout(),
        ],
      ),
    );
  }
}
