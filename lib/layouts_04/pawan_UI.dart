import 'package:flutter/material.dart';

class Pawan_UIKit extends StatefulWidget {
  const Pawan_UIKit({Key? key}) : super(key: key);

  @override
  State<Pawan_UIKit> createState() => _Pawan_UIKitState();
}

class _Pawan_UIKitState extends State<Pawan_UIKit> {

  List<PawanUI_Modal> pawan = [
    PawanUI_Modal(icon: Icon(Icons.person,size: 15,color: Colors.white),title: "Friends",color: Colors.blue,buttonshade: false),
    PawanUI_Modal(icon: Icon(Icons.group,size: 15,color: Colors.white),title: "Groups",color: Colors.orangeAccent,buttonshade: false),
    PawanUI_Modal(icon: Icon(Icons.location_on,size: 15,color: Colors.white),title: "Nearby",color: Colors.purple,buttonshade: false),
    PawanUI_Modal(icon: Icon(Icons.airplanemode_active,size: 15,color: Colors.white),title: "Moment",color: Colors.deepPurple,buttonshade: false),
    PawanUI_Modal(icon: Icon(Icons.photo_library_rounded,size: 15,color: Colors.white),title: "Albums",color: Colors.redAccent,buttonshade: true),
    PawanUI_Modal(icon: Icon(Icons.favorite,size: 15,color: Colors.white),title: "Likes",color: Colors.teal,buttonshade: false),
    PawanUI_Modal(icon: Icon(Icons.article_rounded,size: 15,color: Colors.white),title: "Articles",color: Colors.lightGreenAccent,buttonshade: false),
    PawanUI_Modal(icon: Icon(Icons.messenger,size: 15,color: Colors.white),title: "Reviews",color: Colors.amberAccent,buttonshade: true),
    PawanUI_Modal(icon: Icon(Icons.sports_football,size: 15,color: Colors.white),title: "Sports",color: Colors.lightBlueAccent,buttonshade: false),
    PawanUI_Modal(icon: Icon(Icons.star_rounded,size: 15,color: Colors.white),title: "Fav",color: Colors.red,buttonshade: false),
    PawanUI_Modal(icon: Icon(Icons.file_present_rounded,size: 15,color: Colors.white),title: "Blogs",color: Colors.pink,buttonshade: false),
    PawanUI_Modal(icon: Icon(Icons.account_balance_wallet_rounded,size: 15,color: Colors.white),title: "Wallet",color: Colors.brown,buttonshade: false),

  ];


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Expanded(
              child: Container(
                height: 900,
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
                    ),


                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10.0),
                      child: Container(
                        height: 300,
                        width: 300,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                          boxShadow: [BoxShadow(color: Colors.black12,blurStyle: BlurStyle.outer,
                              offset: Offset(0,3)),],

                        ),

                        child: Expanded(
                          child: GridView.builder(
                            itemCount: pawan.length,
                            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 4,
                                crossAxisSpacing: 10,
                                mainAxisSpacing: 10
                            ),
                            itemBuilder: (context, index) {
                              return Button(pawan[index]);
                            },
                          ),
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10.0),
                      child: Container(

                        height: 80,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                          boxShadow: [BoxShadow(color: Colors.black12,blurStyle: BlurStyle.outer,
                              offset: Offset(0,3)),],
                        ),

                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 10.0),
                              child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Balance",style: TextStyle(fontSize: 14),),
                                  Text("₹ 1000",style: TextStyle(fontSize: 20,color: Colors.green,fontWeight: FontWeight.bold),),
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.all(15),

                              alignment: Alignment.topRight,
                              child: TextButton(onPressed: () {},
                                child: Text("500 Points",style: TextStyle(color: Colors.white),),
                                style: TextButton.styleFrom(backgroundColor: Colors.black,),

                              ),
                            )

                          ],
                        ),),
                    )
                  ],),
                ),
              ),
            ),





          ],

        ),



      ),
    );
  }

  Widget Button(PawanUI_Modal pm)
  {
    return Container(
      color: pm.buttonshade == true ? Colors.black26 : null,
      child: Column(mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children:[
            Container(
              height: 40,
              width: 40,
              child: pm.icon,
              decoration: BoxDecoration(color: pm.color,shape: BoxShape.circle,),
            ),
            Text("${pm.title}",style: TextStyle(fontSize: 12),)
          ]
      ),
    );
  }
}


class PawanUI_Modal
{
  String? title;
  Icon? icon;
  Color? color;
  bool? buttonshade;

  PawanUI_Modal({this.title,this.icon,this.color,this.buttonshade});
}