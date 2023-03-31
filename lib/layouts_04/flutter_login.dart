import 'package:flutter/material.dart';

class Flutter_UI extends StatefulWidget {
  const Flutter_UI({Key? key}) : super(key: key);

  @override
  State<Flutter_UI> createState() => _Flutter_UIState();
}

class _Flutter_UIState extends State<Flutter_UI> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FlutterLogo(size: 150,style: FlutterLogoStyle.markOnly,),
              SizedBox(height: 30),
              Text(
                "Welcome to Flutter UIKit",
                style:
                    TextStyle(color: Colors.green, fontSize: 20, wordSpacing: 3),
              ),
              Text(
                "Sign in to continue",
                style: TextStyle(
                    color: Colors.black26, fontSize: 16, wordSpacing: 3),
              ),
              SizedBox(height: 30),

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  TextField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      hintText: "Username",
                      hintStyle: TextStyle(fontSize: 20,color: Colors.black45),
                      enabled: true,
                      enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.black)),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.black))),
                  ),
                  SizedBox(height: 15),
                  TextField(
                    obscureText: true,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                        hintText: "Password",
                        hintStyle: TextStyle(fontSize: 20,color: Colors.black45),
                        enabled: true,
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.black)),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.black))),
                  ),
                ],
              ),
              SizedBox(height: 30),
              Container(
                height: 64,
                width: double.infinity,
                alignment: Alignment.center,
                child: Text("SIGN IN",style: TextStyle(color: Colors.white,fontSize: 20),),
                decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.horizontal(left: Radius.circular(32),right: Radius.circular(32)),

              ),
              ),
              SizedBox(height:15),
              Text("SIGN UP FOR AN ACCOUNT",style: TextStyle(fontSize: 18,color: Colors.black45),)
              

            ],
          ),
        ),
      ),
    );
  }
}
