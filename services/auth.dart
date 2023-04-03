import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebaseproject/model/user.dart';

class AuthSerrvices {
  final FirebaseAuth _auth = FirebaseAuth.instance;
//create a user based on firebase user
  UserModel? _userFromFirebaseUser(dynamic user) {
    return user != null ? UserModel(uid: user.uid) : null;
  }

//auth change user streams
  Stream<UserModel?> get user {
    final chage = _auth.authStateChanges();

    return chage.map(_userFromFirebaseUser);
  }

  //anounimous
  Future signInanon() async {
    try {
      final result = await _auth.signInAnonymously();
      final user = result.user;
      return _userFromFirebaseUser(user);
    } catch (e) {
      print(e.toString());
      return null;
    }
  }
  //sign in with email and password

  //register with email and password

  //sign out
  Future signout() async {
    try {
      return await _auth.signOut();
      print("object");
    } catch (e) {
      print("logout" + e.toString());
      return null;
    }
  }
}
