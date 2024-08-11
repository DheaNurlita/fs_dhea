part of '_index.dart';

class ProductsRepoMock implements ProductsRepo {
  @override
  int giveNewRandom() {
    final x = Random().nextInt(100);
    logz.wtf('random value coming from ProductsRepoMock');
    return x;
  }

  @override
  Future<List<Products>> readProduct() {
    throw UnimplementedError();
  }

  addToList(List<Products> moreProduct) {
    throw UnimplementedError();
  }

  @override
  Future createDocument(Products product) {
    throw UnimplementedError();
  }

  @override
  Future<Products> readDocDetail(String docId) {
    throw UnimplementedError();
  }

  @override
  Future deleteProduct(String docId) {
    // TODO: implement deleteProduct
    throw UnimplementedError();
  }
}
