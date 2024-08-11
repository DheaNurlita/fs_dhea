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

  //*----------------------------------------------------------------------------

  initProduct() async {
    // await Future.delayed(Duration.zero);
    _pv.rxProductLoader.stateAsync = readProduct();
  }

  //*----------------------------------------------------------------------------

  Future<List<Products>> readProduct() async {
    return await _rp.readProduct();
  }

//*----------------------------------------------------------------------------

  addToList(List<Products> moreProduct) async {
    _pv.rxProductlist.st = [..._pv.rxProductlist.st, ...moreProduct];
  }

//*----------------------------------------------------------------------------

  createDoc(Products product) async {
    await _rp.createDocument(product);
  }

//*----------------------------------------------------------------------------

  chooseSelectedId(String id) async {
    // _pv.rxSelected.refresh();
    _pv.rxSelected.setState(
      (s) => id,
    );
  }

  //*----------------------------------------------------------------------------

  initProductDetail() {
    _pv.rxProductDetail.stateAsync = _rp.readDocDetail(_pv.rxSelected.st);
  }

  //*----------------------------------------------------------------------------

  delete() {
    _rp.deleteProduct(_pv.rxSelected.st);
    _pv.rxProductlist.st = [..._pv.rxProductlist.st]..removeWhere((element) => element.id == _pv.rxSelected.st);
  }

  //*----------------------------------------------------------------------------

  Future updateProduct(Products product) async {
    await _rp.updateDoc(product);
    Prov.products.st.rxProductlist.setState((s) {
      final result = _pv.rxProductlist.st.indexWhere(
        (element) => element.id == _pv.rxSelected.st,
      );
      return s[result] = product;
    });
  }
}
