import 'package:flutter/material.dart';

class Food_SignUP extends StatefulWidget {
  const Food_SignUP({Key? key}) : super(key: key);

  @override
  State<Food_SignUP> createState() => _Food_SignUPState();
}

class _Food_SignUPState extends State<Food_SignUP> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/wooden.jpg"),
                fit: BoxFit.fill,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,

              children: [
                Image.asset("assets/images/spoon.png",width: 180,height: 180,fit: BoxFit.fill),
                SizedBox(height: 40),
                Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  Container(
                      height: 90,width: 30,
                      alignment: Alignment.topCenter,
                      child: Icon(Icons.person,size: 25,color: Colors.white),),
                  SizedBox(width: 15),
                  Container( height: 90,width: 300,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Enter Email",style: TextStyle(fontSize: 22,color: Colors.white,wordSpacing: 3),),
                        TextField(
                          textAlign: TextAlign.left,
                          style: TextStyle(fontSize: 18,color: Colors.white),
                          showCursor: true,
                          cursorColor: Colors.white,
                          decoration: InputDecoration(
                            enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white,width: 2)),
                            focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white,width: 2)),
                          ),
                        ),

                      ],
                    ),
                  )
                ],),
                SizedBox(height: 15),
                Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 90,width: 30,
                      alignment: Alignment.topCenter,
                      child: Icon(Icons.lock_outline_rounded,size: 25,color: Colors.white),),
                    SizedBox(width: 15),
                    Container( height: 90,width: 300,
                      child: Column(

                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Enter Password",style: TextStyle(fontSize: 22,color: Colors.white,wordSpacing: 3),),
                          TextField(
                            textAlign: TextAlign.left,
                            style: TextStyle(fontSize: 18,color: Colors.white),
                            showCursor: true,
                            cursorColor: Colors.white,
                            decoration: InputDecoration(
                              enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white,width: 2)),
                              focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white,width: 2)),
                            ),


                          ),

                        ],
                      ),
                    )
                  ],),
                Container(
                  height: 60,
                  width: 300,
                  alignment: Alignment.center,
                  child: Text("Sign In",style: TextStyle(fontSize: 25,color: Colors.white),),
                  decoration: BoxDecoration(color: Colors.pinkAccent,
                      borderRadius: BorderRadius.horizontal(left: Radius.circular(30),right: Radius.circular(30))),
                ),
                SizedBox(height: 60),
                Text("Don't have an account? Sign Up",style: TextStyle(color: Colors.white,fontSize: 15),)



              ],
            ),

          ),
        ),


      ),
    );
  }
}
