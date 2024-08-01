// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserDataStruct extends BaseStruct {
  UserDataStruct({
    int? userId,
    String? nome,
    String? email,
    String? telefone,
    String? nascimento,
    String? token,
  })  : _userId = userId,
        _nome = nome,
        _email = email,
        _telefone = telefone,
        _nascimento = nascimento,
        _token = token;

  // "userId" field.
  int? _userId;
  int get userId => _userId ?? 0;
  set userId(int? val) => _userId = val;

  void incrementUserId(int amount) => userId = userId + amount;

  bool hasUserId() => _userId != null;

  // "nome" field.
  String? _nome;
  String get nome => _nome ?? '';
  set nome(String? val) => _nome = val;

  bool hasNome() => _nome != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  set email(String? val) => _email = val;

  bool hasEmail() => _email != null;

  // "telefone" field.
  String? _telefone;
  String get telefone => _telefone ?? '';
  set telefone(String? val) => _telefone = val;

  bool hasTelefone() => _telefone != null;

  // "nascimento" field.
  String? _nascimento;
  String get nascimento => _nascimento ?? '';
  set nascimento(String? val) => _nascimento = val;

  bool hasNascimento() => _nascimento != null;

  // "token" field.
  String? _token;
  String get token => _token ?? '';
  set token(String? val) => _token = val;

  bool hasToken() => _token != null;

  static UserDataStruct fromMap(Map<String, dynamic> data) => UserDataStruct(
        userId: castToType<int>(data['userId']),
        nome: data['nome'] as String?,
        email: data['email'] as String?,
        telefone: data['telefone'] as String?,
        nascimento: data['nascimento'] as String?,
        token: data['token'] as String?,
      );

  static UserDataStruct? maybeFromMap(dynamic data) =>
      data is Map ? UserDataStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'userId': _userId,
        'nome': _nome,
        'email': _email,
        'telefone': _telefone,
        'nascimento': _nascimento,
        'token': _token,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'userId': serializeParam(
          _userId,
          ParamType.int,
        ),
        'nome': serializeParam(
          _nome,
          ParamType.String,
        ),
        'email': serializeParam(
          _email,
          ParamType.String,
        ),
        'telefone': serializeParam(
          _telefone,
          ParamType.String,
        ),
        'nascimento': serializeParam(
          _nascimento,
          ParamType.String,
        ),
        'token': serializeParam(
          _token,
          ParamType.String,
        ),
      }.withoutNulls;

  static UserDataStruct fromSerializableMap(Map<String, dynamic> data) =>
      UserDataStruct(
        userId: deserializeParam(
          data['userId'],
          ParamType.int,
          false,
        ),
        nome: deserializeParam(
          data['nome'],
          ParamType.String,
          false,
        ),
        email: deserializeParam(
          data['email'],
          ParamType.String,
          false,
        ),
        telefone: deserializeParam(
          data['telefone'],
          ParamType.String,
          false,
        ),
        nascimento: deserializeParam(
          data['nascimento'],
          ParamType.String,
          false,
        ),
        token: deserializeParam(
          data['token'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'UserDataStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is UserDataStruct &&
        userId == other.userId &&
        nome == other.nome &&
        email == other.email &&
        telefone == other.telefone &&
        nascimento == other.nascimento &&
        token == other.token;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([userId, nome, email, telefone, nascimento, token]);
}

UserDataStruct createUserDataStruct({
  int? userId,
  String? nome,
  String? email,
  String? telefone,
  String? nascimento,
  String? token,
}) =>
    UserDataStruct(
      userId: userId,
      nome: nome,
      email: email,
      telefone: telefone,
      nascimento: nascimento,
      token: token,
    );
