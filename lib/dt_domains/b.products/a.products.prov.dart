part of '_index.dart';

class ProductsProv {
  final rxRandom = RM.inject<int>(
    () => 0,
    autoDisposeWhenNotUsed: false,
    sideEffects: SideEffects(
      onSetState: (p0) => _sv.onSetState(),
    ),
  );

  final collProduct = 'products';

  final rxProductlist = RM.inject<List<Products>>(
    () => [],
  );

  final rxProductLoader = RM.injectFuture<List<Products>>(
    () => Future.value([]),
    sideEffects: SideEffects(
      initState: () => _sv.initProduct(),
      onSetState: (snap) {
        if (snap.hasData) {
          final moreProductdua = snap.data;
          _sv.addToList(moreProductdua!);
        }
      },
    ),
  );

  final rxSelected = RM.inject(
    () => '',
  );

  final rxProductDetail = RM.injectFuture<Products?>(() => Future.value(null),
      sideEffects: SideEffects(
        initState: () => _sv.initProductDetail(),
      ));
}
