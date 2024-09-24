part of '_index.dart';

class TryAddCtrl {
  init() => logxx.i(TryAddCtrl, '...');

  increaseCounter() => _dt.rxCounter.setState((s) => s + 1);

  updateRandom() => Serv.sample.updateRandom();
}
