import 'dart:ui';

import 'package:flutter/material.dart';

class myPost extends StatelessWidget {
  final String name;
  myPost({required this.name});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //Profile

        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey[200],
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    name,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Icon(Icons.more_vert_rounded),
            ],
          ),
        ),

        //Posts

        Container(
          height: 350,
          color: Colors.grey[300],
        ),

        // Below the post items
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: const [
                  Icon(Icons.favorite_rounded),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 18.0),
                    child: Icon(Icons.chat_bubble_outline_outlined),
                  ),
                  Icon(Icons.share),
                ],
              ),
              Icon(Icons.bookmark_border),
            ],
          ),
        )
      ],
    );
  }
}
