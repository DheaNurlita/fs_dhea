part of '_index.dart';

class LoginCtrl {
  init() => logxx.i(LoginCtrl, '...');

  increaseCounter() => _dt.rxCounter.setState((s) => s + 1);

  updateRandom() => Serv.sample.updateRandom();

  //*--------------------------------------------------------------------------

  signInAnnonimouse() async {
    await Serv.auth.signInAnnonymouse();
  }

  signEmail() async {
    await Serv.auth.signInEmail(
      _dt.rxEmail.value,
      _dt.rxPassword.value,
    );
  }

  signInEmailAndPassword() async {
    await Serv.auth.signInEmailAndPassword(
      _dt.rxEmail.value,
      _dt.rxPassword.value,
    );
  }

  signOut() async {
    await Serv.auth.signOut();
  }

  createEmailAndPassword() async {
    await Serv.auth.createEmailAndPassword(
      _dt.rxEmail.value,
      _dt.rxPassword.value,
    );
  }

  signInByGoogle() async {
    await Serv.auth.signInByGoogle();
  }

  submit() => _dt.rxForm.submit();
}
