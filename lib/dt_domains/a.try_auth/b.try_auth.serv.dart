part of '_index.dart';

class TryAuthServ {
  void init() {
    logxx.i(TryAuthServ, '...');
  }

  void updateRandom() {
    _pv.rxRandom.st = _rp.giveNewRandom();
  }

  void onSetState() {
    logzz.i(TryAuthServ, 'rxCounter setState success');
  }
}