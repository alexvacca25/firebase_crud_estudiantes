import 'package:firebase_crud_estudiantes/data/services/peticionesFirestore.dart';
import 'package:get/get.dart';

class ControlUserPerfil extends GetxController {
  Future<void> crearcatalogo(Map<String, dynamic> perfil, foto) async {
    await Peticiones.crearcatalogo(perfil, foto);
  }
}