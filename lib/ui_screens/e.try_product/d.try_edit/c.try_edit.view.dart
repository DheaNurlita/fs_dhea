part of '_index.dart';

class TryEditView extends StatelessWidget {
  const TryEditView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: TryEditAppbar(),
      ),
      floatingActionButton: TryEditFab(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TryEditCharlie(),
            TryEditDelta(),
            TryEditEcho(),
          ],
        ),
      ),
    );
  }
}
