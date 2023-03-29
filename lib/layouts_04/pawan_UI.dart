import 'package:flutter/material.dart';

class Pawan_UIKit extends StatefulWidget {
  const Pawan_UIKit({Key? key}) : super(key: key);

  @override
  State<Pawan_UIKit> createState() => _Pawan_UIKitState();
}

class _Pawan_UIKitState extends State<Pawan_UIKit> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Expanded(
              child: Container(
                height: 300,
                decoration: BoxDecoration(
                  borderRadius:BorderRadius.only(bottomLeft: Radius.circular(100),bottomRight: Radius.circular(100)),
                  gradient: LinearGradient(colors: [Color(0xff334047), Colors.black])),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(Icons.arrow_back_rounded,size: 25,color: Colors.white,),
                          Column(mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                            Text("Hi, Pawan Kumar",style: TextStyle(fontSize: 20,color: Colors.white),textAlign: TextAlign.center,),
                            Text("Welcome to the Flutter UIKit",style: TextStyle(fontSize: 18,color: Colors.white),textAlign: TextAlign.center,)
                          ],),
                          Icon(Icons.more_vert_rounded,size: 25,color: Colors.white,)

                        ],
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20.0),
                      child: TextField(

                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          prefixIconColor: Colors.white,
                          suffixIconColor: Colors.white,
                          prefixIcon: Icon(Icons.search_rounded,size: 20),
                          hintText: "Find our product",
                          hintStyle: TextStyle(wordSpacing: 3,fontSize: 16),
                          suffixIcon: Icon(Icons.menu_rounded,size: 20,),
                          border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10)))


                        ),
                      ),
                    )
                  ],),
                ),
              ),
            ),
            Expanded(
              child: Container(
                height: 300,
                decoration: BoxDecoration(color: Colors.white),
              ),
            ),

          ],

        ),



      ),
    );
  }
}
