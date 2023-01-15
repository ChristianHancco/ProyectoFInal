class musico {
  String _codigo = '',
      _cod_usuario = '',
      _nombres = '',
      _apellidos = '',
      _dni = '';
  musico(String cod, String cus, String nom, String ape, String dni) {
    _codigo = cod;
    _cod_usuario = cus;
    _nombres = nom;
    _apellidos = ape;
    _dni = dni;
  }

  String get Codigo {
    return _codigo;
  }

  set Codigo(String cod) {
    _codigo = cod;
  }

  String get Cod_usuario {
    return _cod_usuario;
  }

  set Cod_usuario(String cus) {
    _cod_usuario = cus;
  }

  String get Nombres {
    return _nombres;
  }

  set Nombres(String nom) {
    _nombres = nom;
  }

  String get Apellidos {
    return _apellidos;
  }

  set Apellidos(String ape) {
    _apellidos = ape;
  }

  String get Dni {
    return _dni;
  }

  set Dni(String dni) {
    _dni = dni;
  }
}
