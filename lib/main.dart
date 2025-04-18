import 'package:flutter/material.dart';
import 'package:yu_news/pages/category_news.dart';
import 'package:yu_news/pages/home.dart';
import 'package:yu_news/pages/onboarding.dart';

void main(){
  runApp(MyWidget());
}


// as
class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Onboarding(),
    );
  }
}