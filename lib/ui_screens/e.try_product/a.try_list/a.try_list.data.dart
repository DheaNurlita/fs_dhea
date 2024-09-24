part of '_index.dart';

class TryListData {
  final rxTitle = 'Try List'.inj();

  final rxCounter = 0.inj();

  final rxRandom = Prov.sample.st.rxRandom;
}
