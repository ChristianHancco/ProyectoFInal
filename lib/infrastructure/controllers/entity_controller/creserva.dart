import 'dart:collection';

import 'package:valmusicstudios/infrastructure/controllers/conexion.dart';

Future<void> addDetalle(String codMusico, String codSala, String codDetalle,
    String fecha, String hora) async {
  final baseMap = <String, String>{
    'cod_musico': codMusico,
    'cod_sala': codSala,
    'cod_detalle': codDetalle,
    'fecha_reserva': fecha,
    'hora_reserva': hora,
  };
  final hashMap = HashMap<String, String>.of(baseMap);
  await db.collection('detalle').doc(codMusico).set(hashMap);
}
