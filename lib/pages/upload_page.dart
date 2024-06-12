import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';


class UploadPage extends StatelessWidget {
  const UploadPage({Key? key}) : super(key: key);

  Future<void> _openFileExplorer(BuildContext context) async {
    final result = await FilePicker.platform.pickFiles();
    if (result != null) {
      PlatformFile file = result.files.first;
      // 这里可以处理选定的文件，例如上传到服务器
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Selected file: ${file.name}')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Upload Page'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () => _openFileExplorer(context),
          child: const Text('Choose File'),
        ),
      ),
    );
  }
}
