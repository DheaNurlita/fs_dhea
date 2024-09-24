part of '../_index.dart';

class TryDetailAppbar extends StatelessWidget {
  const TryDetailAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: OnReactive(() => Text(_dt.rxTitle.st)),
    );
  }
}
