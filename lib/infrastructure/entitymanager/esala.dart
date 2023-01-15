import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:valmusicstudios/infrastructure/controllers/conexion.dart';
import 'package:valmusicstudios/infrastructure/controllers/entity_controller/csala.dart';

class Sala_Nombre extends StatelessWidget {
  String code;
  //int code;
  Sala_Nombre({
    required this.code,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final doc = db.doc("/sala/" + code);
    return Scaffold(
      body: StreamBuilder<DocumentSnapshot<Map<String, dynamic>>>(
        stream: doc.snapshots(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return CircularProgressIndicator();
          }
          final docsnap = snapshot.data!;
          return Text(docsnap['nombre']);
        },
      ),
      //     FutureBuilder(
      //   future: Tsala(),
      //   builder: (BuildContext context, AsyncSnapshot snapshot) {
      //     return ListView.builder(
      //       itemCount: snapshot.data?.length,
      //       itemBuilder: (context, index) {
      //         return Row(
      //           children: [
      //             Text(snapshot.data?[index]['nombre']),
      //           ],
      //         );
      //       },
      //     );
      //   },
      // ),
    );
  }
}

class Sala_Descripcion extends StatelessWidget {
  String code;
  Sala_Descripcion({
    required this.code,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final doc = db.doc("/sala/" + code);
    return Scaffold(
      body: StreamBuilder<DocumentSnapshot<Map<String, dynamic>>>(
        stream: doc.snapshots(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return CircularProgressIndicator();
          }
          final docsnap = snapshot.data!;
          return Text(docsnap['descripcion']);
        },
      ),
    );
  }
}
