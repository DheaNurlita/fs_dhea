part of '_index.dart';

class ProductsRepo {
  int giveNewRandom() {
    final x = Random().nextInt(100);
    logz.s('random value coming from ProductsRepo');
    return x;
  }

  Future<List<Products>> readProduct() async {
    List<Products> product = [];
    final result = await x1fbFirestore.st.readCollection(_pv.collProduct);

    for (var element in result.docs) {
      product.add(Products.fromMap(element.data()));
    }

    return product;
  }
}
