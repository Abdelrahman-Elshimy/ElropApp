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
      appBar: AppBar(
        title: Text(
          'El-ROPY',
          style: TextStyle(letterSpacing: 3),
        ),
        centerTitle: true,
      ),
      body: ListView(
        children: <Widget>[
          // // create logo of elropy
          // Container(
          //   margin: EdgeInsets.only(
          //       left: MediaQuery.of(context).size.width * .2,
          //       right: MediaQuery.of(context).size.width * .2,
          //       top: 50,
          //       bottom: 20),
          //   padding: EdgeInsets.only(top: 30, bottom: 30),
          //   decoration: BoxDecoration(
          //     borderRadius: BorderRadius.circular(5),
          //     border: Border.all(
          //       color: _appColors.mainColor,
          //       width: 2,
          //     ),
          //   ),
          //   child: Text(
          //     'الروبي',
          //     textAlign: TextAlign.center,
          //     style: TextStyle(
          //       color: _appColors.mainColor,
          //       fontWeight: FontWeight.bold,
          //       fontSize: 40,
          //     ),
          //   ),
          // ),

          SizedBox(height: 40,),

          // button of customers

          Container(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CustomersPage()));
                    },
                    child: Container(
                      color: _appColors.mainColor,
                      padding: EdgeInsets.only(top: 20, bottom: 20),
                      child: Column(
                        children: <Widget>[
                          Image.asset(
                            'assets/images/support.png',
                            width: 70,
                            height: 70,
                          ),
                          SizedBox(height: 20,),
                          Container(
                            child: Text('الزبائن', style: TextStyle(color: Colors.white, fontSize: 17,),),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),

                SizedBox(width: 10,),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CustomersPage()));
                    },
                    child: Container(
                      color: _appColors.mainColor,
                      padding: EdgeInsets.only(top: 20, bottom: 20),
                      child: Column(
                        children: <Widget>[
                          Image.asset(
                            'assets/images/cart.png',
                            width: 70,
                            height: 70,
                          ),
                          SizedBox(height: 20,),
                          Container(
                            child: Text('المخزن', style: TextStyle(color: Colors.white, fontSize: 17,),),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),

                
              ],
            ),
          ),

          SizedBox(height: 10,),

          // button of customers

          Container(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CustomersPage()));
                    },
                    child: Container(
                      color: _appColors.mainColor,
                      padding: EdgeInsets.only(top: 20, bottom: 20),
                      child: Column(
                        children: <Widget>[
                          Image.asset(
                            'assets/images/report.png',
                            width: 70,
                            height: 70,
                          ),
                          SizedBox(height: 20,),
                          Container(
                            child: Text('التقارير', style: TextStyle(color: Colors.white, fontSize: 17,),),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),

                SizedBox(width: 10,),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CustomersPage()));
                    },
                    child: Container(
                      color: _appColors.mainColor,
                      padding: EdgeInsets.only(top: 20, bottom: 20),
                      child: Column(
                        children: <Widget>[
                          Image.asset(
                            'assets/images/rich.png',
                            width: 70,
                            height: 70,
                          ),
                          SizedBox(height: 20,),
                          Container(
                            child: Text('ايرادات ومصروفات', style: TextStyle(color: Colors.white, fontSize: 17,),),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                
                
              ],
            ),
          ),

            SizedBox(width: 20,),
        ],
      ),
    );
  }
}
