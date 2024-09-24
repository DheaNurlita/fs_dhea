part of '_index.dart';

abstract class Repo {
  static Injected<SampleRepo> get sample => _sampleRepo;
  static Injected<AuthRepo> get auth => _authRepo;
  static Injected<ProductsRepo> get products => _productsRepo;
  static Injected<TryAuthRepo> get tryAuth => _tryAuthRepo;
}

final _sampleRepo = RM3.inj(SampleRepo());

final _authRepo = RM3.inj(AuthRepo());

final _productsRepo = RM3.inj(ProductsRepo());

final _tryAuthRepo = RM3.inj(TryAuthRepo());
