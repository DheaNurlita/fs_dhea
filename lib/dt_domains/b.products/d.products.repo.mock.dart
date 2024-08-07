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
    // TODO: implement readProduct
    throw UnimplementedError();
  }

  @override
  addToList(List<Products> moreProduct) {
    // TODO: implement addToList
    throw UnimplementedError();
  }

  @override
  Future createDocument(Products product) {
    // TODO: implement createDocument
    throw UnimplementedError();
  }
}
