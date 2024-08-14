part of '_index.dart';

class ProductEditView extends StatelessWidget {
  const ProductEditView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(56),
          child: ProductEditAppbar(),
        ),
        floatingActionButton: const ProductEditFab(),
        body: Center(
          child: Container(
            constraints: const BoxConstraints(maxWidth: 400),
            child: OnBuilder.all(
                listenTo: _dt.rxProductDetail,
                onWaiting: () => const Center(
                      child: CircularProgressIndicator(),
                    ),
                onError: (error, refreshError) => const Center(
                      child: Text('error'),
                    ),
                onData: (data) => const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        AddNameProduct(),
                        SizedBox(height: 20),
                        AddDescription(),
                        SizedBox(height: 20),
                        AddQuantity(),
                        SizedBox(height: 20),
                        AddPrice(),
                        SizedBox(height: 20),
                        ProductSubmit(),
                      ],
                    )
                // OnFormBuilder(
                //   listenTo: _dt.rxProductDetail,
                //   builder: () => const
                //   ),
                // ),
                ),
          ),
        ));
  }
}
