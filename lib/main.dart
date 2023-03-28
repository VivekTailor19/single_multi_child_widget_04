

import 'package:flutter/material.dart';
import 'package:single_multi_child_widget_04/layouts_04/file_explorer.dart';

import 'homescreen.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/" :(context) => HomeScreen(),
        "file_explorer" :(context) => File_Explorer(),


      },
    ),
  );
}
