import 'package:flutter/material.dart';
import 'package:termandconditions/userdetails.dart';
import 'package:shared_preferences/shared_preferences.dart';
class ProductPage extends StatefulWidget {
  const ProductPage({Key? key}) : super(key: key);

  @override
  _ProductPageState createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {

  late String displayName='';


  ViewProduct(BuildContext context) => showDialog(
        context: context,
        builder: (BuildContext context) => const AlertDialog(
          title: Text(
            'Details',
            textAlign: TextAlign.center,
          ),
          content: Text(
            "Name : Nissan                                  Amount : 25,0000                                  Name : Nissan                                  Amount : 25,0000",
          ),
        ),
      );

  Widget ItemCard({String heading = '', String? pImg = '1'}) {
    return Container(
      margin: EdgeInsets.all(10),
      height: 230,
      width: 150,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Color.fromARGB(255, 9, 87, 102),
          boxShadow: [
            BoxShadow(spreadRadius: 2, blurRadius: 10, color: Colors.white38)
          ]),
      child: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Text(
            heading,
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Image(
            image: AssetImage("$pImg"),
            fit: BoxFit.cover,
            height: 150,
            width: 150,
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(
            child: MaterialButton(
              elevation: 0,
              color: Color.fromARGB(255, 9, 87, 102),
              onPressed: () {
                ViewProduct(context);
              },
              child: Text(
                "Details",
                style: TextStyle(color: Colors.white),
              ),
              splashColor: Colors.white,
            ),
          ),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }

  Widget CategoryHeader({String? cName}) {
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      child: Text(
        "$cName",
        style: TextStyle(
            fontFamily: 'Roboto-Light', fontSize: 20, color: Colors.white),
      ),
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 9, 87, 102),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 9, 87, 102),
        elevation: 0,
        title: const Center(
          child: Text(
            'MHub',
            textAlign: TextAlign.center,
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.add_alert),
            tooltip: 'Show Snackbar',
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Notification On')));
            },
          ),
          IconButton(
            icon: const Icon(Icons.logout_outlined),
            tooltip: 'Logout',
            onPressed: () {},
          ),
        ],
      ),
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('Menu'),
            ),
            ListTile(
              title: const Text('Profile'),
              onTap: () {
                // Update the state of the app
                Navigator.push(context, MaterialPageRoute(builder: (context) => UserDetails()));
                print("Tapped");
                // Then close the drawer
              },
            ),
            ListTile(
              title: const Text('Wish list'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: ListView(
        children: [


          CategoryHeader(cName: "Cars"),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ItemCard(heading: "Nissan", pImg: "assets/cars/1.jfif"),
                ItemCard(heading: "Ford", pImg: "assets/cars/2.jfif"),
                ItemCard(heading: "Suzuki", pImg: "assets/cars/3.jfif"),
                ItemCard(heading: "Cheverlet", pImg: "assets/cars/4.jfif"),
                ItemCard(heading: "Maruthi", pImg: "assets/cars/5.jfif"),
              ],
            ),
          ),


          CategoryHeader(cName: "Bikes"),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ItemCard(heading: "Nissan", pImg: "assets/cars/1.jfif"),
                ItemCard(heading: "Ford", pImg: "assets/cars/2.jfif"),
                ItemCard(heading: "Suzuki", pImg: "assets/cars/3.jfif"),
                ItemCard(heading: "Cheverlet", pImg: "assets/cars/4.jfif"),
                ItemCard(heading: "Maruthi", pImg: "assets/cars/5.jfif"),
              ],
            ),
          ),

          CategoryHeader(cName: "Bikes"),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ItemCard(heading: "Nissan", pImg: "assets/cars/1.jfif"),
                ItemCard(heading: "Ford", pImg: "assets/cars/2.jfif"),
                ItemCard(heading: "Suzuki", pImg: "assets/cars/3.jfif"),
                ItemCard(heading: "Cheverlet", pImg: "assets/cars/4.jfif"),
                ItemCard(heading: "Maruthi", pImg: "assets/cars/5.jfif"),
              ],
            ),
          ),


          CategoryHeader(cName: "Bikes"),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ItemCard(heading: "Nissan", pImg: "assets/cars/1.jfif"),
                ItemCard(heading: "Ford", pImg: "assets/cars/2.jfif"),
                ItemCard(heading: "Suzuki", pImg: "assets/cars/3.jfif"),
                ItemCard(heading: "Cheverlet", pImg: "assets/cars/4.jfif"),
                ItemCard(heading: "Maruthi", pImg: "assets/cars/5.jfif"),
              ],
            ),
          ),


        ],
      ),
    );
  }
}
