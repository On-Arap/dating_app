import 'package:dating_app/repositories/storage/storage_repository.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class CustomImageContainer extends StatelessWidget {
  final String? imageUrl;

  const CustomImageContainer({
    super.key,
    this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0, right: 10.0),
      child: Container(
        height: 150,
        width: 100,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border(
              bottom: BorderSide(color: Theme.of(context).colorScheme.primary, width: 1),
              right: BorderSide(color: Theme.of(context).colorScheme.primary, width: 1),
              top: BorderSide(color: Theme.of(context).colorScheme.primary, width: 1),
              left: BorderSide(color: Theme.of(context).colorScheme.primary, width: 1),
            )),
        child: (imageUrl == null)
            ? Align(
                alignment: Alignment.bottomRight,
                child: IconButton(
                  onPressed: () async {
                    ImagePicker _picker = ImagePicker();
                    final XFile? _image = await _picker.pickImage(source: ImageSource.gallery);

                    // if (_image == null) {
                    //   ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('No image was selected.')));
                    // }

                    if (_image != null) {
                      print("Uploading ...");
                      StorageRepository().uploadImage(_image);
                    }
                  },
                  icon: Icon(
                    Icons.add_circle,
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                ),
              )
            : Image.network(
                imageUrl!,
                fit: BoxFit.cover,
              ),
      ),
    );
  }
}
