import 'package:flutter/material.dart';

class Story extends StatelessWidget {
  const Story({Key? key, this.name = " "}) : super(key: key);

  final String name;

  @override
  Widget build(BuildContext context) {
    return Column(
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
          name,
          style: TextStyle(color: Colors.grey, fontSize: 12),
        ),
      ],
    );
  }
}
