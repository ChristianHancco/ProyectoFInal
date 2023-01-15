import 'dart:collection';

import 'package:valmusicstudios/infrastructure/controllers/conexion.dart';

Future<void> editPerfil(
    String nomperfil, String apeperfil, String dniperfil) async {
  final baseMap = <String, String>{
    'nomperfil': nomperfil,
    'apeperfil': apeperfil,
    'dniperfil': dniperfil,
  };
  final hashMap = HashMap<String, String>.of(baseMap);
  await db.collection('perfil').doc(dniperfil).set(hashMap);
}
