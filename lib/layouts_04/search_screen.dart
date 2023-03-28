import 'package:flutter/material.dart';

class Search_Screen extends StatefulWidget {
  const Search_Screen({Key? key}) : super(key: key);

  @override
  State<Search_Screen> createState() => _Search_ScreenState();
}

class _Search_ScreenState extends State<Search_Screen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor:Colors.black,
          title: Text("Search",style: TextStyle(fontSize: 25,color: Colors.white)),

        actions: [
          Icon(Icons.search_rounded,size: 20,color: Colors.white,),
          Icon(Icons.more_vert_rounded,size: 20,color: Colors.white,)
        ],),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(alignment: Alignment.center,child: Icon(Icons.search_rounded,size: 75,color: Colors.black,)),
            SizedBox(height: 15),
            Text("No Result",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
            Text("Try a more general keyword.",style: TextStyle(fontSize: 20),),

          ],
        ),
      ),
    );
  }
}
