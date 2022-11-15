import 'package:flutter/material.dart';

import 'Pages/mainpage.dart';

void main(List<String> args) {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: mainpage(),
      theme: ThemeData(primarySwatch: Colors.grey),
    ),
  );
}
