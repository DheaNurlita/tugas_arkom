import 'package:flutter/material.dart';
import 'package:tugas_arkom/adminLogin/page_login.dart';
import 'package:tugas_arkom/myweb.dart';
import 'package:tugas_arkom/widget_library/domains/_index.dart';

class UserLogin extends StatelessWidget {
  const UserLogin({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        shadowColor: Colors.transparent,
        backgroundColor: Colors.blue.shade900,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const LoginAdmin(),
                    ));
              },
              child: const Text('LogIn Admin'),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const MainHome(),
                    ));
              },
              child: const Text('Skip >>'),
            )
          ],
        ),
      ),
      body: Container(
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
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(
              height: 200,
              width: 200,
              child: Image.asset('assets/image/LOGO MAMBO.png'),
            ),
            const FormInput(),
          ],
        )),
      ),
    );
  }
}
