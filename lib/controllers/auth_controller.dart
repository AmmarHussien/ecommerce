import 'package:firebase_auth/firebase_auth.dart';

class AuthController {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<String> signUpUser(String email, String password, String fullName,
      String phoneNumber) async {
    String res = 'Some error occurred while signing up';

    try {
      if (email.isNotEmpty &&
          fullName.isNotEmpty &&
          phoneNumber.isNotEmpty &&
          password.isNotEmpty) {
        //create Account
        UserCredential cred = await _auth.createUserWithEmailAndPassword(
          email: email,
          password: password,
        );

        res = 'successful sign up user';
      } else {
        res = 'Please Fields Must Be Not Empty';
      }
    } catch (e) {}
    return res;
  }
}
