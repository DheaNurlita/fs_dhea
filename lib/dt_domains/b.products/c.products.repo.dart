part of '_index.dart';

class ProductsRepo {
  int giveNewRandom() {
    final x = Random().nextInt(100);
    logz.s('random value coming from ProductsRepo');
    return x;
  }

  // Future<List<Products>> readProduct() async {
  //   List<Products> product = [];
  //   final result = await x1fbFirestore.st.readCollection(_pv.collProduct);

  //   for (var element in result.docs) {
  //     product.add(Products.fromMap(element.data()));
  //   }

  //   return product;
  // }

  Future<List<Products>> readProduct() async {
    List<Products> product = [];
    final result = await x1fbFirestore.st.readCollection(_pv.collProduct);

    for (var element in result.docs) {
      product.add(
        Products.fromMap(
          element.data(),
        ),
      );
    }
    return product;
  }

  Future createDocument(Products product) async {
    await x1fbFirestore.st.createDocument(
      _pv.collProduct,
      product.id,
      product.toMap(),
    );
  }

  Future<Products> readDocDetail(String docId) async {
    final result = await x1fbFirestore.st.readDocument(_pv.collProduct, docId);
    // final productResult = Products.fromMap(result.data());

    return Products.fromMap(result.data() ?? {});
  }

  Future deleteProduct(String docId) async {
    await x1fbFirestore.st.deleteDoc(_pv.collProduct, docId);
  }

  Future updateDoc(Products product) async {
    await x1fbFirestore.st.updateProduct(
      _pv.collProduct,
      product.id,
      product.toMap(),
    );
  }

  //*--------------------------------------------------------------------------
  Future uploadImage(XFile? pickedImage, String refFolder) async {
    final result = await x1storage.st.uploadStorage(
      pickedFile: pickedImage,
      ref: '${_pv.collProduct}/$refFolder',
    );
    return result;
  }

  //*--------------------------------------------------------------------------

  Future deleteImage() async {
    await x1storage.st.deleteImage('${_pv.collProduct}/${_pv.rxSelected.st}');
  }
}
