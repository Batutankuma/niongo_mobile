import 'package:flutter/material.dart';

class ProfilView extends StatelessWidget {
  final TextEditingController _name = TextEditingController();
  final TextEditingController _lastname = TextEditingController();
  final _globale = GlobalKey<FormState>();

  ProfilView({super.key});

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
              const Text("Compte Profil"),
              const Spacer(),
              TextFormField(
                controller: _name,
                decoration: const InputDecoration(hintText: "Name"),
              ),
              TextFormField(
                controller: _lastname,
                decoration: const InputDecoration(hintText: "Lastname"),
              ),
              const Spacer(),
              ElevatedButton.icon(
                onPressed: () => Navigator.pushNamedAndRemoveUntil(
                    context, '/homeview', (route) => false),
                icon: const Icon(Icons.login),
                label: const Text("Finish"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
