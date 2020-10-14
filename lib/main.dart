import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      fontFamily: "Nunito"
    ),
    home: Day002(),
  ));
}

class Day002 extends StatefulWidget {
  @override
  _Day002State createState() => _Day002State();
}

class _Day002State extends State<Day002> {
  PageController _pageviewControl;

 

  @override
  void initState() {
    _pageviewControl = PageController(
      initialPage: 4
      );
      
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        backgroundColor: Colors.white,
        
        leading: Icon(Icons.menu,color: Colors.black),
        title: Padding(
          padding: EdgeInsets.only(left: 40),
          child: Text("Day 002", style: TextStyle(color: Colors.black),),
        ),
      ),
      body: PageView(children: <Widget> [
        
        PageViewItem(
          image: "assets/images/one.jpg",
          title: 'Yosemite National Park',
            description: 'Yosemite National Park is in California’s Sierra Nevada mountains. It’s famed for its giant, ancient sequoia trees, and for Tunnel View, the iconic vista of towering Bridalveil Fall and the granite cliffs of El Capitan and Half Dome.',
          page:"1"
        ),
        PageViewItem(
          image: "assets/images/two.jpg",
          title: 'Golden Gate Bridge',
            description: 'The Golden Gate Bridge is a suspension bridge spanning the Golden Gate, the one-mile-wide strait connecting San Francisco Bay and the Pacific Ocean.',
          page:"2"
        ),
        PageViewItem(
          image: "assets/images/three.jpg",
          title: 'Sedona',
            description: "Sedona is regularly described as one of America's most beautiful places. Nowhere else will you find a landscape as dramatically colorful.",
          page:"3"
        ),
        PageViewItem(
          image: "assets/images/four.jpg",
          title: 'Savannah',
            description: "Savannah, with its Spanish moss, Southern accents and creepy graveyards, is a lot like Charleston, South Carolina. But this city about 100 miles to the south has an eccentric streak.",
          page:"4"
        ),
        
      ],),
    );
  }


  Widget PageViewItem({image, title, description, page }){
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(image),
          fit:BoxFit.cover
          )
      ),
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomRight,
            stops: [0.3, 0.9],
            colors: [
              Colors.black.withOpacity(.6),
              Colors.black.withOpacity(.1),
            ]
          )
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.baseline,
                textBaseline: TextBaseline.alphabetic,
                
                children: [
                Text(page, style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold,color: Colors.white),),
                Text("/4", style: TextStyle(fontSize: 20,color: Colors.white),),
              ],),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(title, style: TextStyle(fontSize: 50, color: Colors.white, fontWeight: FontWeight.bold),),
                        
                        Row(
                            children: [
                              Icon(Icons.star, color: Colors.yellow,),
                              Icon(Icons.star, color: Colors.yellow,),
                              Icon(Icons.star, color: Colors.yellow,),
                              Icon(Icons.star, color: Colors.yellow,),
                              Icon(Icons.star, color: Colors.grey,),
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Text("4.0", style: TextStyle(color: Colors.white, fontSize: 15),),
                              ),
                              Text("(2000)", style: TextStyle(color: Colors.white),),
                              
                          ],
                        ),

                        SizedBox(height: 10,),
                        Text(description, style: TextStyle(fontSize: 20, color: Colors.white),),
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Text("READ MORE...", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),),
                        ),
                    ],),
                  ),

                ] ,
              ),
            )
          ],
          ),
        ),
    );
  }

}