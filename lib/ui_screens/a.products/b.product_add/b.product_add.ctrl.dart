part of '_index.dart';

class ProductAddCtrl {
  init() => logxx.i(ProductAddCtrl, '...');

  increaseCounter() => _dt.rxCounter.setState((s) => s + 1);

  updateRandom() => Serv.sample.updateRandom();

  Future<void> createDoc() async {
    final id = const Uuid().v4();
    final name = generateWordPairs().take(4).join(' ');
    final description = generateWordPairs().take(9).join('    ');

    final product = Products(
        id: id,
        name: name,
        description: description,
        createdAt: DateTime.now().toString(),
        price: Random().nextInt(100),
        quantity: Random().nextInt(1000));
    await FirebaseFirestore.instance.collection('products').doc().set(product.toMap());

    Serv.products.createDoc(product);
    _dt.rxProductList.st = [..._dt.rxProductList.st]..insert(0, product);
    nav.back();
  }
}
