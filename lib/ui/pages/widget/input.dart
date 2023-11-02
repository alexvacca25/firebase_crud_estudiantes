import 'package:flutter/material.dart';
import 'package:get/get.dart';

class InputField extends StatelessWidget {
  final String labelText;
  final TextEditingController controller;
  final bool isPassword;

  const InputField({
    super.key,
    required this.labelText,
    required this.controller,
    this.isPassword = false,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(Get.width * 0.01),
      child: TextFormField(
        controller: controller,
        obscureText: isPassword,
        decoration: InputDecoration(
          labelText: labelText,
          border: const OutlineInputBorder(),
        ),
      ),
    );
  }
}
