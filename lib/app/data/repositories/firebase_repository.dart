import 'package:firebase_auth/firebase_auth.dart';

class FirebaseRepository {
  final authInstance = FirebaseAuth.instance;

  createUserWithEmailAndPassword(String email, String password) async {
    await authInstance.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );
  }

  authenticateUserWithEmailAndPassword(String email, String password) async {
    await authInstance.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
  }

}
