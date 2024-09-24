part of '_index.dart';

class TryListView extends StatelessWidget {
  const TryListView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: TryListAppbar(),
      ),
      floatingActionButton: TryListFab(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TryListCharlie(),
            TryListDelta(),
            TryListEcho(),
          ],
        ),
      ),
    );
  }
}
