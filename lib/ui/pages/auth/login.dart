import 'package:firebase_crud_estudiantes/ui/pages/widget/input.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Login extends StatelessWidget {
  Login({super.key});

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            InputField(
              labelText: 'Email',
              controller: emailController,
            ),
            const SizedBox(height: 20),
            InputField(
              labelText: 'Password',
              controller: passwordController,
              isPassword: true,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Login logic here
              },
              child: const Text('Login'),
            ),
            TextButton(
                onPressed: () {
                  Get.offNamed('/registro');
                },
                child: const Text('Crear Cuenta'))
          ],
        ),
      ),
    );
  }
}
