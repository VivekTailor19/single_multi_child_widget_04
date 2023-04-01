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
          Container(width: double.infinity,height: 240,color: Colors.black,
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
          Container(width: double.infinity,height: 400,color: Colors.white,
            margin: EdgeInsets.all(10),
            child: Column(
              children: [
                SizedBox(height: 10),
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: data.asMap().entries.map((e) => Box(data[e.key])).toList()
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 15,right:15,top: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Photos",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
                      Container(height: 60,width:350,

                          alignment: Alignment.centerLeft,
                          decoration: BoxDecoration(color: Colors.white,
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                            boxShadow: [BoxShadow(color: Colors.black12,offset: Offset(0, 2))]
                          ),
                          child: Expanded(
                            child: ListView.builder(
                              itemCount: 8,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) => Photo(),),
                          )
                      ),
                      SizedBox(height: 8),
                      Text("Post",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
                      SizedBox(height: 8),
                      Row(mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CircleAvatar(
                            radius: 25,
                            backgroundImage: NetworkImage("https://www.halcyonhouse.org/wp-content/uploads/2021/12/6.-Pirl-Technology-Kobby-Osei-800x800-1643148846.png"),),
                          SizedBox(width: 20),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                            Text("Pawan Kumar posted a photo",style: TextStyle(fontSize: 15),),
                            SizedBox(height: 5),
                            Text("25 mins ago",style: TextStyle(fontSize: 15),),
                          ],)
                      ],),
                      SizedBox(height: 8),
                      Image.network("https://c4.wallpaperflare.com/wallpaper/173/278/378/forest-nature-path-woodland-wallpaper-preview.jpg",width: double.infinity,height: 154,fit: BoxFit.fill,)



                    ],
                  ),
                )

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
        Text("${d.number}",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold)),
        Text("${d.title}",style: TextStyle(fontSize: 14)),

      ],
    );
  }
  
  Widget Photo()
  {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Image.asset("assets/images/wooden.jpg",height: 40,width: 60,fit: BoxFit.fill,),
    );
  }

}


class Data
{
  String? title, number;
  Data({this.title,this.number});
}
