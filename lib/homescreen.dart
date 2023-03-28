import 'dart:io';

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "04--Single-Multi-Child-Widget",
            style: TextStyle(fontSize: 15),
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            InkWell(
                onTap: () {
                  Navigator.pushNamed(context, "file_explorer");
                },
                child: Select(name: "FileExplorer")),
          ],
        ),
      ),
    );
  }

  Widget Select({String? name, String? img}) {
    return Column(children: [
      ClipOval(
          child: Image(
        image: AssetImage("$img"),
        height: 50,
        width: 50,
      )),
      Text(
        "$name",
        style: TextStyle(fontSize: 15),
      ),
    ]);
  }
}
