import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:tugas_arkom/adminLogin/firebase_auth.dart';
import 'package:tugas_arkom/adminLogin/tenantadd/_index.dart';

class LoginAdmin extends StatefulWidget {
  const LoginAdmin({super.key});

  @override
  State<LoginAdmin> createState() => _LoginAdminState();
}

class _LoginAdminState extends State<LoginAdmin> {
  final FirebaseAuthService _auth = FirebaseAuthService();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Admin'),
      ),
      body: Center(
        child: Container(
          constraints: const BoxConstraints(minWidth: 20, maxWidth: 400),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  controller: emailController,
                  decoration: const InputDecoration(hintText: "masukan email", border: OutlineInputBorder()),
                ),
                const SizedBox(height: 30),
                TextField(
                  controller: passwordController,
                  decoration: const InputDecoration(hintText: "masukan password", border: OutlineInputBorder()),
                ),
                const SizedBox(height: 30),
                GestureDetector(
                  onTap: signin,
                  child: Container(
                    width: 100,
                    height: 30,
                    decoration: BoxDecoration(color: Colors.blue, borderRadius: BorderRadius.circular(20)),
                    child: const Center(child: Text('Login')),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void signin() async {
    String email = emailController.text;
    String password = passwordController.text;

    User? user = await _auth.signIpWithEmailAndPassword(email, password);
    if (user != null) {
      debugPrint("user is succesfully sign in");
      // ignore: use_build_context_synchronously
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const TenantAddView(),
          ));
    } else {
      debugPrint("error");
    }
  }
}
