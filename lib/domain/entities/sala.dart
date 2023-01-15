// import 'package:valmusicstudios/infrastructure/controllers/entity_controller/csala.dart';
// import 'package:valmusicstudios/infrastructure/entitymanager/esala.dart';

// class sala {
//   String _codigo = '',
//       _nombre = '',
//       _estado = '',
//       _imagen = '',
//       _descripcion = '';

//   sala(String cod, String nom, String est, String ima, String des) {
//     _codigo = cod;
//     _nombre = nom;
//     _estado = est;
//     _imagen = ima;
//     _descripcion = des;
//   }

//   String get Codigo {
//     return _codigo;
//   }

//   set Codigo(String cod) {
//     _codigo = cod;
//   }

//   String get NombreS {
//     return _nombre;
//   }

//   set Nombre(String Snom) {
//     _nombre = Snom;
//   }

//   String get Estado {
//     return _estado;
//   }

//   set Estado(String est) {
//     _estado = est;
//   }

//   String get Imagen {
//     return _imagen;
//   }

//   set Imagen(String imaS) {
//     _imagen = imaS;
//   }
// }
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:valmusicstudios/application/functions/fun_AddSala.dart';
import 'package:valmusicstudios/infrastructure/controllers/conexion.dart';
import 'package:valmusicstudios/infrastructure/controllers/entity_controller/csala.dart';
import 'package:valmusicstudios/infrastructure/entitymanager/esala.dart';

class Nueva_Sala extends StatelessWidget {
  //String code;
  //int code;
  Nueva_Sala({
    //required this.code,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    //final doc = db.doc("/sala/" + code);
    return Scaffold(
      body: FutureBuilder(
        future: Tsala(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          return ListView.builder(
            itemCount: snapshot.data?.length,
            itemBuilder: (context, index) {
              return Container(
                decoration: BoxDecoration(color: Colors.transparent),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    AddSalas(
                        nomsala: snapshot.data?[index]['nombre'],
                        imsala: snapshot.data?[index]['imagen'],
                        essala: snapshot.data?[index]['estado'],
                        desSala: snapshot.data?[index]['descripcion']),
                  ],
                ),
              );
            },
          );
        },
      ),
    );
  }
}
