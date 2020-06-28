import 'dart:html';
import 'dart:convert';
import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:http_parser/http_parser.dart';
import 'package:uuid/uuid.dart';
import 'package:wordcloud_web_app/views/wordCloudResult.dart';

var uuid = Uuid();
InputElement uploadInput = FileUploadInputElement();
var host = "https://wordcloud-api-ddarvbmg3q-uc.a.run.app";

void uploadFile(context) async {
  uploadInput.draggable = true;
  uploadInput.click();
  uploadInput.onChange.listen((e) {
    // read file content as dataURL
    final files = uploadInput.files;
    final reader = new FileReader();

    if (files.length == 1) {
      final file = files[0];
      var fileId = uuid.v4();

      reader.onLoad.listen((e) {
        sendFile(reader.result, fileId);
        openNextPage(fileId, context);
      });

      reader.readAsDataUrl(file);
    }
  });
}

sendFile(file, fileId) {
  var url = Uri.parse(host + "/upload");
  var request = new http.MultipartRequest("POST", url);
  Uint8List _bytesData =
      Base64Decoder().convert(file.toString().split(",").last);
  List<int> _selectedFile = _bytesData;

  request.files.add(http.MultipartFile.fromBytes('file', _selectedFile,
      contentType: new MediaType('application', 'octet-stream'),
      filename: fileId));

  request.send().then((response) {
    print(response.statusCode);
    if (response.statusCode == 200) return "ok";
  });
}

openNextPage(fileId, context) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => ResultView(imageId: fileId)),
  );
}

downloadImage(id) {
  final String url = host + '/download?fileName=';
  return Image.network(url + id);
}
