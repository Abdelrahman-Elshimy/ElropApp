import 'package:elropy/models/customer.dart';
import 'package:flutter/material.dart';

class TransactionsPage extends StatefulWidget {
  final Customer _customer;
  TransactionsPage(this._customer);
  @override
  _TransactionsPageState createState() => _TransactionsPageState();
}

class _TransactionsPageState extends State<TransactionsPage> {
  List<Widget> getDepts() {
    List<Widget> depts = [];
    for (var i = 0; i < 10; i++) {
      depts.add(
        Container(
          margin: EdgeInsets.only(left: 15, right: 15, bottom: 10),
          child: InkWell(
            onTap: () {
              // Navigator.push(context, MaterialPageRoute(builder: (context) => CustomerPage(customers[i])));
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
                    flex: 1,
                    child: Container(
                      child: Text(
                        '2000',
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
                        '16/10/2019',
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
        ),
      );
    }
    return depts;
  }

  List<Widget> getSells() {
    List<Widget> sells = [];
    for (var i = 0; i < 10; i++) {
      sells.add(
        Container(
          margin: EdgeInsets.only(left: 15, right: 15, bottom: 10),
          child: InkWell(
            onTap: () {
              // Navigator.push(context, MaterialPageRoute(builder: (context) => CustomerPage(customers[i])));
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
                    flex: 1,
                    child: Container(
                      child: Text(
                        '2000',
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
                        '16/10/2019',
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
        ),
      );
    }
    return sells;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('العمليات التجارية ل${widget._customer.name.split(" ")[0]}'),
      ),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 10),
          ),
          Container(
            padding: EdgeInsets.only(right: 20, left: 20),
            child: Text(
              'تاريخ الشراء',
              textAlign: TextAlign.right,
              style: TextStyle(
                fontSize: 30,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 10),
          ),
          Container(
            margin: EdgeInsets.only(left: 15, right: 15, bottom: 10),
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(5)),
            padding: EdgeInsets.only(top: 8, bottom: 8),
            child: Row(
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Container(
                    child: Text(
                      'قيمة الفاتورة',
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
                      'تاريخ الشراء',
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
                      'المسدد',
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
                      'الدين المتبقي',
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            ),
          ),
          
          Container(
            child: Column(
              children: getSells(),
            ),
          ),
         
          Container(
            padding: EdgeInsets.only(right: 20, left: 20),
            child: Text(
              'تاريخ تسديد الديون',
              textAlign: TextAlign.right,
              style: TextStyle(
                fontSize: 30,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            margin: EdgeInsets.only(left: 15, right: 15, bottom: 10),
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(5)),
            padding: EdgeInsets.only(top: 8, bottom: 8),
            child: Row(
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Container(
                    child: Text(
                      'المسدد',
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
                      'تاريخ التسديد',
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
                      'الدين المتبقي',
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Column(
              children: getDepts(),
            ),
          ),
        ],
      ),
    );
  }
}
