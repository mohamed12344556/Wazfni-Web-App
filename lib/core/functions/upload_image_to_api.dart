import 'dart:io';

import 'package:dio/dio.dart';

//! Upload image to api function and Don't forget to await it
Future UploadImageToApi(File image) async {
  return MultipartFile.fromFile(image.path,
      filename: image.path.split('/').last);
}
