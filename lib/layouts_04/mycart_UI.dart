import 'package:flutter/material.dart';

class My_Cart extends StatefulWidget {
  const My_Cart({Key? key}) : super(key: key);

  @override
  State<My_Cart> createState() => _My_CartState();
}


class _My_CartState extends State<My_Cart> {
  @override
  Widget build(BuildContext context) {
    List<int> item = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20];
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(backgroundColor: Colors.redAccent,
        leading: Icon(Icons.arrow_back,size: 25,color: Colors.white),
        title: Text("My Cart",style: TextStyle(color: Colors.white,fontSize:
        25,wordSpacing: 3),),
        ),
        body:Container(color: Colors.black12,
          child: Column(
            children: [
              Expanded(
                child: ListView.builder(itemBuilder: (context, index) {
                  return Product(item[index]);
                },
                  itemCount: 20,
                  scrollDirection: Axis.vertical,
                ),
              ),


              Container(height: 100,width: double.infinity,color: Colors.black12,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.0,vertical: 12),
                  child: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Checkout Price:",style: TextStyle(fontSize: 15),),
                          Text("Rs. 5000",style: TextStyle(fontWeight: FontWeight.bold,
                              fontSize: 17))
                        ],
                      ),
                      Container(color: Colors.redAccent,
                      height: 45,width: double.infinity,
                        alignment: Alignment.center,
                        child: Text("Checkout",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 15),),
                      )

                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
  
  Widget Product(int no)
  {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        height: 150,
        width: 350,
        decoration: BoxDecoration(color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(20))),

        child: Row(
          children: [
            Container(height:150,width:150,
                decoration: BoxDecoration(borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),bottomLeft: Radius.circular(20)),
                image: DecorationImage(image:
                    AssetImage("assets/images/desk.jpg"),
                    // NetworkImage("https://media.istockphoto.com/id/1093508248/photo/modern-work-table-with-computer-laptop-and-cityscapes-view-from-window-business-concepts-ideas.jpg?s=612x612&w=0&k=20&c=vpMc1UR6KfgPe4GYcFG4x1FfPKLyYsoKqrAJolfBSZs="),

                    fit: BoxFit.cover )
                ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 12),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Item $no REDColor ",style: TextStyle(fontWeight: FontWeight.bold),),
                  SizedBox(height: 15),
                  Row(children: [
                    Text("Price:",style: TextStyle(fontSize: 15)),
                    Text("\$200",style: TextStyle(fontSize: 18)),
                  ],),
                  Row(children: [
                    Text("Sub Total:",style: TextStyle(fontSize: 15)),
                    Text("\$400",style: TextStyle(fontSize: 18,color: Colors.amberAccent)),
                  ],),
                  SizedBox(height: 15),
                  Row(
                    children: [
                    Text("Ships Free",style: TextStyle(color: Colors.amber.shade700,fontSize: 15),),
                    SizedBox(width: 25),
                    Row(
                      mainAxisAlignment:MainAxisAlignment.spaceAround,
                      children: [
                      Icon(Icons.remove,color: Colors.red,size: 18),
                      Padding(
                        padding:EdgeInsets.symmetric(
                            horizontal: 5),
                        child: Container(height: 25,width: 25,alignment: Alignment.center,
                          child: Text("2",style: TextStyle(fontSize: 20)),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5),
                               boxShadow: [BoxShadow(color: Colors.black12,offset:Offset(2,2))],
                        ),
                        ),
                      ),
                      Icon(Icons.add,color: Colors.green,size: 18),
                    ],)

                  ],)
              ],),
            )
          ],
        ),

      ),
    );
  }
}
