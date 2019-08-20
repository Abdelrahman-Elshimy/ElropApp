import 'package:elropy/screens/customers/customers.dart';
import 'package:elropy/utilities/colors.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  AppColors _appColors = AppColors();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          // create logo of elropy
          Container(
            margin: EdgeInsets.only(
                left: MediaQuery.of(context).size.width * .2,
                right: MediaQuery.of(context).size.width * .2,
                top: 50,
                bottom: 20),
            padding: EdgeInsets.only(top: 30, bottom: 30),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              border: Border.all(
                color: _appColors.mainColor,
                width: 2,
              ),
            ),
            child: Text(
              'الروبي',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: _appColors.mainColor,
                fontWeight: FontWeight.bold,
                fontSize: 40,
              ),
            ),
          ),

          // button of customers

          Container(
            margin: EdgeInsets.only(
                left: MediaQuery.of(context).size.width * .1,
                right: MediaQuery.of(context).size.width * .1,
                top: 30,
                bottom: 10),
            child: RaisedButton(
              color: _appColors.mainColor,
              onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => CustomersPage()));
              },
              padding: EdgeInsets.all(15),
              child: Text(
                'الزبائن',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
          ),

          // button of customers

          Container(
            margin: EdgeInsets.only(
                left: MediaQuery.of(context).size.width * .1,
                right: MediaQuery.of(context).size.width * .1,
                top: 30,
                bottom: 10),
            child: RaisedButton(
              color: _appColors.mainColor,
              onPressed: () {},
              padding: EdgeInsets.all(15),
              child: Text(
                'المخزن',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
          ),

          // button of customers

          Container(
            margin: EdgeInsets.only(
                left: MediaQuery.of(context).size.width * .1,
                right: MediaQuery.of(context).size.width * .1,
                top: 30,
                bottom: 10),
            child: RaisedButton(
              color: _appColors.mainColor,
              onPressed: () {},
              padding: EdgeInsets.all(15),
              child: Text(
                'ايرادات ومصروفات',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
          ),

          // button of customers

          Container(
            margin: EdgeInsets.only(
                left: MediaQuery.of(context).size.width * .1,
                right: MediaQuery.of(context).size.width * .1,
                top: 30,
                bottom: 10),
            child: RaisedButton(
              color: _appColors.mainColor,
              onPressed: () {},
              padding: EdgeInsets.all(15),
              child: Text(
                'التقارير',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
