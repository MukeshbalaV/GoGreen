import 'package:rxdart/rxdart.dart';

import 'custom_auth_manager.dart';

class GogreenAuthUser {
  GogreenAuthUser({required this.loggedIn, this.uid});

  bool loggedIn;
  String? uid;
}

/// Generates a stream of the authenticated user.
BehaviorSubject<GogreenAuthUser> gogreenAuthUserSubject =
    BehaviorSubject.seeded(GogreenAuthUser(loggedIn: false));
Stream<GogreenAuthUser> gogreenAuthUserStream() => gogreenAuthUserSubject
    .asBroadcastStream()
    .map((user) => currentUser = user);
