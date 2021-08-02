import 'package:flutter/material.dart';
import 'package:instagram/Components/post.dart';
import 'package:instagram/Components/story.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "Instagram",
          style: TextStyle(fontFamily: 'Sinethar', fontSize: 35),
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () {},
              child: Icon(
                Icons.add_box_outlined,
                size: 26,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () {},
              child: Icon(
                Icons.messenger,
                size: 26,
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.black,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.white,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.video_collection_rounded,
              color: Colors.white,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite_outline,
              color: Colors.white,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              color: Colors.white,
            ),
            label: '',
          ),
        ],
      ),
      backgroundColor: Colors.black,
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              height: 100,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 70,
                          width: 70,
                          child: Image.network(
                              "https://upload.wikimedia.org/wikipedia/commons/thumb/7/79/Instagram_Stories_ring.svg/1024px-Instagram_Stories_ring.svg.png"),
                        ),
                      ),
                      Text(
                        "Your Story",
                        style: TextStyle(color: Colors.grey, fontSize: 12),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Story(name: "bushra"),
                  SizedBox(
                    width: 5,
                  ),
                  Story(name: "maha"),
                  SizedBox(
                    width: 5,
                  ),
                  Story(name: "nourhan"),
                  SizedBox(
                    width: 5,
                  ),
                  Story(name: "layla"),
                  SizedBox(
                    width: 5,
                  ),
                  Story(name: "huda")
                ],
              ),
            ),
          ),
          Divider(
            thickness: 0.2,
            color: Colors.grey,
          ),
          Post(
            name: "shahed",
            photo:
                "https://www.costacruises.com/content/dam/costa/inventory-assets/countries/MDV/MDV.jpg.image.750.563.low.jpg",
          ),
          SizedBox(
            height: 10,
          ),
          Post(
            name: "maha",
            photo:
                "https://bigseventravel.com/wp-content/uploads/2019/09/Screenshot-2019-09-07-at-15.56.29.png",
          ),
        ],
      ),
    );
  }
}
