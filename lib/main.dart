import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:skeuo/statistics_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Skeuo App',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            scaffoldBackgroundColor: Color(0xFFF2F2F2),
            primaryColor: Color(0xFFF2F2F2)),
        home: StatisticsPage());
  }
}
