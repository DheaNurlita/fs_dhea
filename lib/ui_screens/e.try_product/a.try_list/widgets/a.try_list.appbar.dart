part of '../_index.dart';

class TryListAppbar extends StatelessWidget {
  const TryListAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: OnReactive(() => Text(_dt.rxTitle.st)),
    );
  }
}
