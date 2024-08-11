// part of '../dt_sources/_index.dart';
part of '_index.dart';

final x1fbFirestore = RM.inject(
  () => FbFireStore(),
  debugPrintWhenNotifiedPreMessage: '',
);

class FbFireStore {
  //*---------------------------------READ COLLECTION--------------------------

  Future<QuerySnapshot<Map<String, dynamic>>> readCollection(String collProduct) async {
    final result = await FirebaseFirestore.instance.collection(collProduct).get();

    return result;
  }

  //*---------------------------------CREATE DOCUMENT--------------------------

  Future<void> createDocument(String collProduct, String doc, Map<String, dynamic> data) async {
    await FirebaseFirestore.instance.collection(collProduct).doc(doc).set(data);
  }

  //*---------------------------------READ DOCUMENT--------------------------

  Future<DocumentSnapshot<Map<String, dynamic>>> readDocument(String collProduct, String docId) async {
    final result = await FirebaseFirestore.instance.collection(collProduct).doc(docId).get();

    return result;
  }

  //*---------------------------------DELETE DOCUMENT--------------------------

  Future deleteDoc(String collProduct, String docId) async {
    await FirebaseFirestore.instance.collection(collProduct).doc(docId).delete();
    nav.to(Routes.productList);
  }

  Future updateProduct(String collProduct, String doc, Map<String, dynamic> data) async {
    await FirebaseFirestore.instance.collection(collProduct).doc(doc).set(data);
  }
}
