part of '_index.dart';

final x1storage = RM.inject(
  () => FbStorage(),
  debugPrintWhenNotifiedPreMessage: '',
);

class FbStorage {
  Future<String> uploadStorage({required XFile? pickedFile, required String ref}) async {
    String imageUrl = '';
    if (pickedFile != null) {
      final readAsByte = await pickedFile.readAsBytes();
      final snapShot = await FirebaseStorage.instance
          .ref(ref)
          .putData(readAsByte, SettableMetadata(contentType: pickedFile.mimeType));
      imageUrl = await snapShot.ref.getDownloadURL();
    }
    return imageUrl;
  }

  Future<void> deleteImage(String ref) async {
    await FirebaseStorage.instance.ref(ref).delete();
  }
}
