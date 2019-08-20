import 'package:elropy/screens/home.dart';
import 'package:elropy/utilities/colors.dart';
import 'package:flutter/material.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final AppColors _appColors = AppColors();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        buttonColor: _appColors.mainColor,
        primarySwatch: _appColors.mainColor,
      ),
     
      home: HomePage(),
    );
  }
 
}

