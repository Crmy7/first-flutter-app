import 'package:flutter/material.dart';

class Feed extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(height: 20),
        Divider(),
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: EdgeInsets.only(bottom: 20, top: 20, left: 10), // Ajout du padding ici
            child: Text(
              "Feed",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        Card(
          clipBehavior: Clip.antiAlias,
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                ListTile(
                  leading: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 2,
                        color: Colors.pink,
                      ),
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: CircleAvatar(
                      backgroundImage: AssetImage(
                        "assets/images/AdobeStock_460918802.jpeg",
                      ),
                    ),
                  ),
                  title: Text(
                    'Valentin Folliguet',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                const Divider(),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 20),
                  child: Image.asset('assets/images/AdobeStock_460918802.jpeg'),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 20),
                  child: Text(
                    'Greyhound divisively hello coldly wonderfully marginally far upon excluding.',
                    style: TextStyle(color: Colors.black54),
                  ),
                ),
                const Divider(),
                ButtonBar(
                  alignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Row(
                        children: [
                          IconButton(
                            icon: Icon(Icons.favorite, color: Colors.red,),
                            onPressed: () {},
                          ),
                          Text('120k Likes'),
                        ],
                      ),
                    ),
                    Container(
                      child: Row(
                        children: [
                          IconButton(
                            icon: Icon(Icons.comment, color: Colors.black,),
                            onPressed: () {},
                          ),
                          Text('10k Comments'),
                        ],
                      ),
                    ),

                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
