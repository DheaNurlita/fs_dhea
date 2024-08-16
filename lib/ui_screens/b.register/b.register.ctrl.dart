part of '_index.dart';

class RegisterCtrl {
  init() => logxx.i(RegisterCtrl, '...');

  increaseCounter() => _dt.rxCounter.setState((s) => s + 1);

  updateRandom() => Serv.sample.updateRandom();

  signUpEmailAndPassword() async {
    await Serv.auth.createEmailAndPassword(
      _dt.rxEmail.value,
      _dt.rxPassword.value,
    );
  }

  signUp() => _dt.rxForm.submit();
}
