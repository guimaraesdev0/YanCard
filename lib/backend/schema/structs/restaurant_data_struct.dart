// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RestaurantDataStruct extends BaseStruct {
  RestaurantDataStruct({
    int? id,
    int? usado,
    int? idcliente,
    int? idrestaurante,
    String? data,
    String? nomeRestaurante,
  })  : _id = id,
        _usado = usado,
        _idcliente = idcliente,
        _idrestaurante = idrestaurante,
        _data = data,
        _nomeRestaurante = nomeRestaurante;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "usado" field.
  int? _usado;
  int get usado => _usado ?? 0;
  set usado(int? val) => _usado = val;

  void incrementUsado(int amount) => usado = usado + amount;

  bool hasUsado() => _usado != null;

  // "idcliente" field.
  int? _idcliente;
  int get idcliente => _idcliente ?? 0;
  set idcliente(int? val) => _idcliente = val;

  void incrementIdcliente(int amount) => idcliente = idcliente + amount;

  bool hasIdcliente() => _idcliente != null;

  // "idrestaurante" field.
  int? _idrestaurante;
  int get idrestaurante => _idrestaurante ?? 0;
  set idrestaurante(int? val) => _idrestaurante = val;

  void incrementIdrestaurante(int amount) =>
      idrestaurante = idrestaurante + amount;

  bool hasIdrestaurante() => _idrestaurante != null;

  // "data" field.
  String? _data;
  String get data => _data ?? '';
  set data(String? val) => _data = val;

  bool hasData() => _data != null;

  // "nomeRestaurante" field.
  String? _nomeRestaurante;
  String get nomeRestaurante => _nomeRestaurante ?? '';
  set nomeRestaurante(String? val) => _nomeRestaurante = val;

  bool hasNomeRestaurante() => _nomeRestaurante != null;

  static RestaurantDataStruct fromMap(Map<String, dynamic> data) =>
      RestaurantDataStruct(
        id: castToType<int>(data['id']),
        usado: castToType<int>(data['usado']),
        idcliente: castToType<int>(data['idcliente']),
        idrestaurante: castToType<int>(data['idrestaurante']),
        data: data['data'] as String?,
        nomeRestaurante: data['nomeRestaurante'] as String?,
      );

  static RestaurantDataStruct? maybeFromMap(dynamic data) => data is Map
      ? RestaurantDataStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'usado': _usado,
        'idcliente': _idcliente,
        'idrestaurante': _idrestaurante,
        'data': _data,
        'nomeRestaurante': _nomeRestaurante,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'usado': serializeParam(
          _usado,
          ParamType.int,
        ),
        'idcliente': serializeParam(
          _idcliente,
          ParamType.int,
        ),
        'idrestaurante': serializeParam(
          _idrestaurante,
          ParamType.int,
        ),
        'data': serializeParam(
          _data,
          ParamType.String,
        ),
        'nomeRestaurante': serializeParam(
          _nomeRestaurante,
          ParamType.String,
        ),
      }.withoutNulls;

  static RestaurantDataStruct fromSerializableMap(Map<String, dynamic> data) =>
      RestaurantDataStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        usado: deserializeParam(
          data['usado'],
          ParamType.int,
          false,
        ),
        idcliente: deserializeParam(
          data['idcliente'],
          ParamType.int,
          false,
        ),
        idrestaurante: deserializeParam(
          data['idrestaurante'],
          ParamType.int,
          false,
        ),
        data: deserializeParam(
          data['data'],
          ParamType.String,
          false,
        ),
        nomeRestaurante: deserializeParam(
          data['nomeRestaurante'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'RestaurantDataStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is RestaurantDataStruct &&
        id == other.id &&
        usado == other.usado &&
        idcliente == other.idcliente &&
        idrestaurante == other.idrestaurante &&
        data == other.data &&
        nomeRestaurante == other.nomeRestaurante;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([id, usado, idcliente, idrestaurante, data, nomeRestaurante]);
}

RestaurantDataStruct createRestaurantDataStruct({
  int? id,
  int? usado,
  int? idcliente,
  int? idrestaurante,
  String? data,
  String? nomeRestaurante,
}) =>
    RestaurantDataStruct(
      id: id,
      usado: usado,
      idcliente: idcliente,
      idrestaurante: idrestaurante,
      data: data,
      nomeRestaurante: nomeRestaurante,
    );
