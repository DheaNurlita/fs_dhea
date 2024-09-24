part of '_index.dart';

class TryAddView extends StatelessWidget {
  const TryAddView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: TryAddAppbar(),
      ),
      floatingActionButton: TryAddFab(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TryAddCharlie(),
            TryAddDelta(),
            TryAddEcho(),
          ],
        ),
      ),
    );
  }
}
