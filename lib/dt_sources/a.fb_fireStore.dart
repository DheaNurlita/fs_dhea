part of '_index.dart';

final x1fbFirestore = RM.inject(
  () => FbFireStore(),
  debugPrintWhenNotifiedPreMessage: '',
);

class FbFireStore {
  Future<QuerySnapshot<Map<String, dynamic>>> readCollection(String collProduct) async {
    final result = await FirebaseFirestore.instance.collection(collProduct).get();
    return result;
  }
}
