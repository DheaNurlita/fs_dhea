part of '_index.dart';

class ProductEditCtrl {
  init() => logxx.i(ProductEditCtrl, '...');

  increaseCounter() => _dt.rxCounter.setState((s) => s + 1);

  updateRandom() => Serv.sample.updateRandom();

  editProduct() async {
    final product = Products(
      id: _dt.rxProductDetail.st!.id,
      name: _dt.rxName.value,
      imageUrl: '',
      description: _dt.rxDescription.value,
      price: int.parse(_dt.rxPrice.value),
      quantity: int.parse(_dt.rxQuantity.value),
      createdAt: _dt.rxProductDetail.st!.createdAt,
    );

    Serv.products.updateProduct(product);

    // await FirebaseFirestore.instance.collection('products').doc(_dt.rxProductList.st[index].id).update(product.toMap());

    // Prov.products.st.rxProductlist.setState((s) {
    //   final result = Prov.products.st.rxProductlist.st.indexWhere(
    //     (element) => element.id == _dt.rxProductList.st[index].id,
    //   );
    //   return result;
    // });
  }

  submitedit() => _dt.rxForm.submit();
}
