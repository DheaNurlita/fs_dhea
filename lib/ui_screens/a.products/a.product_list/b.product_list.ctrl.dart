part of '_index.dart';

class ProductListCtrl {
  init() => logxx.i(ProductListCtrl, '...');

  increaseCounter() => _dt.rxCounter.setState((s) => s + 1);

  updateRandom() => Serv.sample.updateRandom();

  // readCollection() async {
  //   final result = await FirebaseFirestore.instance.collection('products').get();
  //   for (var element in result.docs) {
  //     logx.i(element.id);
  //   }

  //   // logx.i(result.data().toString());
  //   // logx.i(result.toString());
  // }

  // readCollection() async {
  //   final result = await FirebaseFirestore.instance.collection('products').get();

  //   for (var element in result.docs) {
  //     logx.i(element.id);
  //   }
  // }

  selectedId(String id) {
    Serv.products.chooseSelectedId(id);
    nav.to(Routes.productDetail);
  }
}
