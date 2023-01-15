class usuario {
  String _codigo = '', _cod_tipo_usuario = '', _logueo = '', _contrasena = '';
  usuario(String cod, String ctu, String log, String con) {
    _codigo = cod;
    _cod_tipo_usuario = ctu;
    _logueo = log;
    _contrasena = con;
  }

  String get Codigo {
    return _codigo;
  }

  set Codigo(String cod) {
    _codigo = cod;
  }

  String get Cod_tipo_usuario {
    return _cod_tipo_usuario;
  }

  set Cod_tipo_usuario(String ctu) {
    _cod_tipo_usuario = ctu;
  }

  String get Logueo {
    return _logueo;
  }

  set Logueo(String log) {
    _logueo = log;
  }

  String get Contrasena {
    return _contrasena;
  }

  set Contrasena(String con) {
    _contrasena = con;
  }
}
