part of '_index.dart';

abstract class Data {
  static Injected<HomeData> get home => _homeData;
  static Injected<SampleSatuData> get sampleSatu => _sampleSatuData;
  static Injected<SampleDuaData> get sampleDua => _sampleDuaData;
  static Injected<SampleTigaData> get sampleTiga => _sampleTigaData;
  static Injected<ProductListData> get productList => _productListData;
  static Injected<ProductAddData> get productAdd => _productAddData;
  static Injected<ProductDetailData> get productDetail => _productDetailData;
  static Injected<ProductEditData> get productEdit => _productEditData;
  static Injected<LoginData> get login => _loginData;
  static Injected<RegisterData> get register => _registerData;
  static Injected<TryListData> get tryList => _tryListData;
  static Injected<TryAddData> get tryAdd => _tryAddData;
  static Injected<TryDetailData> get tryDetail => _tryDetailData;
  static Injected<TryEditData> get tryEdit => _tryEditData;
}

final _homeData = RM1.inj(HomeData(), Ctrl.home.init);

final _sampleSatuData = RM1.inj(SampleSatuData(), Ctrl.sampleSatu.init);
final _sampleDuaData = RM1.inj(SampleDuaData(), Ctrl.sampleDua.init);
final _sampleTigaData = RM1.inj(SampleTigaData(), Ctrl.sampleTiga.init);
final _productListData = RM1.inj(ProductListData(), Ctrl.productList.init);

final _productAddData = RM1.inj(ProductAddData(), Ctrl.productAdd.init);
final _productDetailData = RM1.inj(ProductDetailData(), Ctrl.productDetail.init);
final _productEditData = RM1.inj(ProductEditData(), Ctrl.productEdit.init);

final _loginData = RM1.inj(LoginData(), Ctrl.login.init);

final _registerData = RM1.inj(RegisterData(), Ctrl.register.init);

final _tryListData = RM1.inj(TryListData(), Ctrl.tryList.init);

final _tryAddData = RM1.inj(TryAddData(), Ctrl.tryAdd.init);

final _tryDetailData = RM1.inj(TryDetailData(), Ctrl.tryDetail.init);
final _tryEditData = RM1.inj(TryEditData(), Ctrl.tryEdit.init);
