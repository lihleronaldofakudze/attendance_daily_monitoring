import 'package:attendance_daily_monitoring/models/CurrentUser.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  CurrentUser? userFromFirebase(User? user) {
    return user != null ? CurrentUser(phoneNumber: user.phoneNumber) : null;
  }

  Stream<CurrentUser?> get user {
    return _auth.authStateChanges().map(userFromFirebase);
  }

  Future? logout() {
    try {
      return _auth.signOut();
    } catch (error) {
      print(error);
      return null;
    }
  }
}
