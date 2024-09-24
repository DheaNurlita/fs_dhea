part of '../_index.dart';

class TryAddAppbar extends StatelessWidget {
  const TryAddAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: OnReactive(() => Text(_dt.rxTitle.st)),
    );
  }
}
