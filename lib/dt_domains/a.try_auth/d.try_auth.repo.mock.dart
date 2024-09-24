part of '_index.dart';

class TryAuthRepoMock implements TryAuthRepo {
  @override
  int giveNewRandom() {
    final x = Random().nextInt(100);
    logz.wtf('random value coming from TryAuthRepoMock');
    return x;
  }
}