import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const SizedBox(
        child: Center(
          child: Text("Hello, World"),
        ),
      ),
      floatingActionButton: FloatingActionButton.small(
        onPressed: () => _addBorrow(context),
        child: const Center(
          child: Icon(Icons.add),
        ),
      ),
    );
  }

  Future<void> _addBorrow(BuildContext context) async {
    TextEditingController montant = TextEditingController();
    TextEditingController refundAt = TextEditingController();
    final form = GlobalKey<FormState>();
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text("Add Borrow AT Sael"),
            content: Form(
              key: form,
              child: Column(
                children: [
                  TextFormField(
                    keyboardType: TextInputType.number,
                    controller: montant,
                    decoration: const InputDecoration(hintText: "Montant"),
                  ),
                  TextFormField(
                    controller: refundAt,
                    keyboardType: TextInputType.datetime,
                    decoration: const InputDecoration(hintText: "Date"),
                  ),
                ],
              ),
            ),
            actions: const [
              IconButton(onPressed: null, icon: Icon(Icons.add)),
              IconButton(onPressed: null, icon: Icon(Icons.cancel))
            ],
          );
        });
  }
}
