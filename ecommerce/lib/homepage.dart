
import 'package:ecommerce/details.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget{
  const Homepage({super.key});

  @override 
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  List categories = [
    {
    "iconname" :Icons.laptop,
    "title" : "Laptop"
  },
  {
    "iconname" :Icons.phone_android_outlined,
    "title" : "Mobile"
  },
  {
    "iconname" :Icons.pedal_bike_rounded,
    "title" : "Sport"
  },
  {
    "iconname" :Icons.car_repair_outlined,
    "title" : "Cars"
  },
  {
    "iconname" :Icons.card_giftcard,
    "title" : "Present"
  },



  ];
    List items = [
    {
    "image" :"images/hp.png",
    "title" : "Headphones" ,
    "subtitle" :"Apple Beats.",
     "price" : "350\$"
  },{
    "image" :"images/watch.png",
    "title" : "Rolex watch" ,
    "subtitle" :"Very overpriced.",
     "price" : "1500\$"
  },
      {
    "image" :"images/hp.png",
    "title" : "Headphones" ,
    "subtitle" :"Apple Beats.",
     "price" : "350\$"
  },{
    "image" :"images/watch.png",
    "title" : "Rolex watch" ,
    "subtitle" :"Very overpriced.",
     "price" : "1500\$"
  },
  

  ];
  @override
  Widget build(BuildContext context){
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Color.fromARGB(255, 255, 162, 0),
        iconSize: 40,
        items: [
        
        BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
        BottomNavigationBarItem(icon: Icon(Icons.shopping_bag), label: ""),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: ""),
      ]),



      body: Container(
        padding: EdgeInsets.all(20),
        child: ListView(children: [
          Row(children: [
            Expanded(child: TextFormField(
              decoration:InputDecoration(border: InputBorder.none,
              prefixIcon: Icon(Icons.search),
              hintText: "Search.",
              fillColor: Colors.grey[200],
              filled: true,
              contentPadding: EdgeInsets.only(top: 13),
              )
            )),       
             
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Icon(Icons.menu, size: 40,),
            )
          ],
          ),
          Container(height: 30),
            Text("Categories", style: TextStyle(fontWeight: FontWeight.bold , fontSize: 20)),
            Padding(padding: EdgeInsetsGeometry.only(bottom: 10)),
            Container(height: 20,),
            SizedBox(
              height: 100,
              child: 
            ListView.builder(
              itemCount: categories.length,
              scrollDirection: Axis.horizontal,
               itemBuilder:(context, index) {
                 return Container(
                  margin: EdgeInsets.only(right: 10),
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                        
                      color:Colors.grey[300],
                      borderRadius: BorderRadius.circular(100)
                      ),
                        height: 70,width: 70, 
                        child: 
                      Icon(categories[index]["iconname"], size: 40,),),
                      Padding(padding: const EdgeInsets.only(top: 5)),
                      Text(categories[index]["title"], style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey[800]),)
                    ],
                  ),
                );
               } ,
                
                          
                
                
              
            )
      ),
      SizedBox(height: 30,width: 30,),
            Text("Best Selling", style: TextStyle(fontWeight: FontWeight.bold , fontSize: 20)),
            Padding(padding: EdgeInsetsGeometry.only(bottom: 10)),
            Container(height: 20,),
            GridView.builder(
              itemCount: items.length,
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              gridDelegate:
             SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,mainAxisExtent: 280),
            itemBuilder:(context, index) {
              return InkWell(
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => ItemsDetails(dataitems: items[index],)));
                },
              
                child: Card(child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.all(20),
                    color: Colors.grey[300], child: Image.asset(items[index]['image']),
                  ),
                  Container(height: 5,),
                  Text(items[index]['title'], style: TextStyle(fontSize: 18, color: Colors.black,fontWeight: FontWeight.w700),),
                  Text(items[index]['subtitle'], style: TextStyle(fontSize: 15, color: Colors.grey),),
                  SizedBox(height: 10,width: 30,),
                  Text(items[index]['price'], style: TextStyle(fontSize: 15, color: const Color.fromARGB(255, 255, 208, 0),fontWeight: FontWeight.w700),),

                  ],
                
                ),
              ));
              }
             
            )
          ]
        ),
      ),
    );
  }
}