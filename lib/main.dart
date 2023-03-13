import 'package:flutter/material.dart';
import 'package:niongo/views/home_view.dart';
import 'package:niongo/views/login_view.dart';
import 'package:niongo/views/profil_view.dart';
import 'package:niongo/views/signin_view.dart';
import 'package:niongo/views/splash_view.dart';
void main()async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginView(),
      initialRoute: '/loginview',
      routes: {
        '/splashview':(context) => const IntroScreenDefault(),
        '/loginview':(context) => LoginView(),
        '/siginview':(context) => SignInView(),
        '/homeview':(context)=> const HomeView(),
        '/profilview':(context) => ProfilView()
      },
    );
  }
}
