part of '_index.dart';

class ProductListView extends StatelessWidget {
  const ProductListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(56),
          child: ProductListAppbar(),
        ),
        floatingActionButton: const ProductListFab(),
        body: OnBuilder.all(
          listenToMany: [_dt.rxProductList, _dt.rxProductLoader],
          onWaiting: () => const Center(
            child: CircularProgressIndicator(),
          ),
          onError: (error, refreshError) => const Center(
            child: Text('error'),
          ),
          onData: (data) => Wrap(
            children: [
              ...List.generate(
                _dt.rxProductList.state.length,
                (index) => OnReactive(
                  () => SingleChildScrollView(
                      child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: InkWell(
                      onTap: () async {
                        _ct.selectedId(_dt.rxProductList.st[index].id);
                      },
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 120,
                            width: 120,
                            color: const Color.fromARGB(255, 255, 196, 217),
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(width: 40),
                              ],
                            ),
                          ),
                          Text(_dt.rxProductList.st[index].name),
                          Text('RP. ${_dt.rxProductList.st[index].price.toString()}'),
                          IconButton(
                            onPressed: () async {
                              final product = Products(
                                id: _dt.rxProductList.st[index].id,
                                name: generateWordPairs().take(2).join(''),
                                imageUrl: '',
                                description: generateWordPairs().take(5).join('   '),
                                price: Random().nextInt(100),
                                quantity: Random().nextInt(1000),
                                createdAt: DateTime.now().toString(),
                              );
                              await FirebaseFirestore.instance
                                  .collection('products')
                                  .doc(_dt.rxProductList.st[index].id)
                                  .update(product.toMap());

                              Prov.products.st.rxProductlist.setState((s) {
                                final result = Prov.products.st.rxProductlist.st.indexWhere(
                                  (element) => element.id == _dt.rxProductList.st[index].id,
                                );
                                return result;
                              });
                            },
                            icon: const Icon(Icons.edit),
                          ),
                        ],
                      ),
                    ),
                  )),
                ),
              )
            ],
          ),
        ));
  }
}
