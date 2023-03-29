import 'package:flutter/material.dart';

class Pay_UI extends StatefulWidget {
  const Pay_UI({Key? key}) : super(key: key);

  @override
  State<Pay_UI> createState() => _Pay_UIState();
}

class _Pay_UIState extends State<Pay_UI> {

  List<InfoModal> bills = [
    InfoModal("Electricity", Icon(Icons.flash_on,color: Colors.deepPurpleAccent.shade700,size: 35)),
    InfoModal("Water", Icon(Icons.water_drop,color: Colors.deepPurpleAccent.shade700,size: 20)),
    InfoModal("Mobile", Icon(Icons.phone_android_rounded,color: Colors.deepPurpleAccent.shade700,size: 20)),
    InfoModal("Landline", Icon(Icons.call,color: Colors.deepPurpleAccent.shade700,size: 20)),
    InfoModal("Cable TV", Icon(Icons.tv_rounded,color: Colors.deepPurpleAccent.shade700,size: 20)),
    InfoModal("Internet", Icon(Icons.language,color: Colors.deepPurpleAccent.shade700,size: 20)),
  ];

  List<InfoModal> tickets = [
    InfoModal("Movie", Icon(Icons.theaters_outlined,color: Colors.deepPurpleAccent.shade700,size: 20)),
    InfoModal("Event", Icon(Icons.calendar_month_rounded,color: Colors.deepPurpleAccent.shade700,size: 20)),
    InfoModal("Sport", Icon(Icons.sports_football_rounded,color: Colors.deepPurpleAccent.shade700,size: 20)),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(backgroundColor: Colors.black,
          title: Text("Pay",style: TextStyle(fontSize: 25)),
          actions: [Icon(Icons.search_rounded,size: 25),SizedBox(width: 15),Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Icon(Icons.more_vert_rounded,size: 25),
          )],
          shadowColor: Colors.black,
          elevation: 15,

        ),

        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20.0),
                  child: Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: [Text("Pay Your Bills",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,wordSpacing: 3,letterSpacing: 2),)],
              ),
                ),
                Expanded(
                  child: GridView.builder(
                    itemCount: bills.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,      // crossAxisSpacing: 10, mainAxisSpacing: 10,
                    ),
                    itemBuilder: (context, index) {
                      return Box(title: bills[index].title, ic: bills[index].icon);
                  },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20.0),
                  child: Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: [Text("Purchase Tickets",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,wordSpacing: 3,letterSpacing: 2),)],
              ),
                ),

              Expanded(
                child: GridView.builder(
                  itemCount: tickets.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,      // crossAxisSpacing: 10, mainAxisSpacing: 10,
                  ),
                  itemBuilder: (context, index) {
                    return Box(title: tickets[index].title, ic: tickets[index].icon);
                  },
                ),
              ),
              SizedBox(height: 10),




            ],

          ),
        ),

      ),
    );
  }

  Widget Box({String? title, Icon? ic})
  {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(height: 60,width: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),color: Colors.black12,),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
          ic!,
          // Icon(Icons.call),
          Text("$title".toUpperCase(),style: TextStyle(fontSize: 15),textAlign: TextAlign.center,)
        ],),
        ),
    );
  }

}

class InfoModal
{
  String? title;
  Icon? icon;

  InfoModal(this.title,this.icon);
}
