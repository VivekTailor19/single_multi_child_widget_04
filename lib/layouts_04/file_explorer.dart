import 'package:flutter/material.dart';

class File_Explorer extends StatefulWidget {
  const File_Explorer({Key? key}) : super(key: key);

  @override
  State<File_Explorer> createState() => _File_ExplorerState();
}
bool view = false;
class _File_ExplorerState extends State<File_Explorer> {
  List folderName = [
    "Android",
    "Biodata",
    "browser",
    "com.activision.callofduty.s",
    "com.facebook.orca",
    "Creative-BiodataMaker",
    "DCIM",
    "Download",
    "Dragon Ball Z",
    "Lost In Space S01 E01-10",
    "Lost in Space S02 E01-10",
    "MEGA",
    "MidasOversea",
    "MIUI",
    "MiVideoG-lobal"
        "Music",
    "PSP",
    "Sacred Games Sea-",
    "Subtitles",
    "systemui",
    "Telegram",
    "tencent",
    "The Witcher"
  ];



  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Container(
                height: 50,
                alignment: Alignment.center,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(Icons.menu_rounded),
                    Icon(Icons.access_time_rounded),
                    Icon(Icons.folder_open_rounded),
                    Icon(Icons.search_rounded)
                  ],
                ),
              ),
              Divider(thickness: 1, color: Colors.black26),
              Container(
                height: 75,
                child: ListTile(
                  leading: Container(
                    height: 75,
                    width: 75,
                    alignment: Alignment.center,
                    child: Text("93%",
                        style: TextStyle(color: Colors.amber, fontSize: 20)),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.amber, width: 3)),
                  ),
                  title: Text(
                    "Storage",
                    style: TextStyle(fontSize: 18),
                  ),
                  subtitle: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "110.74 GB / ",
                        style: TextStyle(fontSize: 15, color: Colors.amber),
                      ),
                      Text(
                        "118.49 GB",
                        style: TextStyle(fontSize: 15, color: Colors.black26),
                      ),
                    ],
                  ),
                  trailing: Icon(Icons.navigate_next),
                ),
              ),
              Divider(thickness: 3, color: Colors.black26),
              // ListTile(
              //   title: Text("Internal storage >",style: TextStyle(fontSize: 15),),
              //   trailing: Row(mainAxisAlignment: MainAxisAlignment.end,
              //   children: [
              //     Icon(Icons.list_rounded),
              //     Icon(Icons.more_vert_rounded)],),
              // ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(child: Container(child: Text("Internal storage >",style: TextStyle(fontSize: 20)),)),
                  InkWell(
                  onTap: () {
                   setState(() {
                     if(view==false)
                     {
                       view=true;
                     }
                     else
                     {
                       view=false;
                     }
                   });
                  },
                  child: view==false?Icon(Icons.list_rounded,size: 20,):Icon(Icons.grid_view_sharp,size: 20,)),
                  Icon(Icons.more_vert_rounded,size: 20,)
                ],),
              Divider(thickness: 1, color: Colors.black26),
              view==false?Expanded(
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 5,
                  ),
                  itemBuilder: (context, index) {
                    return Folder("${folderName[index]}");
                  },
                  scrollDirection: Axis.vertical,
                  itemCount: folderName.length,
                ),
              ):SizedBox(
                height: 400,
                child: ListView.builder(itemBuilder: (context, index) {
                  ListTile(title: Text("fghf"),trailing: Icon(Icons.arrow_forward_ios_rounded),subtitle: Text("sjdhf"),leading: Image.asset(
                    "assets/images/folder.jpg",
                    height: 30,
                    width: 30,
                    fit: BoxFit.fill,
                  ),);
                },itemCount: folderName.length,),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    alignment: Alignment.center,
                    child: Icon(
                      Icons.cleaning_services_rounded,
                      size: 20,
                    ),
                    decoration: BoxDecoration(shape: BoxShape.circle,color: Colors.blue,),

                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget Folder(String? name) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Image.asset(
          "assets/images/folder.jpg",
          height: 30,
          width: 30,
          fit: BoxFit.fill,
        ),
        Text(
          "$name",
          textAlign: TextAlign.center,
          softWrap: true,
          style: TextStyle(fontSize: 8),
        )
      ],
    );
  }
}
