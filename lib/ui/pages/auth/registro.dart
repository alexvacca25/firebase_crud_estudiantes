import 'package:firebase_crud_estudiantes/domain/controller/controllerUser.dart';
import 'package:firebase_crud_estudiantes/ui/pages/widget/input.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Registro extends StatelessWidget {
  Registro({super.key});
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    ControlUserAuth cu = ControlUserAuth();
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
            InputField(
              labelText: 'Confirm Password',
              controller: confirmPasswordController,
              isPassword: true,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Registration logic here
                cu.crearUser(emailController.text, passwordController.text);
              },
              child: const Text('Register'),
            ),
            TextButton(
                onPressed: () {
                  Get.offAllNamed('/login');
                },
                child: const Text('Iniciar Sesion'))
          ],
        ),
      ),
    );
  }
}
