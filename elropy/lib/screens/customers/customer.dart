import 'package:elropy/models/customer.dart';
import 'package:elropy/screens/customers/depts.dart';
import 'package:flutter/material.dart';

class CustomerPage extends StatefulWidget {
  final Customer _customer;
  CustomerPage(this._customer);
  @override
  _CustomerPageState createState() => _CustomerPageState();
}

class _CustomerPageState extends State<CustomerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(widget._customer.name),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            height: 40,
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.only(left: 15, right: 15),
            
            child: RaisedButton(
              padding: EdgeInsets.only(top: 15, bottom: 15),
              onPressed: () {},
              child: Text('معاملات', style: TextStyle(color: Colors.white, fontSize: 20),),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.only(left: 15, right: 15),
            
            child: RaisedButton(
              padding: EdgeInsets.only(top: 15, bottom: 15),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => DeptsPage(widget._customer)));
              },
              child: Text('الديون', style: TextStyle(color: Colors.white, fontSize: 20),),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.only(left: 15, right: 15),
            
            child: RaisedButton(
              padding: EdgeInsets.only(top: 15, bottom: 15),
              onPressed: () {},
              child: Text('بيع سلع جديده', style: TextStyle(color: Colors.white, fontSize: 20),),
            ),
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
