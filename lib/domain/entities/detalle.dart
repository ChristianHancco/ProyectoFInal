class detalle {
  String _codigo = '', _cod_instrumento = '', _cod_musico = '';
  detalle(String cod, String cin, String cmu) {
    _codigo = cod;
    _cod_instrumento = cin;
    _cod_musico = cmu;
  }

  String get Codigo {
    return _codigo;
  }

  set Codigo(String cod) {
    _codigo = cod;
  }

  String get Cod_instrumento {
    return _cod_instrumento;
  }

  set Cod_instrumento(String cin) {
    _cod_instrumento = cin;
  }

  String get Cod_musico {
    return _cod_musico;
  }

  set Cod_musico(String cmu) {
    _cod_musico = cmu;
  }
}
