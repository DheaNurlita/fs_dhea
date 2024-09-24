part of '../_index.dart';

class TryAddCharlie extends StatelessWidget {
  const TryAddCharlie({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(Random().nextInt(100).toString()),
        OnReactive(() => Text('${_dt.rxCounter.st}')),
        OnReactive(() => Text('${_dt.rxRandom.st}')),
      ],
    );
  }
}
