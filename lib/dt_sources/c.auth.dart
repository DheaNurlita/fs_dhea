part of '_index.dart';

final x1fbAuth = RM.inject(
  () => FbAuth(),
  debugPrintWhenNotifiedPreMessage: '',
);

class FbAuth {
  final instance = FirebaseAuth.instance;

//*----------------------------------------------------------------------------

  Future signInAnonymouse() async {
    final anonymouse = await instance.signInAnonymously();

    return anonymouse;
  }

//*----------------------------------------------------------------------------

  Future<UserCredential> signInEmailPassword(String email, String password) async {
    final user = await instance.signInWithEmailAndPassword(email: email, password: password);
    return user;
  }

//*----------------------------------------------------------------------------

  Future logOut() async {
    final signOut = await instance.signOut();

    return signOut;
  }

//*----------------------------------------------------------------------------

  Future<UserCredential> signInEmail(String email, String password) async {
    final user = await instance.signInWithEmailAndPassword(email: email, password: password);

    return user;
  }

//*----------------------------------------------------------------------------

  Future createEmailandPassword(String email, String password) async {
    final users = await instance.createUserWithEmailAndPassword(email: email, password: password);

    return users;
  }
//*----------------------------------------------------------------------------

  Future<UserCredential> signInByGoogle() async {
    UserCredential? userCredential;

    if (kIsWeb) {
      final authProvider = GoogleAuthProvider().setCustomParameters({'prompt': 'select_account'});
      userCredential = await FirebaseAuth.instance.signInWithPopup(authProvider);
    } else {
      final googleSignIn = await GoogleSignIn().signIn();
      final googleAuth = await googleSignIn?.authentication;
      final googleAuthCredential =
          GoogleAuthProvider.credential(accessToken: googleAuth?.accessToken, idToken: googleAuth?.idToken);

      userCredential = await FirebaseAuth.instance.signInWithCredential(googleAuthCredential);
    }
    return userCredential;
  }
}
