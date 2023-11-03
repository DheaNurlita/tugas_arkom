import 'package:flutter/material.dart';
import 'package:tugas_arkom/Screen/home/photohome.dart';
import 'package:tugas_arkom/Screen/home/texthome.dart';

class HomeMobile extends StatelessWidget {
  const HomeMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [PhotoHome(), SizedBox(height: 40), Texthome()],
    );
  }
}
