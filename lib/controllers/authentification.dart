import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AuthentificationService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future createCompte(String email, String password) async {
    try {
      final credential = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
    } on FirebaseAuthException catch (e) {
      if (e.code == "week-password") {
        throw Exception("The password provided is too weak.");
      } else if (e.code == "email-already-in-use") {
        throw "L'adresse email exist déjà";
      }
    } catch (e) {
      return e;
    }
  }

  Future connectingApplication(BuildContext context, email, String password) async {
    try {
      final userConnecting = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      Navigator.pushNamedAndRemoveUntil(context, '/homeview', (route) => false);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        throw 'No user found for that email.';
      } else if (e.code == 'wrong-password') {
        throw 'Wrong password provided for that user.';
      }
    } catch (e) {
      return e;
    }
  }

}
