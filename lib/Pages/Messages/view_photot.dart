import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

class ViewPhoto extends StatelessWidget {
  final String? url;
  ViewPhoto({this.url});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('View Photo'),
      ),
      body: Center(
        child: PhotoView(
          imageProvider: AssetImage(url.toString()),
        ),
      ),
    );
  }
}
