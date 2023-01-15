import 'dart:collection';

import 'package:valmusicstudios/infrastructure/controllers/conexion.dart';

Future<void> addAdmin(String codadmin, String logadmin, String conadmin) async {
  final baseMap = <String, String>{
    'cod_tipo_usuario': 'administrador',
    'login': logadmin,
    'contraseña': conadmin,
  };
  final hashMap = HashMap<String, String>.of(baseMap);
  await db.collection('usuario').doc(codadmin).set(hashMap);
}

Future<void> addMusico(String logmusico, String conmusico) async {
  await db.collection('usuario').add({
    'cod_tipo_usuario': 'musico',
    'login': logmusico,
    'contraseña': conmusico,
  });
}
