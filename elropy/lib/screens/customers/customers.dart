import 'package:elropy/Api/customer/customer_api.dart';
import 'package:elropy/models/customer.dart';
import 'package:elropy/screens/customers/add_customer.dart';
import 'package:elropy/screens/customers/add_products.dart';
import 'package:elropy/screens/customers/customer.dart';
import 'package:flutter/material.dart';

class CustomersPage extends StatefulWidget {
  @override
  _CustomersPageState createState() => _CustomersPageState();
}

class _CustomersPageState extends State<CustomersPage> {
  List<Customer> customers = [];
  CustomerApi cusApi = new CustomerApi();

 

  String _search;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              
              children: <Widget>[
                FutureBuilder(
                  future: cusApi.getAllCustomers(),
                  builder: (context, AsyncSnapshot snapShot) {
                    switch (snapShot.connectionState) {
                      case ConnectionState.waiting:
                        return loading();
                        break;
                      case ConnectionState.active:
                        return loading();
                        break;
                      case ConnectionState.none:
                        return loading();
                        break;
                      case ConnectionState.done:
                        if(snapShot.error != null ) {
                          return Container();
                        }
                        else {
                           List custs = snapShot.data;
                           if(custs.length > 0) {
                             
                             return Column(
                               children: getAllCustomers(custs),
                             );
                           }
                        }
                        break;
                    }
                    return null;
                  },
                ),
              ],
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
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => AddCustomerPage()));
                    },
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: RaisedButton(
                    child: Text(
                      'بيع قطاعي',
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => AddProductsPage()));
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget loading() {
    return Transform.translate(
      offset: Offset(0, 50),
      child: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }

  Widget error() {
    return Container(
      child: Center(
        child: Text('حدث خطا الرجاء المحاوله ثانيه'),
      ),
    );
  }

  List<Widget> getAllCustomers(List<Customer> customers) {
    List<Widget> customersWidgets = [];

    for (int i = 0; i < customers.length; i++) {
      customersWidgets.add(
        Container(
          margin: EdgeInsets.only(left: 15, right: 15, bottom: 10),
          child: InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => CustomerPage(customers[i])));
            },
            child: Container(
              decoration: BoxDecoration(
                  color: (i % 2 == 0) ? Color(0xffDDDDDD) : Colors.white,
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(5)),
              padding: EdgeInsets.only(top: 8, bottom: 8),
              child: Row(
                children: <Widget>[
                  Expanded(
                    flex: 2,
                    child: Container(
                      child: Text(
                        customers[i].name,
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
                        customers[i].address,
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
                        customers[i].dept.toString(),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    }
    return customersWidgets;
  }
}
