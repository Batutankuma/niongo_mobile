import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();
  final _globale = GlobalKey<FormState>();

  LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/introduction.jpg'),
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
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text("Welcome to",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold)),
                                ),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text("Niongo.",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 50,
                                          fontWeight: FontWeight.bold)),
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
                                  //Input Password
                                  TextFormField(
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
                                  const Align(
                                    alignment: Alignment.centerRight,
                                    child: Text("Forgot Your Password?",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15,
                                        )),
                                  ),
                                  const SizedBox(height: 15),
                                  //Button Login
                                  GestureDetector(
                                    child: Container(
                                      height: 52,
                                      color: Colors.black,
                                      width: MediaQuery.of(context).size.width,
                                      child: const Center(
                                        child: Text("Login",
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
                                  //Message create Compte
                                  const Text("Don't have an account?",
                                      style: TextStyle(
                                          color: Colors.grey,
                                          fontWeight: FontWeight.bold)),
                                  const SizedBox(height: 10),
                                  GestureDetector(
                                    child: Container(
                                      height: 50,
                                      color: Colors.grey[100],
                                      width: MediaQuery.of(context).size.width,
                                      child: Center(
                                        child: Text("Create Acount",
                                            style: styleTextBtnNetWork()),
                                      ),
                                    ),
                                  ),
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
