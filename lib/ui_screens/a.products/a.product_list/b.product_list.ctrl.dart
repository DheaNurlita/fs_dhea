part of '_index.dart';

class ProductListCtrl {
  init() => logxx.i(ProductListCtrl, '...');

  increaseCounter() => _dt.rxCounter.setState((s) => s + 1);

  updateRandom() => Serv.sample.updateRandom();

  selectedId(String id) {
    Serv.products.chooseSelectedId(id);
    logx.i(_dt.selectedId.st);
    nav.to(Routes.productDetail);
  }
}
