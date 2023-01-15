import 'dart:collection';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:valmusicstudios/infrastructure/controllers/conexion.dart';

//final _add = db.collection("sala").document(sal0001);
// Future<List> addSala(
//     String nombre, String imagen, String descripcion, String estado) async {
//   await db
//       .collection("sala")
//       .add("Sala 3", "image/sala1.png", "Sala Bonita", "disponible");
// }

Future<List> Tsala() async {
  // WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp(
  //   options: DefaultFirebaseOptions.currentPlatform,
  // );
  List ListSala = [];
  CollectionReference collectionReference = db.collection('sala');
  QuerySnapshot querySnapshot = await collectionReference.get();
  querySnapshot.docs.forEach((element) {
    ListSala.add(element.data());
  });
  Future.delayed(Duration(seconds: 5));
  return ListSala;
}

// Future<void> addSala(
//     String nomSala, String imaSala, String desSala, String estSala) async {
//   await db.collection('sala').add({
//     'nombre': nomSala,
//     'imagen': imaSala,
//     'descripción': desSala,
//     'estado': estSala,
//   });
// }
Future<void> addSala(String codigo, String nomSala, String imaSala,
    String desSala, String estSala) async {
  final baseMap = <String, String>{
    'nombre': nomSala,
    'imagen': imaSala,
    'descripcion': desSala,
    'estado': estSala
  };
  final hashMap = HashMap<String, String>.of(baseMap);
  await db.collection('sala').doc(codigo).set(hashMap);
}
