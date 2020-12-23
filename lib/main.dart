import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:welcome_to_manashree/components/h_listview.dart';
import 'package:welcome_to_manashree/components/product.dart';

void main() {
  runApp(MaterialApp(
    home: HomePage(),
    debugShowCheckedModeBanner: false,
  ));
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Widget image_carousel = Container(

      height: 200.0,
      child: Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage("asset/image/dress3.jpeg"),
          AssetImage("asset/image/dress2.jpeg"),
          AssetImage("asset/image/dress9.jpeg"),
          AssetImage("asset/image/dress3.jpeg"),
        ],
        autoplay: false,
        // animationCurve: Curves.fastOutSlowIn,
        //  animationDuration: Duration(milliseconds: 1000),
        dotSize: 4.0, dotColor: Colors.orangeAccent,
        indicatorBgPadding: 8.0,
      ),
    );

    return Scaffold(
      appBar: new AppBar(
        elevation: 0.0,

        backgroundColor: Colors.brown,

        title: Text("Manashree Collection"),
        actions: [
          new IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: () {}),
          new IconButton(
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.white,
              ),
              onPressed: () {}),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountName: Text("dipa"),
              accountEmail: Text("dipa@gmail.com"),
              currentAccountPicture: GestureDetector(
                child: CircleAvatar(
                  backgroundColor: Colors.greenAccent,
                  child: Icon(
                    Icons.person,
                    color: Colors.white,
                  ),
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.brown,
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text("Home"),
                leading: Icon(
                  Icons.home_rounded,
                  color: Colors.teal,
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text("Catalogue"),
                leading: Icon(
                  Icons.favorite,
                  color: Colors.red,
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text("WishList"),
                leading: Icon(
                  Icons.library_books_sharp,
                  color: Colors.brown,
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text("Account"),
                leading: Icon(
                  Icons.person,
                  color: Colors.orangeAccent,
                ),
                onTap: () {},
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text("Facebook"),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text("Return & Exchange Policy"),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text("Contact us"),
              ),
            ),
          ],
        ),
      ),
      body: new ListView(
        children: <Widget>[
          image_carousel,
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Catagories"),),
          HList(),
          new Padding(padding: const EdgeInsets.all(20.0),
            child: new Text("New Arrival"),),
          Container(
            height: 320,
            child: Products(),
          ),

        ],
      ),
    );
  }
}
