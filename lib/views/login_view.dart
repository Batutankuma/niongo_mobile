import 'package:flutter/material.dart';

class LoginHome extends StatelessWidget{

  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();
  final _globale = GlobalKey<FormState>();



  LoginHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Form(
        key: _globale,
        child: Column(
          children: [
            const Spacer(),
            TextFormField(
              controller: _email,
              decoration: const InputDecoration(
                hintText: "Email"
              ),
            ),
            TextFormField(
              controller: _password,
              decoration: const InputDecoration(
                hintText: "Password"
              ),
            ),
            const Spacer(),
            ElevatedButton.icon(onPressed: null, icon: const Icon(Icons.login), label: const Text("Login"))
          ],
        ),
      ),
    );
  }

}