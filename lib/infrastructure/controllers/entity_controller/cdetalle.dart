import 'dart:collection';

import 'package:valmusicstudios/infrastructure/controllers/conexion.dart';

Future<void> addDetalle(int guitarra, int bajo, int bateria, int teclado,
    int microfono, String codMusico) async {
  final baseMap = <String, String>{
    'guitarra': guitarra.toString(),
    'bajo': bajo.toString(),
    'bateria': bateria.toString(),
    'teclado': teclado.toString(),
    'microfono': microfono.toString(),
    'cod_musico': codMusico,
  };
  final hashMap = HashMap<String, String>.of(baseMap);
  await db.collection('detalle').doc(codMusico).set(hashMap);
}
