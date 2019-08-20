import 'package:elropy/screens/customers/add_customer.dart';
import 'package:flutter/material.dart';

class CustomersPage extends StatefulWidget {
  @override
  _CustomersPageState createState() => _CustomersPageState();
}

class _CustomersPageState extends State<CustomersPage> {
  String _search;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        centerTitle: true,
        title: Text('الزبائن'),
      ),
      body: Column(
        children: <Widget>[
          // search form
          Container(
            padding: EdgeInsets.only(left: 15, right: 15, top: 10, bottom: 15),
            child: Form(
              child: Column(
                children: <Widget>[
                  TextFormField(
                    onFieldSubmitted: (value) {
                      setState(() {
                        _search = value;
                        print(_search);
                      });
                    },
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(
                          top: 0, bottom: 0, left: 15, right: 15),
                      hintText: 'Search',
                      suffixIcon: Icon(Icons.search),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.grey, width: 1),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          Container(
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(5)),
            margin: EdgeInsets.only(bottom: 10, left: 15, right: 15),
            padding: EdgeInsets.only(top: 7, bottom: 7),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  flex: 2,
                  child: Container(
                    child: Text(
                      'ألاسم',
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                SizedBox(
                  width: 3,
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    child: Text(
                      'العنوان',
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                SizedBox(
                  width: 3,
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    child: Text(
                      'عليه',
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            ),
          ),

          Expanded(
            child: ListView(
              children: getAllCustomers(),
            ),
          ),
          Container(
            color: Colors.white,
            margin: EdgeInsets.only(left: 15, right: 15),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: RaisedButton(
                    child: Text(
                      'أضافة زبون',
                      style: TextStyle(color: Colors.white),
                    ),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => AddCustomerPage()));
                    },
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: RaisedButton(
                    child: Text(
                      'بيع قطاعي',
                      style: TextStyle(color: Colors.white),
                    ),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  List<Widget> getAllCustomers() {
    List<Widget> customers = [];

    for (int i = 0; i < 20; i++) {
      customers.add(
        Container(
          decoration: BoxDecoration(
              color: (i % 2 == 0) ?Color(0xffDDDDDD) : Colors.white,
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(5)),
          margin: EdgeInsets.only(left: 15, right: 15, bottom: 10),
          padding: EdgeInsets.only(top: 8, bottom: 8),
          child: InkWell(
            onTap: () {
              print('sdsdds $i');
            },
            child: Row(
              children: <Widget>[
                Expanded(
                  flex: 2,
                  child: Container(
                    child: Text(
                      'عبدالرحمن لطفي يحيي',
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                SizedBox(
                  width: 3,
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    child: Text(
                      'الرياض',
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                SizedBox(
                  width: 3,
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    child: Text(
                      (1000 * (i + 1)).toString(),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    }
    return customers;
  }
}
