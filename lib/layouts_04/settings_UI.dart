import 'package:flutter/material.dart';

class Settings_UI extends StatefulWidget {
  const Settings_UI({Key? key}) : super(key: key);

  @override
  State<Settings_UI> createState() => _Settings_UIState();
}

class _Settings_UIState extends State<Settings_UI> {

  List<Icon> networkicon = [
    Icon(Icons.copy, size: 14, color: Colors.green),
    Icon(Icons.wifi, size: 14, color: Colors.blue),
    Icon(Icons.bluetooth, size: 14, color: Colors.purpleAccent.shade400),
    Icon(Icons.portable_wifi_off_rounded, size: 14,
        color: Colors.amber.shade200),
    Icon(Icons.vpn_key_off, size: 14, color: Colors.deepPurpleAccent.shade200),
    Icon(Icons.water_drop_outlined, size: 14, color: Colors.blueAccent),
    Icon(Icons.more_horiz_rounded, size: 14, color: Colors.blue),
  ];
  List<String> networkname = [
    "SIM cards & mobile networks",
    "Wi-Fi",
    "Bluetooth",
    "Portable hotspot",
    "VPN",
    "Data usage",
    "More"
  ];
  List<String> networkother = ["","Off","Off","Off","Off","",""];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
            title: Text(
              "Settings",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            centerTitle: true),
        body: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              SizedBox(height: 10),
              TextField(
                decoration: InputDecoration(

                  hintText: "Search settings",
                  hintStyle: TextStyle(fontSize: 12, color: Colors.black45),
                  prefixIcon: Icon(
                      Icons.search_rounded, size: 14, color: Colors.black45),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black45,
                          width: 2)),
                  border: OutlineInputBorder(),


                ),

              ),
              Divider(thickness: 2, color: Colors.black12),
              ItemTile(
                  i1: Icon(Icons.info_outline, color: Colors.blue, size: 14),
                  title: "About phone",
                  other: "MIUI 10 Global 9.2.28"
              ),
              ItemTile(
                  i1: Icon(
                      Icons.downloading_rounded, color: Colors.blue, size: 14),
                  title: "System apps updater",
                  other: ""
              ),
              Divider(thickness: 5, color: Colors.black12),
              Row(mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("WIRELESS & NETWORKS",style: TextStyle(fontSize: 14),textAlign: TextAlign.left,),
                ],
              ),
              Divider(thickness: 2, color: Colors.black12),
              Expanded(
                child: ListView.builder(itemBuilder: (context, index) {
                  return ItemTile(i1: networkicon[index],title:networkname[index],other: networkother[index] );

                },
                  itemCount:networkname.length,),
              ),
              Divider(thickness: 5, color: Colors.black12),
              Row(mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("PERSONAL",style: TextStyle(fontSize: 14),textAlign: TextAlign.left,),
                ],
              ),
              Divider(thickness: 2, color: Colors.black12),


            ],
          ),
        ),
      ),
    );
  }

  Widget ItemTile({Icon? i1, String? title, String? other }) {
    return ListTile(
      leading: i1,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Text("$title"),
        Text("$other")
      ],),
      trailing: Icon(Icons.arrow_forward_ios_rounded, size: 14),
    );
  }
}
