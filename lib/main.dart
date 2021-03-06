import 'package:flutter/material.dart';
import 'package:tesla/views/pages/home/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        platform: TargetPlatform.iOS,
        // primaryColor: Colors.grey,
        // primarySwatch: Colors.blueGrey,
      ),
      home: HomePage(),
    );
  }
}
