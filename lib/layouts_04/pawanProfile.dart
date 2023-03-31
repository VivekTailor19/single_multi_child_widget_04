import 'package:flutter/material.dart';

class Pawan_Profile extends StatefulWidget {
  const Pawan_Profile({Key? key}) : super(key: key);

  @override
  State<Pawan_Profile> createState() => _Pawan_ProfileState();
}

class _Pawan_ProfileState extends State<Pawan_Profile> {
  
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
        body: Column(
        children: [
          Container(width: double.infinity,height: 250,color: Colors.black,
            child: Column(
              children: [
                ListTile(
                  leading: Icon(Icons.arrow_back,size: 22,color: Colors.white,),
                  title: Row(
                    mainAxisAlignment:MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Profile",style: TextStyle(color: Colors.white,fontSize: 22),),
                      Icon(Icons.search_rounded,size: 22,color: Colors.white,)
                    ],),
                  trailing: Icon(Icons.more_vert_rounded,size: 22,color: Colors.white,),
                ),
                SizedBox(height: 5),
                Container(height: 105,width: 105,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(shape: BoxShape.circle,color: Colors.white),
                  child: CircleAvatar(
                    radius: 50,


                    backgroundImage: NetworkImage("https://www.halcyonhouse.org/wp-content/uploads/2021/12/6.-Pirl-Technology-Kobby-Osei-800x800-1643148846.png"),),
                ),
                Text("Pawan Kumar",style: TextStyle(fontSize: 30,color: Colors.white,wordSpacing: 3),),
                Text("Flutter Developer",style: TextStyle(fontSize: 20,color: Colors.white,wordSpacing: 3),),

              ],
            ),
          ),
          Container(width: double.infinity,height: 350,color: Colors.white,
            child: Column(
              children: [
                
                Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: data.asMap().entries.map((e) => Box(data[e.key])).toList()
                ),
                Text("Photos",style: TextStyle(fontSize: ),)

              ],
            ),
          ),
        ],
        ),



      ),
    );
  }

  Column Box(Data d)
  {
    return Column(
      children: [
        Text("${d.number}",style: TextStyle(fontSize: 22)),
        Text("${d.title}",style: TextStyle(fontSize: 18)),

      ],
    );
  }

}


class Data
{
  String? title, number;
  Data({this.title,this.number});
}
