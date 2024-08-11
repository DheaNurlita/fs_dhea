part of '_index.dart';

class ProductDetailView extends StatelessWidget {
  const ProductDetailView({super.key});

  // get onData => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(56),
          child: ProductDetailAppbar(),
        ),
        floatingActionButton: const ProductDetailFab(),
        body: OnBuilder.all(
          listenTo: _dt.rxProductDetail,
          onWaiting: () => const Center(
            child: CircularProgressIndicator(),
          ),
          onError: (error, refreshError) => const Center(
            child: Text('Error'),
          ),
          onData: (data) => Center(
            child: Column(
              children: [
                Container(
                  height: 200,
                  width: double.infinity,
                  color: Colors.pink.shade100,
                  child: Center(
                      child: Text(
                    '${data?.name}',
                    style: const TextStyle(fontSize: 25, color: Colors.black),
                  )),
                ),
                const SizedBox(height: 40),
                Text('${data?.description}'),
                const SizedBox(height: 20),
                Text('Harga : ${data?.price}'),
                const SizedBox(height: 20),
                Text('Stok : ${data?.quantity}'),
              ],
            ),
          ),
        ));
  }
}
