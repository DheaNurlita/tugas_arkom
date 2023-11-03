import 'package:flutter/material.dart';

class PhotoHome extends StatelessWidget {
  const PhotoHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Flexible(
        child: SizedBox(
      width: 500,
      height: 500,
      // color: Colors.amber,
      child: Image.asset('assets/image/LOGO MAMBO.png'),
    ));
  }
}
