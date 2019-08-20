import 'package:flutter/material.dart';

class CustomersPage extends StatefulWidget {
  @override
  _CustomersPageState createState() => _CustomersPageState();
}

class _CustomersPageState extends State<CustomersPage> {
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
            padding: EdgeInsets.all(20),
            child: Form(
              child: Column(
                children: <Widget>[
                  TextFormField(
                    decoration: InputDecoration(
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
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.only(bottom: 10, left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Expanded(
                  flex: 2,
                  child: Text('ألاسم'),
                ),
                Expanded(
                  flex: 1,
                  child: Text('العنوان'),
                ),
                Expanded(
                  flex: 1,
                  child: Text('عليه'),
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
            margin: EdgeInsets.only(left: 20, right: 20),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: RaisedButton(
                    child: Text(
                      'أضافة زبون',
                      style: TextStyle(color: Colors.white),
                    ),
                    onPressed: () {},
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
                color: Colors.white,
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(5)),
            margin: EdgeInsets.only(left: 20, right: 20, bottom: 10),
          child: InkWell(
            onTap: () {
              print('sdsdds $i');
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Expanded(
                  flex: 2,
                  child: Container(
                    padding: EdgeInsets.all(5),
                    child: Text('عبدالرحمن لطفي يحيي'),
                  ),
                ),
                SizedBox(
                  width: 3,
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    padding: EdgeInsets.all(5),
                    child: Text('الرياض'),
                  ),
                ),
                SizedBox(
                  width: 3,
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    padding:
                        EdgeInsets.only(top: 8, bottom: 8, left: 5, right: 5),
                    child: Text('1000'),
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
