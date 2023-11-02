import 'dart:io';

import 'package:firebase_crud_estudiantes/domain/controller/ControlFirestore.dart';
import 'package:firebase_crud_estudiantes/ui/pages/widget/input.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class Perfil extends StatefulWidget {
  const Perfil({super.key});

  @override
  _PerfilState createState() => _PerfilState();
}

class _PerfilState extends State<Perfil> {
  XFile? _image; // Variable para almacenar la imagen seleccionada

  final ImagePicker _picker = ImagePicker();

  Future<void> _getImage() async {
    final XFile? image = await _picker.pickImage(
        source:
            ImageSource.gallery); // Abre la galería para seleccionar una imagen
    if (image != null) {
      setState(() {
        _image = image;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    ControlUserPerfil cup = Get.find();
    TextEditingController emailController = TextEditingController();
    TextEditingController nombreController = TextEditingController();
    TextEditingController direccionController = TextEditingController();
    TextEditingController telefonoController = TextEditingController();
    return Scaffold(
      body: ListView(
        children: <Widget>[
          GestureDetector(
            onTap: _getImage,
            child: CircleAvatar(
              radius: 70,
              backgroundImage:
                  _image != null ? FileImage(File(_image!.path)) : null,
              child: _image == null
                  ? Icon(Icons.person, size: 70, color: Colors.grey)
                  : null,
            ),
          ),
          SizedBox(height: Get.height * 0.05),
          const Text(
            'Cargar Foto',
            style: TextStyle(fontSize: 20),
          ),
          InputField(
            labelText: 'Email',
            controller: emailController,
          ),
          InputField(
            labelText: 'Nombre',
            controller: nombreController,
          ),
          InputField(
            labelText: 'Direccion',
            controller: direccionController,
          ),
          InputField(
            labelText: 'Telefono',
            controller: telefonoController,
          ),
          ElevatedButton(
              onPressed: () {
                var perfil = <String, dynamic>{
                  'nombre': nombreController.text,
                  'email': emailController.text,
                  'direccion': direccionController.text,
                  'celular': telefonoController.text,
                  'foto': ''
                };

                cup.crearcatalogo(perfil, _image);
              },
              child: const Text('Guardar Perfil'))
        ],
      ),
    );
  }
}
