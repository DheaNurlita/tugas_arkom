import 'package:firebase_auth/firebase_auth.dart';

class FirebaseAuthService {
  // ignore: prefer_final_fields
  FirebaseAuth _auth = FirebaseAuth.instance;

  Future<User?> signIpWithEmailAndPassword(String email, String password) async {
    try {
      UserCredential credential = await _auth.signInWithEmailAndPassword(email: email, password: password);
      return credential.user;
    } catch (e) {
      // ignore: avoid_print
      print("admin tidak ditemukan");
    }
    return null;
  }
}
