import 'package:flutter/material.dart';
import 'package:instagram_clone/utils/posts.dart';
import 'package:instagram_clone/utils/stories.dart';

class userHome extends StatelessWidget {
  final List people = [
    'Ayush',
    'Anish',
    'Yogesh',
    'Nirajan',
    'Sunil',
    'Dhungel'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Instagram',
              style: TextStyle(color: Colors.black),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Icon(Icons.favorite_outline),
                ),
                Icon(Icons.message_rounded),
              ],
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          //STORIES
          Container(
            height: 130,
            child: ListView.builder(
              itemCount: people.length,
              itemBuilder: (context, index) {
                return myStory(text: people[index]);
              },
              scrollDirection: Axis.horizontal,
            ),
          ),

          //POSTS
          myPost(
            name: 'Aayush',
          ),
        ],
      ),
    );
  }
}
