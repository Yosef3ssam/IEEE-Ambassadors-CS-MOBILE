import 'package:flutter/material.dart';

class ItemsDetails extends StatefulWidget {
// ignore: prefer_typing_uninitialized_variables
final dataitems ;
  const ItemsDetails({super.key, this.dataitems});

  @override
  State<ItemsDetails> createState() => _ItemsDetailsState();
}

class _ItemsDetailsState extends State<ItemsDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Color.fromARGB(255, 255, 162, 0),
        iconSize: 40,
        items: [
        
        BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
        BottomNavigationBarItem(icon: Icon(Icons.shopping_bag), label: ""),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: ""),
      ]),
      endDrawer: Drawer() ,
      appBar: AppBar(
        backgroundColor: Colors.grey,
        iconTheme: IconThemeData(color: Colors.black),
        title:Row(mainAxisAlignment: MainAxisAlignment.center,
           children: [
            Icon(Icons.remove_red_eye_outlined),
            Text(" E", style: TextStyle(color:const Color.fromARGB(255, 141, 33, 0),fontWeight: FontWeight.w700), ),
            Text("Commerce ", style: TextStyle(color:
            const Color.fromARGB(255, 141, 33, 0), fontWeight: FontWeight.w600), ),
            Text("Yosef", style: TextStyle(color:const Color.fromARGB(255, 0, 0, 0), fontWeight: FontWeight.w600), ),
            ],
        ),
        centerTitle: true,
      ),
      body: ListView(children: [
        Image.asset(widget.dataitems["image"]),
        Text(widget.dataitems["title"],textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
        Text(widget.dataitems["subtitle"],textAlign: TextAlign.center,style: TextStyle(color: Colors.grey[600]),),
        Container(
          margin: EdgeInsets.only(top: 10),
          child:
         Text(widget.dataitems["price"],
         textAlign: TextAlign.center,style: TextStyle(
          fontWeight: FontWeight.bold, color: Colors.orange,
         fontSize: 20),),),
         Row(mainAxisAlignment: MainAxisAlignment.center,
          children: [
         
          Text("Color:",style: TextStyle(fontWeight:FontWeight.bold, fontSize: 20),),
          SizedBox(width: 20,),
          Container(height: 30,width: 30,
          decoration: BoxDecoration(color: Colors.grey,borderRadius: BorderRadius.circular(30),border: Border.all(color: Colors.orange)),
          
          ),
          SizedBox(width: 10,),
          Text("Grey",style: TextStyle(fontWeight: FontWeight.bold),),
          SizedBox(width: 30),
          Container(height: 30,width: 30,
          decoration: BoxDecoration(color: Colors.black,
          borderRadius: BorderRadius.circular(30),
          border: Border.all(color: Colors.orange)),
          ),
          SizedBox(width: 10,),
          Text("Black",style: TextStyle(fontWeight: FontWeight.bold),),
          
         ],),
         
         Container(
          margin: EdgeInsets.only(top: 20, bottom: 20),
          child: Text("Size:   34 35 40 41",
          textAlign: TextAlign.center,
          style: TextStyle(fontWeight: FontWeight.bold,
          color: Colors.grey[600],))),
          

          Container(
            margin: EdgeInsets.symmetric(horizontal: 50),
            child: MaterialButton(
              height: 50,
              
              color: Colors.black,
            onPressed: (){}, 
            child: 
            Text("Add to cart.",style: TextStyle(color: Colors.white),),),
          )
      ],),
    );
  }
}