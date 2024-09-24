part of '_index.dart';

class TryAddData {
  final rxTitle = 'Try Add'.inj();

  final rxCounter = 0.inj();

  final rxRandom = Prov.sample.st.rxRandom;
}
