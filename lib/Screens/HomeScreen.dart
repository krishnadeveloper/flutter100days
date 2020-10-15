import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          backgroundColor: Colors.grey[100],
          elevation: 0,
          actions: [
            IconButton(onPressed: (){}, icon: Icon(Icons.shopping_basket, color: Colors.black54,),)
          ],
        ),
        body: SafeArea(
          
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Food Delivery", style: TextStyle(fontSize: 35, color: Colors.grey[80], fontWeight: FontWeight.bold),),
                ),
                SizedBox(height: 30,),
                Container(
                  height: 50,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      OptionItem(isActive:true, title: 'Pizza'),
                      OptionItem(isActive:false, title: 'Burger'),
                      OptionItem(isActive:false, title: 'Kebab'),
                      OptionItem(isActive:false, title: 'Desert'),
                      OptionItem(isActive:false, title: 'Salad')
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                Text("Free Delivery", style: TextStyle(fontSize: 20, color: Colors.grey[700], fontWeight: FontWeight.bold),),
                SizedBox(height: 20,),
                Expanded(
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      FoodItem(food: "Veg. Pizza", price: "150.00", image: "assets/images/one.jpg"),
                      FoodItem(food: "Salad", price: "50.00", image: "assets/images/two.jpg"),
                      FoodItem(food: "Desert", price: "30.00", image: "assets/images/three.jpg"),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
    );
  }

  Widget OptionItem({isActive, title}) {
    return AspectRatio(
      aspectRatio: isActive? 3: 2.0/1,
      child: Container(
        margin: EdgeInsets.only(right:10),
        decoration: BoxDecoration(
          color: isActive? Colors.yellow[700]: Colors.white,
          borderRadius: BorderRadius.circular(30),
          // gradient: LinearGradient(
          //   begin: Alignment.bottomCenter,
          //   colors: [
          //     Colors.yellow,
          //     Colors.orange
          //   ]
          // )
        ),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Align(
            child: Text(
              title,
              style: TextStyle(
                color: isActive? Colors.white : Colors.grey[400],
                fontSize: 18,
                fontWeight: FontWeight.bold
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget FoodItem({food, price, image}) {
    return AspectRatio(
      aspectRatio: 1 / 1.3,
      child: Container(
        margin: EdgeInsets.only(right:20),
        decoration: BoxDecoration(
          color: Colors.yellow,
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            image: AssetImage(image),
            fit: BoxFit.cover
          )
        ),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: LinearGradient(
              begin: Alignment.bottomRight,
              stops: [.2, .9],
              colors: [
                Colors.black.withOpacity(0.8),
                Colors.black.withOpacity(0.2),
              ]
            )
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Align(
                  alignment: Alignment.topRight,
                  child: Icon(Icons.favorite, color: Colors.white,),
                  ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      
                      Text('\$${price}', style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),),
                      SizedBox(height: 6,),
                      Text(food, style: TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),),
                      
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
}