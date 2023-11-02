import 'package:firebase_crud_estudiantes/domain/controller/controllerUser.dart';
import 'package:firebase_crud_estudiantes/ui/pages/home/estudiantes.dart';
import 'package:firebase_crud_estudiantes/ui/pages/home/horarios.dart';
import 'package:firebase_crud_estudiantes/ui/pages/home/perfil.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  final List<Widget> _children = const [Estudiantes(), Horarios(), Perfil()];

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    ControlUserAuth cu = Get.find();
    return Scaffold(
      appBar: AppBar(
          title: Obx(
        () => (cu.userValido == null)
            ? const Text("Hola, ")
            : Text('Hola, ${cu.userValido!.user!.email}'),
      )),
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped,
        currentIndex: _currentIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            label: 'Estudiantes',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.schedule),
            label: 'Horarios',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Perfil',
          ),
        ],
      ),
    );
  }
}
