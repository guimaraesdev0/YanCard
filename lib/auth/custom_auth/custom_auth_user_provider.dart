import 'package:rxdart/rxdart.dart';

import '/backend/schema/structs/index.dart';
import 'custom_auth_manager.dart';

class YanCardAuthUser {
  YanCardAuthUser({
    required this.loggedIn,
    this.uid,
    this.userData,
  });

  bool loggedIn;
  String? uid;
  UserDataStruct? userData;
}

/// Generates a stream of the authenticated user.
BehaviorSubject<YanCardAuthUser> yanCardAuthUserSubject =
    BehaviorSubject.seeded(YanCardAuthUser(loggedIn: false));
Stream<YanCardAuthUser> yanCardAuthUserStream() => yanCardAuthUserSubject
    .asBroadcastStream()
    .map((user) => currentUser = user);
