import 'package:firebase_crud_estudiantes/ui/pages/auth/login.dart';
import 'package:firebase_crud_estudiantes/ui/pages/auth/registro.dart';
import 'package:firebase_crud_estudiantes/ui/pages/home/home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: "/login",
      routes: {
        "/login": (context) => Login(),
        "/registro": (context) => Registro(),
        "/home": (context) => const HomePage()
      },
    );
  }
}
