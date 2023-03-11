import 'package:flutter/material.dart';
import 'package:niongo/controllers/authentification.dart';

class SignInView extends StatelessWidget {
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();
  final _globale = GlobalKey<FormState>();

  SignInView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Form(
          key: _globale,
          child: Column(
            children: [
              const Text("Signin"),
              const Spacer(),
              TextFormField(
                controller: _email,
                decoration: const InputDecoration(hintText: "Email"),
              ),
              TextFormField(
                controller: _password,
                decoration: const InputDecoration(hintText: "Password"),
              ),
              const Spacer(),
              ElevatedButton.icon(
                onPressed: (){
                  //Navigator.pushNamed(context, '/profilview')
                  createCompte(context, _email.text, _password.text);
                },
                icon: const Icon(Icons.login),
                label: const Text("Compte Profil"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
