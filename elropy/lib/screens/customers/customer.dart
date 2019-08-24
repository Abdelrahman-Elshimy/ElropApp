import 'package:elropy/models/customer.dart';
import 'package:elropy/screens/customers/add_products.dart';
import 'package:elropy/screens/customers/depts.dart';
import 'package:elropy/screens/customers/transactions.dart';
import 'package:elropy/utilities/colors.dart';
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
      body: ListView(
        children: <Widget>[
          SizedBox(
            height: 40,
          ),
          getOperations('العمليات التجارية', 'assets/images/exchange.png', TransactionsPage(widget._customer)),
          SizedBox(
            height: 20,
          ),
          getOperations('الديون', 'assets/images/hand.png', DeptsPage(widget._customer)),
          SizedBox(
            height: 20,
          ),
          getOperations('بيع سلع جديدة', 'assets/images/add.png', AddProductsPage()),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }

  Widget getOperations(String title, String image, var page) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => page));
      },
      child: Container(
        width: double.infinity,
        margin: EdgeInsets.only(left: 15, right: 15),
        padding: EdgeInsets.only(top: 15, bottom: 15),
        color: AppColors().mainColor,
        child: Column(
          children: <Widget>[
            Image.asset(
              image,
              height: 50,
              width: 50,
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              child: Text(
                title,
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
