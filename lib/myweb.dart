import 'package:flutter/material.dart';
import 'package:tugas_arkom/Screen/about/about_mobile/about_mobile.dart';

import 'Screen/about/about_desktop.dart/about_desktop.dart';
import 'Screen/home/home_desktop/home_desktop.dart';
import 'Screen/home/home_mobile/home_mobile.dart';
// import 'package:tugas_arkom/Screen/about/about_desktop.dart/about_desktop.dart';
// import 'package:tugas_arkom/Screen/about/about_mobile/about_mobile.dart';
// import 'package:tugas_arkom/Screen/home/home_desktop/home_desktop.dart';
// import 'package:tugas_arkom/Screen/home/home_mobile/home_mobile.dart';
// import 'package:tugas_arkom/widget_library/tombol.dart';
// import 'package:flutter_svg/svg.dart';

class MainHome extends StatelessWidget {
  const MainHome({super.key});

  @override
  Widget build(BuildContext context) {
    bool isDesktop(BuildContext context) => MediaQuery.of(context).size.width >= 1000;
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
        appBar: AppBar(
          title: Text(
            width.toString(),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: height,
                width: width,
                padding: const EdgeInsets.fromLTRB(50, 150, 50, 90),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.blue.shade900,
                      Colors.black,
                    ],
                  ),
                ),
                child: isDesktop(context) ? const HomeDesktop() : const HomeMobile(),
              ),
              isDesktop(context) ? const AboutDesktop() : const AboutMobile()
            ],
          ),
        ));
  }
}
