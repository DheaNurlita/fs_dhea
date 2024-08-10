part of '_index.dart';

class ProductsServ {
  void init() {
    logxx.i(ProductsServ, '...');
  }

  void updateRandom() {
    _pv.rxRandom.st = _rp.giveNewRandom();
  }

  void onSetState() {
    logzz.i(ProductsServ, 'rxCounter setState success');
  }

  initProduct() async {
    _pv.rxProductLoader.stateAsync = _rp.readProduct();
  }

  addToList(List<Products> moreProduct) async {
    _pv.rxProductlist.st = [..._pv.rxProductlist.st, ...moreProduct];
  }

  createDoc(Products product) async {
    await _rp.createDocument(product);
  }

  initProductState() async {
    _pv.rxProductDetail.stateAsync = _rp.readDocDetail(_pv.rxSelected.st);
  }

  chooseSelectedId(String id) async {
    _pv.rxSelected.refresh();
    _pv.rxSelected.setState(
      (s) => id,
    );
  }
}
