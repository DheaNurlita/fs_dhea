part of '_index.dart';

abstract class Serv {
  static AuthServ get auth => AuthServ();
  static SampleServ get sample => SampleServ();
  static ProductsServ get products => ProductsServ();
  static TryAuthServ get tryAuth => TryAuthServ();
}
