import 'package:elropy/models/customer.dart';
import 'package:flutter/material.dart';

class DeptsPage extends StatefulWidget {
  final Customer _customer;
  DeptsPage(this._customer);
  @override
  _DeptsPageState createState() => _DeptsPageState();
}

class _DeptsPageState extends State<DeptsPage> {
  final _formUpdateDept = GlobalKey<FormState>();
  String _daptValue;
  int _depts = 2000;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('تسديد الديون'),
        centerTitle: true,
      ),
      body: Stack(
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Container(
                width: double.infinity,
                margin: EdgeInsets.only(left: 20, right: 20, top: 20),
                child: Text(
                  'القيمة الباقية',
                  style: TextStyle(fontSize: 25),
                  textAlign: TextAlign.right,
                ),
              ),
              Container(
                width: double.infinity,
                margin: EdgeInsets.all(20),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.grey,
                    ),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5)),
                child: Text(
                  _depts.toString(),
                  style: TextStyle(fontSize: 25),
                  textAlign: TextAlign.right,
                ),
              ),
              Container(
                margin:
                    EdgeInsets.only(left: 20, right: 20, top: 0, bottom: 15),
                child: Text(
                  'تاريخ تسديد الديون',
                  style: TextStyle(fontSize: 25),
                  textAlign: TextAlign.right,
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
                      flex: 1,
                      child: Container(
                        child: Text(
                          'قيمة التسديد',
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
                          'المتبقي',
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
              SizedBox(
                height: 50,
              ),
            ],
          ),
          Positioned(
            bottom: 0,
            child: Material(
              elevation: 2,
              child: Container(
                width: MediaQuery.of(context).size.width,
                color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Expanded(
                      child: Form(
                        key: _formUpdateDept,
                        child: TextFormField(
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            
                            border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey.withOpacity(.3)),
                              borderRadius: BorderRadius.circular(0),
                            ),
                            disabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey.withOpacity(.3)),
                              borderRadius: BorderRadius.circular(0),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey.withOpacity(.3)),
                              borderRadius: BorderRadius.circular(0),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey.withOpacity(.3)),
                              borderRadius: BorderRadius.circular(0),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey.withOpacity(.3)),
                              borderRadius: BorderRadius.circular(0),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey.withOpacity(.3)),
                              borderRadius: BorderRadius.circular(0),
                            ),
                            hintText: 'قيمه التسديد',
                            filled: true,
                            contentPadding: EdgeInsets.all(10),
                          ),
                          validator: (value) {
                            if(value.isEmpty) {
                              return 'اضف القيمة المراد انقاصها';
                            }
                            return null;
                          },
                          onSaved: (value) {
                            setState(() {
                             _daptValue = value; 
                            });
                          },
                        ),
                      ),
                    ),
                    Transform.translate(
                      offset: Offset(0, -2),
                                          child: Container(
                        child: RaisedButton(
                          onPressed: () {
                            if(_formUpdateDept.currentState.validate()) {
                              _formUpdateDept.currentState.save();
                              print(int.parse(_daptValue));
                              setState(() {
                                _depts = _depts - int.parse(_daptValue);
                              });
                            }
                          },
                          child: Text(
                            'تسديد',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          padding: EdgeInsets.all(12),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  List<Widget> getAllCustomers() {
    List<Widget> customersWidgets = [];

    for (int i = 0; i < 20; i++) {
      customersWidgets.add(
        Container(
          margin: EdgeInsets.only(left: 15, right: 15, bottom: 10),
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
                      '200',
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
                      ' ${DateTime.utc(2019, 10, 5).year.toString()} / ${DateTime.utc(2019).month.toString()} / ${DateTime.utc(2019).day.toString()}',
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
                      (1000).toString(),
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
    return customersWidgets;
  }
}
