import 'package:flutter/material.dart';

class Amis extends StatelessWidget {
  // Liste des URLs des images
  final List<String> imageUrls = [
    "assets/images/AdobeStock_460918802.jpeg",
    "assets/images/AdobeStock_82298731.jpeg",
    "assets/images/AdobeStock_347042883.jpeg",
    "assets/images/AdobeStock_657834957.jpeg",
    "assets/images/AdobeStock_365852057.jpeg",
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
        children: <Widget>[
          SizedBox(height: 20),
          Divider(),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(bottom: 20, top: 20),
              child: Text(
                "Amis",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          SizedBox(
            height: 150,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: imageUrls.map((imageUrl) {
                return Container(
                  width: 120,
                  margin: EdgeInsets.only(right: 10),
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 5,
                      color: Colors.grey.shade300,
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                    image: DecorationImage(
                      image: AssetImage(imageUrl),
                      fit: BoxFit.cover,
                      alignment: Alignment.center,
                    ),
                  ),
                );
              }).toList(),
            ),
          ),
        ],
    );
  }
}
