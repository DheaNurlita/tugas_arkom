import 'package:flutter/material.dart';
import 'package:tugas_arkom/Screen/userlogin/view_login.dart';

class MyWebb extends StatelessWidget {
  const MyWebb({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(debugShowCheckedModeBanner: false, home: UserLogin());
  }
}
