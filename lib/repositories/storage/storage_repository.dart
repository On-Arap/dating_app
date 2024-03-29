import 'package:dating_app/repositories/database/database_repository.dart';
import 'package:dating_app/repositories/storage/base_storage_repository.dart';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class StorageRepository extends BaseStorageRepository {
  final firebase_storage.FirebaseStorage storage = firebase_storage.FirebaseStorage.instance;

  @override
  Future<void> uploadImage(XFile image) async {
    try {
      await storage
          .ref('user_1/${image.name}')
          .putFile(
            File(image.path),
          )
          .then(
            (p0) => DatabaseRepository().updateUserPictures(image.name),
          );
    } catch (e) {}
  }

  @override
  Future<String> getDownloadUrl(String imageName) async {
    String downloadUrl = await storage.ref('user_1/$imageName').getDownloadURL();
    return downloadUrl;
  }
}
