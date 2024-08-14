part of '../_index.dart';

class ProductDetailAppbar extends StatelessWidget {
  const ProductDetailAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: OnReactive(() => Text(_dt.rxTitle.st)),
      actions: [
        IconButton(
          onPressed: () async {
            _ct.delete();
            // await FirebaseFirestore.instance.collection('products').doc(_dt.rxSelectedId.st).delete();

            nav.to(Routes.productList);
          },
          icon: const Icon(Icons.delete),
        ),
      ],
    );
  }
}
