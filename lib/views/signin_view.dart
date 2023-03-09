import 'package:flutter/material.dart';

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
                onPressed: () => Navigator.pushNamedAndRemoveUntil(
                    context, '/homeview', (route) => false),
                icon: const Icon(Icons.login),
                label: const Text("Login"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
