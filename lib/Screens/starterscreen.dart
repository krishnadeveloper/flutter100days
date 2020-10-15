import 'package:flutter/material.dart';

class StarterScreen extends StatefulWidget {
  @override
  _StarterScreenState createState() => _StarterScreenState();
}

class _StarterScreenState extends State<StarterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/starter-image.jpg"),
            fit: BoxFit.cover
            )
        ),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              colors: [
                Colors.black.withOpacity(.9),
                Colors.black.withOpacity(.8),
                Colors.black.withOpacity(.2),
              ]
            )
          ),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget> [
                  Text('Taking Order For Faster Delivery', style: TextStyle(color: Colors.white, fontSize: 50, fontWeight: FontWeight.bold),),
                  Text('See returents nearby \nadding location', style: TextStyle(color: Colors.white, fontSize: 18, height: 1.4),),
                  SizedBox(height: 100,),
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(

                      gradient: LinearGradient(
                        colors: [
                          Colors.yellow,
                          Colors.orange
                        ]
                      ),
                      borderRadius: BorderRadius.circular(10)
                    ),
                    child: FlatButton(
                      onPressed: (){
                        debugPrint("Hello");
                      },
                      child: Text("Start"),
                      ),
                  ),
                  SizedBox(height: 30,),
                  Align(
                    child: Text("New Delivery To Your Door 24/7", style: TextStyle(color: Colors.white, fontSize: 20),),
                    ),
                  SizedBox(height: 30,)

              ],
            ),
          ),
        ),
      ),
      
    );
  }
}