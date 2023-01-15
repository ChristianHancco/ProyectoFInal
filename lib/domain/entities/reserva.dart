class reserva {
  String _codigo = '',
      _cod_musico = '',
      _cod_sala = '',
      _cod_detalle = '',
      _fecha_reserva = '',
      _hora_reserva = '';
  reserva(
      String cod, String cmu, String csa, String cde, String fdr, String hdr) {
    _codigo = cod;
    _cod_musico = cmu;
    _cod_sala = csa;
    _cod_detalle = cde;
    _fecha_reserva = fdr;
    _hora_reserva = hdr;
  }

  String get Codigo {
    return _codigo;
  }

  set Codigo(String cod) {
    _codigo = cod;
  }

  String get Cod_musico {
    return _cod_musico;
  }

  set Cod_musico(String cmu) {
    _cod_musico = cmu;
  }

  String get Cod_sala {
    return _cod_sala;
  }

  set Cod_sala(String csa) {
    _cod_sala = csa;
  }

  String get Cod_detalle {
    return _cod_detalle;
  }

  set Cod_detalle(String cde) {
    _cod_detalle = cde;
  }

  String get Fecha_reserva {
    return _fecha_reserva;
  }

  set Fecha_reserva(String fdr) {
    _fecha_reserva = fdr;
  }

  String get Hora_reserva {
    return _hora_reserva;
  }

  set Hora_reserva(String hdr) {
    _hora_reserva = hdr;
  }
}
