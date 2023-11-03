import 'package:flutter/material.dart';
import 'package:tugas_arkom/Screen/home/photohome.dart';
import 'package:tugas_arkom/Screen/home/texthome.dart';

class HomeDesktop extends StatelessWidget {
  const HomeDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Container(
      width: width,
      height: height,
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Texthome(),
          PhotoHome(),
        ],
      ),
    );
  }
}
