import 'package:rxdart/rxdart.dart';

import 'custom_auth_manager.dart';

class PatientUiAuthUser {
  PatientUiAuthUser({required this.loggedIn, this.uid});

  bool loggedIn;
  String? uid;
}

/// Generates a stream of the authenticated user.
BehaviorSubject<PatientUiAuthUser> patientUiAuthUserSubject =
    BehaviorSubject.seeded(PatientUiAuthUser(loggedIn: false));
Stream<PatientUiAuthUser> patientUiAuthUserStream() => patientUiAuthUserSubject
    .asBroadcastStream()
    .map((user) => currentUser = user);
