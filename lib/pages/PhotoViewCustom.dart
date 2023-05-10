import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

class PhotoViewCustom extends StatelessWidget {
  const PhotoViewCustom({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container(
        child: PhotoView(
          imageProvider: AssetImage("images/piece.jpg"),
        )
    );
  }
}