part of '_index.dart';

class AuthServ {
  void init() {
    logxx.i(AuthServ, '...');
  }

  void updateRandom() {
    _pv.rxRandom.st = _rp.giveNewRandom();
  }

  void onSetState() {
    logzz.i(AuthServ, 'rxCounter setState success');
  }

  responseUser(User? user) async {
    if (nav.routeData.location == '/login' || nav.routeData.location == '/register') {
      nav.toReplacement(Routes.productList);
    } else {
      if (user == null) {
        nav.toAndRemoveUntil(Routes.login);
      }
    }
  }

  Future createEmailAndPassword(String email, String password) async {
    await x1fbAuth.st.createEmailandPassword(email, password);
  }

  Future signInByGoogle() async {
    await x1fbAuth.st.signInByGoogle();
  }

  Future signInAnnonymouse() async {
    await x1fbAuth.st.signInAnonymouse();

    _pv.rxUser.subscription = x1fbAuth.st.instance.authStateChanges().listen(
          (event) => _pv.rxUser.st = event,
        );
  }

  Future signInEmail(String email, String password) async {
    await x1fbAuth.st.signInEmail(email, password);
  }

  Future signInEmailAndPassword(String email, String password) async {
    await x1fbAuth.st.signInEmailPassword(email, password);
  }

  Future signOut() async {
    await x1fbAuth.st.logOut();
  }
}
