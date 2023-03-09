import 'package:flutter/material.dart';
import 'package:niongo/views/home_view.dart';
import 'package:niongo/views/login_view.dart';
import 'package:niongo/views/profil_view.dart';
import 'package:niongo/views/signin_view.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
final supabase = Supabase.instance.client;
const String url = 'https://uqdbnylrudvtwoxmifcq.supabase.co';
const String anonKey = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InVxZGJueWxydWR2dHdveG1pZmNxIiwicm9sZSI6ImFub24iLCJpYXQiOjE2NzgxMzc1NDIsImV4cCI6MTk5MzcxMzU0Mn0.6Bo8TjOvvqPIRHSp5AmEe3JcKxFVyLo33HO0oE4MPOs';

void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await Supabase.initialize(url:url ,anonKey: anonKey);
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
        '/loginview':(context) => LoginView(),
        '/siginview':(context) => SignInView(),
        '/homeview':(context)=> const HomeView(),
        '/profilview':(context) => ProfilView()
      },
    );
  }
}
