import 'package:flutter/material.dart';
import 'package:tugas_arkom/adminLogin/page_login.dart';

class HomeAdmin extends StatelessWidget {
  const HomeAdmin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('home admin'),
      ),
      body: Container(
        color: Colors.pink,
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const LoginAdmin(),
                ));
          },
          child: const Text(
            "logout",
          ),
        ),
      ),
    );
  }
}
