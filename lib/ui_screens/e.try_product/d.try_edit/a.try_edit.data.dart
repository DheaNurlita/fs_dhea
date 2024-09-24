part of '_index.dart';

class TryEditData {
  final rxTitle = 'Try Edit'.inj();

  final rxCounter = 0.inj();

  final rxRandom = Prov.sample.st.rxRandom;
}
