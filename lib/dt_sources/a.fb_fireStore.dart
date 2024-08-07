part of '_index.dart';

final x1fbFirestore = RM.inject(
  () => FbFireStore(),
  debugPrintWhenNotifiedPreMessage: '',
);

class FbFireStore {
  Future<QuerySnapshot<Map<String, dynamic>>> read(String collProduct) async {
    final result = await FirebaseFirestore.instance.collection(collProduct).get();

    return result;
  }

  Future<void> createDocument(String collProduct, String doc, Map<String, dynamic> data) async {
    await FirebaseFirestore.instance.collection(collProduct).doc(doc).set(data);
  }
}
