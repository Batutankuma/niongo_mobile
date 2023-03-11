//Authentification application
import 'package:flutter/material.dart';
import 'package:niongo/main.dart';
import 'package:niongo/models/user_model.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

Future<CompteUser> auth(
    BuildContext context, String email, String password) async {
  try {
    final AuthResponse res = await supabase.auth
        .signInWithPassword(password: password, email: email);
    return CompteUser(res.user!.id.toString(), res.user!.email.toString(),
        res.user!.role.toString(), res.session.toString());
  } catch (e) {
    const snackBar =
        SnackBar(content: Text("Veuillez verifiez votre password ou email"));
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
    return Future.error("error");
  }
}

Future<CompteUser> createCompte(
    BuildContext context, String email, String password) async {
  try {
    final AuthResponse res =
        await supabase.auth.signUp(password: password, email: email);
    CompteUser compteUser = CompteUser(
        res.user!.id.toString(),
        res.user!.email.toString(),
        res.user!.role.toString(),
        res.session.toString());
    debugPrint(compteUser.email);
    return compteUser;
  } catch (e) {
    const snackBar =
        SnackBar(content: Text("Veuillez verifiez votre password ou email"));
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
    return Future.error("error");
  }
}
