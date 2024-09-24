part of '_index.dart';

class TryDetailCtrl {
  init() => logxx.i(TryDetailCtrl, '...');

  increaseCounter() => _dt.rxCounter.setState((s) => s + 1);

  updateRandom() => Serv.sample.updateRandom();
}
