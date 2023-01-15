import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:valmusicstudios/application/use_cases/screens/frm_catalogo.dart';
import 'package:valmusicstudios/application/use_cases/screens/frm_login.dart';
import 'package:valmusicstudios/application/use_cases/screens/frm_perfil.dart';
import 'package:valmusicstudios/application/use_cases/settings/man_admin.dart';
import 'package:valmusicstudios/application/use_cases/settings/adm_catalogo.dart';
import 'package:valmusicstudios/application/use_cases/settings/man_perfil.dart';
import 'package:valmusicstudios/application/use_cases/settings/man_sala.dart';
import 'package:valmusicstudios/firebase_options.dart';
import 'package:valmusicstudios/infrastructure/entitymanager/esala.dart';

void main() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ValMusic Studios',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: CatAdmin(),
      //manSala(),
      //Login(),
    );
  }
}
