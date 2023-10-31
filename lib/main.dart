import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crud_estudiantes/domain/controller/controllerUser.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'ui/app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  GetPlatform.isWeb
      ? await Firebase.initializeApp(
          options: const FirebaseOptions(
              apiKey: "AIzaSyB3Smlyu31wZk5YjOVyKR-DHgwKfogMuS4",
              authDomain: "movil2023a2.firebaseapp.com",
              projectId: "movil2023a2",
              storageBucket: "movil2023a2.appspot.com",
              messagingSenderId: "295256088828",
              appId: "1:295256088828:web:66450a2bdcd2fa6f17f779"))
      : await Firebase.initializeApp();
  Get.put(ControlUserAuth());
  runApp(const MyApp());
}
