import 'package:flutter/material.dart';

class HList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      child: Padding(
        padding: const EdgeInsets.all(2.0),
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            Catagory(
              Image_location: "asset/image/dress3.jpeg",
              Iamge_caption: "Dress",
            ),
            Catagory(
              Image_location: "asset/image/dress2.jpeg",
              Iamge_caption: "Saree",
            ),
            Catagory(
              Image_location: "asset/image/dress8.jpeg",
              Iamge_caption: "Kurta",
            ),
            Catagory(
              Image_location: "asset/image/dress4.jpeg",
              Iamge_caption: "Dress Material",
            ),
            Catagory(
              Image_location: "asset/image/dress5.jpeg",
              Iamge_caption: "Salwar Kameez",
            ),
            Catagory(
              Image_location: "asset/image/dress8.jpeg",
              Iamge_caption: "Lehenga",
            ),
            Catagory(
              Image_location: "asset/image/dress9.jpeg",
              Iamge_caption: "Ladies Gown",
            ),
            Catagory(
              Image_location: "asset/image/dress3.jpeg",
              Iamge_caption: "indo-Western",
            ),
            Catagory(
              Image_location: "asset/image/dress3.jpeg",
              Iamge_caption: "kid",
            ),
            Catagory(
              Image_location: "asset/image/dress3.jpeg",
              Iamge_caption: "Man",
            ),
          ],
        ),
      ),
    );
  }
}

class Catagory extends StatelessWidget {
  final String Image_location;
  final String Iamge_caption;

  Catagory({
    this.Iamge_caption,
    this.Image_location,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(0.0),
      child: InkWell(
        onTap: () {},
        child: Container(
          width: 100,
          child: ListTile(
            title: Image.asset(
              Image_location,
              width: 100.0,
              height: 50.0,
            ),
            subtitle: Container(
              alignment: Alignment.topCenter,
              child: Text(Iamge_caption,style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),),
            ),
          ),
        ),
      ),
    );
  }
}
