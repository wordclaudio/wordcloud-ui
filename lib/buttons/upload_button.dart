import 'package:flutter/material.dart';
import 'package:wordcloud_web_app/requests/requests.dart';

class UploadButton extends StatelessWidget {
  const UploadButton({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        child:
            Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
          Icon(
            Icons.cloud_upload,
            size: 30,
            color: Colors.green,
            textDirection: TextDirection.rtl,
          ),
          Text(
            " Faça o Upload ",
            style: TextStyle(fontSize: 18),
          ),
        ]),
        onTap: () {
          uploadFile(context);
        });
  }
}
