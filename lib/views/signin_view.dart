import 'package:flutter/material.dart';

class SignInView extends StatelessWidget {
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();
  final TextEditingController _name = TextEditingController();

  final _globale = GlobalKey<FormState>();

  SignInView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('welcom'),
        backgroundColor: Colors.blue[200],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/manager.jpg'),
                    fit: BoxFit.cover)),
            child: Container(
                alignment: Alignment.bottomCenter,
                child: SizedBox(
                  child: Column(
                    children: [
                      Flexible(
                        flex: 1,
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: SizedBox(
                            child: Column(
                              children: const [
                                SizedBox(height: 50),
                                //title view
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "Create Compte In Niongo",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 50,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      //Form Party
                      Flexible(
                        flex: 2,
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          color: Colors.white,
                          child: SizedBox(
                            child: Form(
                              key: _globale,
                              child: Column(
                                children: [
                                  const SizedBox(height: 25),
                                  //Input Email
                                  TextFormField(
                                    controller: _email,
                                    keyboardType: TextInputType.emailAddress,
                                    decoration: const InputDecoration(
                                      hintText: "Email",
                                      border: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Colors.black, width: 1.0)),
                                    ),
                                  ),
                                  const SizedBox(height: 10),
                                  //Input Name
                                  TextFormField(
                                    controller: _name,
                                    keyboardType: TextInputType.name,
                                    decoration: const InputDecoration(
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Colors.black, width: 1.0),
                                        ),
                                        hintText: "Name",
                                        border: OutlineInputBorder()),
                                  ),
                                  const SizedBox(height: 10),
                                  //Input Password
                                  TextFormField(
                                    obscureText: true,
                                    controller: _password,
                                    keyboardType: TextInputType.visiblePassword,
                                    decoration: const InputDecoration(
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Colors.black, width: 1.0),
                                        ),
                                        hintText: "Password",
                                        border: OutlineInputBorder()),
                                  ),
                                  //Message Forgot Your Password
                                  const SizedBox(height: 15),
                                  //Button Login
                                  GestureDetector(
                                    child: Container(
                                      height: 52,
                                      color: Colors.black,
                                      width: MediaQuery.of(context).size.width,
                                      child: const Center(
                                        child: Text("Create compte",
                                            style:
                                                TextStyle(color: Colors.white)),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 15),
                                  SizedBox(
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        //Button Login Gmail
                                        SizedBox(
                                          height: 45,
                                          width: 165,
                                          child: ElevatedButton.icon(
                                            onPressed: null,
                                            icon: const Icon(
                                                Icons.mark_email_unread,
                                                color: Colors.red),
                                            label: Text("Gmail",
                                                style: styleTextBtnNetWork()),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 45,
                                          width: 165,
                                          child: ElevatedButton.icon(
                                            onPressed: null,
                                            icon: const Icon(Icons.facebook,
                                                color: Colors.blue),
                                            label: Text("Facebook",
                                                style: styleTextBtnNetWork()),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(height: 10),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )),
          ),
        ),
      ),
    );
  }

  //Style Text Bottom Social Network
  TextStyle styleTextBtnNetWork() {
    return const TextStyle(color: Colors.black, fontWeight: FontWeight.bold);
  }
}
