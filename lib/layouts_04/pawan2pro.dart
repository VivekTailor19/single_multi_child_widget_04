import 'package:flutter/material.dart';

class Pawan2UI extends StatefulWidget {
  const Pawan2UI({Key? key}) : super(key: key);

  @override
  State<Pawan2UI> createState() => _Pawan2UIState();
}

class _Pawan2UIState extends State<Pawan2UI> {

  List<Data> data = [
    Data(title: "Posts",number: "1.5 K"),
    Data(title: "Followers",number: "2.5 K"),
    Data(title: "Comments",number: "10 K"),
    Data(title: "Following",number: "1.2 K"),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(onPressed: () {},
        child: Icon(Icons.person_add,size: 25,color: Colors.white),backgroundColor: Colors.black87),
        appBar: AppBar(backgroundColor: Colors.black,
          leading: Icon(Icons.menu_rounded,size: 25,color: Colors.white),
          title: Text("View Profile",style: TextStyle(fontSize: 20,wordSpacing: 3),),
          actions: [
            Icon(Icons.search_rounded,size: 25,color: Colors.white),
            SizedBox(width: 20),
            Icon(Icons.more_vert_rounded,size: 25,color: Colors.white),
          ],
          elevation: 10,

        ),
        body: Center(
          child: Column(
            children: [
              Text("Pawan Kumar",style: TextStyle(fontSize: 30)),
              Text("Developer",style: TextStyle(fontSize: 25,color: Colors.black54)),

              Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.message,size: 25),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Container(height: 85,width: 85,
                    alignment: Alignment.center,
                    child: CircleAvatar(backgroundImage: NetworkImage("https://www.halcyonhouse.org/wp-content/uploads/2021/12/6.-Pirl-Technology-Kobby-Osei-800x800-1643148846.png"),
                        radius: 40),
                    decoration: BoxDecoration(shape: BoxShape.circle,color: Colors.black,),),
                  ),
                  Icon(Icons.call,size: 25),
                ],),

              Divider(color: Colors.black12,thickness: 1),

              SizedBox(height: 20),
              Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: data.asMap().entries.map((e) => Box(data[e.key])).toList()
                  ),
              SizedBox(height: 20),

              Divider(color: Colors.black12,thickness: 1),


              SizedBox(height: 20),
              Text("Google Developer Expert for Flutter.",textAlign: TextAlign.center, style: TextStyle(fontSize: 15,wordSpacing: 2.5)),
              Text("Passionate #Flutter, #Android Developer.",textAlign: TextAlign.center,style: TextStyle(fontSize: 15,wordSpacing: 2.5)),
              Text("#Entrepreneur #YouTuber",textAlign: TextAlign.center,style: TextStyle(fontSize: 15,wordSpacing: 2.5)),
              SizedBox(height: 20),

              Divider(color: Colors.black12,thickness: 1),

              SizedBox(height: 20),
              
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                  Container(height: 60,width: 150,
                    alignment: Alignment.center,
                    child:Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Website",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                        Text("about.me/imthepk",style: TextStyle(fontSize: 12)),

                      ],
                    )

                  ),
                  Container(height: 60,width: 150,
                  alignment: Alignment.center,
                  child:Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Location",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                      Text("New Delhi",style: TextStyle(fontSize: 12)),

                    ],
                  )

                ),
              ],),
              SizedBox(height: 10),
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                  Container(height: 60,width: 150,
                    alignment: Alignment.center,
                    child:Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Phone",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                        Text("+919876543210",style: TextStyle(fontSize: 12)),

                      ],
                    )

                  ),
                  Container(height: 60,width: 150,
                  alignment: Alignment.center,
                  child:Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Email",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                      Text("mtechviral@gmail.com",style: TextStyle(fontSize: 12)),

                    ],
                  )

                ),
              ],),
              SizedBox(height: 10),
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(height: 60,width: 150,
                      alignment: Alignment.center,
                      child:Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Youtube",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                          Text("youtube.com/mtechviral",style: TextStyle(fontSize: 12)),

                        ],
                      )

                  ),
                  Container(height: 60,width: 150,
                      alignment: Alignment.center,
                      child:Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Facebook",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                          Text("fb.com/imthepk",style: TextStyle(fontSize: 12)),

                        ],
                      )

                  ),
                ],)
              

            ],

          ),
        ),


      ),
    );
  }

  Column Box(Data d)
  {
    return Column(
      children: [
        Text("${d.number}",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold)),
        Text("${d.title}",style: TextStyle(fontSize: 14)),

      ],
    );
  }

}


class Data
{
  String? title, number;
  Data({this.title,this.number});
}

