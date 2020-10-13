import 'package:flutter/material.dart';

class Day001 extends StatefulWidget {
  @override
  _Day001State createState() => _Day001State();
}

class _Day001State extends State<Day001> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(244, 243, 243, 1),
      appBar: AppBar(
        
        title: Center(child: Text("Day 001", style: TextStyle(color: Colors.black87),)),
        backgroundColor: Colors.white,
        brightness: Brightness.dark,
        leading: IconButton(
          icon: Icon(Icons.menu, color: Colors.black87,),
          onPressed: (){
              debugPrint("Hello");
          },
          ),
      ),
      body: SafeArea(
        
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(25))
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Find Your", 
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold
                  ),
                ),
                SizedBox(height: 5,),
                Text(
                  "Inspiration", 
                  style: TextStyle(
                    fontSize: 40,
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(20)
                  ),
                  child: TextField(
                    decoration: InputDecoration (
                      hintText: "Search you're looking for",
                      hintStyle: TextStyle(fontSize: 15),
                      border: InputBorder.none,
                      prefixIcon: Icon(Icons.search, color: Colors.black87,),
                      
                    ),
                    
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 10,),
          Padding(
            padding: EdgeInsets.symmetric(horizontal:20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget> [
                Text("Promo cards",
                style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10,),
                Container(
                  height: 200,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      cardItem("assets/images/one.jpg"),
                      cardItem("assets/images/two.jpg"),
                      cardItem("assets/images/three.jpg"),
                      cardItem("assets/images/four.jpg"),
                  ],),
                )
              ],
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.all(20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/images/three.jpg")
                  )
              ),
              child: Container(
                decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: LinearGradient(
                  begin: Alignment.bottomRight,
                  stops: [0.3, 0.9],
                  colors: [
                    Colors.black.withOpacity(.7),
                    Colors.black.withOpacity(.1)
                  ]
                )
              ),
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: EdgeInsets.all(15),
                  child: Text("Best Design", style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16
                  ),),
                ),
              ),
              ),
            ),
          )
        
        ],)
      ),
    );
  }


}

Widget cardItem(image){
  return AspectRatio(
                        aspectRatio: 2.5/3,
                        child: Container(
                          margin: EdgeInsets.only(right: 10),
                          decoration: BoxDecoration(
                            color: Colors.orange,
                            borderRadius: BorderRadius.circular(20.0),
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(image)
                            ),
                          ),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.0),
                              gradient: LinearGradient(
                              begin: Alignment.bottomRight,
                              colors: [
                                Colors.black.withOpacity(.7),
                                Colors.black.withOpacity(.1)
                              ], 
                            )
                            ),
                          ),
                          
                        ),
                      );
}