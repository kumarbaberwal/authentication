import 'package:firebase_auth/firebase_auth.dart';
import 'package:womensafety/data/models/user_signin_request.dart';
import 'package:womensafety/data/models/user_singup_request.dart';

abstract class AuthFirebaseService {
  Future<bool> isLoggedIn();
  Future<void> signin(UserSigninRequest userSigninRequest);
  Future<void> signup(UserSignupRequest userSignupRequest);
}

class AuthFirebaseServiceImpl extends AuthFirebaseService {
  @override
  Future<bool> isLoggedIn() async {
    if (FirebaseAuth.instance.currentUser != null) {
      return true;
    } else {
      return false;
    }
  }

  @override
  Future<void> signin(UserSigninRequest userSigninRequest) async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: userSigninRequest.emailAddress,
        password: userSigninRequest.password,
      );
      return;
    } on FirebaseAuthException catch (e) {
      String message;
      if (e.code == 'invalid-email') {
        message = 'User not found for that email';
      } else if (e.code == 'invalid-credential') {
        message = 'Wrong Password provided for that user';
      } else {
        message = 'An unknown error occurred';
      }
      // Throwing the error to be caught by the caller
      throw Exception(message);
    }
  }

  @override
  Future<void> signup(UserSignupRequest userSignupRequest) async {
    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: userSignupRequest.emailAddress,
        password: userSignupRequest.password,
      );

      return;
    } on FirebaseAuthException catch (e) {
      String message = '';
      if (e.code == 'weak-password') {
        message = 'This password provided is to weak';
      } else if (e.code == 'email-already-in-use') {
        message = 'An account already exists with this email';
      }
      throw Exception(message);
    }
  }
}
