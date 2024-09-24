part of '_index.dart';

class TryListCtrl {
  init() => logxx.i(TryListCtrl, '...');

  increaseCounter() => _dt.rxCounter.setState((s) => s + 1);

  updateRandom() => Serv.sample.updateRandom();
}
