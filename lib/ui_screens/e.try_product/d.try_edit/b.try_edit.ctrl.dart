part of '_index.dart';

class TryEditCtrl {
  init() => logxx.i(TryEditCtrl, '...');

  increaseCounter() => _dt.rxCounter.setState((s) => s + 1);

  updateRandom() => Serv.sample.updateRandom();
}
