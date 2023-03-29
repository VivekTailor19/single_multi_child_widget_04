

import 'package:flutter/material.dart';
import 'package:single_multi_child_widget_04/layouts_04/file_explorer.dart';
import 'package:single_multi_child_widget_04/layouts_04/search_screen.dart';
import 'package:single_multi_child_widget_04/layouts_04/settings_UI.dart';

import 'homescreen.dart';
import 'layouts_04/pawan_UI.dart';
import 'layouts_04/pay_UI.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/" :(context) => HomeScreen(),
        "file_explorer" :(context) => File_Explorer(),
        "setting" : (context) => Settings_UI(),
        "search" :(context) => Search_Screen(),
        'pay':(context) => Pay_UI(),
        "pawanUI":(context) => Pawan_UIKit(),





      },
    ),
  );
}
