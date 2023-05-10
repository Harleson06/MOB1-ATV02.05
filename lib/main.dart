import 'package:flutter/material.dart';
import 'HomeScreen.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

void main() {
  runApp(MaterialApp(

    debugShowCheckedModeBanner: false,
    home: HomeScreen(),
    builder: EasyLoading.init(),
  ));
}
