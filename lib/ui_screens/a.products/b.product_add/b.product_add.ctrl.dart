part of '_index.dart';

class ProductAddCtrl {
  init() => logxx.i(ProductAddCtrl, '...');

  increaseCounter() => _dt.rxCounter.setState((s) => s + 1);

  updateRandom() => Serv.sample.updateRandom();

  Future<void> createDoc() async {
    final id = const Uuid().v4();

    final product = Products(
      id: id,
      name: _dt.rxName.value,
      description: _dt.rxDescription.value,
      createdAt: DateTime.now().toString(),
      price: int.parse(_dt.rxPrice.value),
      quantity: int.parse(_dt.rxQuantity.value),
      imageUrl: "",
    );

    final imageUrl = await Serv.products.uploadImage(_dt.rxPickedFile.state, id);
    final productWithImage = product.copyWith(imageUrl: imageUrl);
    await Serv.products.createDoc(productWithImage);

    _dt.rxProductList.st = [..._dt.rxProductList.st]..insert(0, product);
    nav.back();
  }

  submit() {
    _dt.rxForm.submit();
  }

  pickedImage() async {
    final imagePicker = await ImagePicker().pickImage(source: ImageSource.gallery);

    _dt.rxPickedFile.st = imagePicker;
  }
}
