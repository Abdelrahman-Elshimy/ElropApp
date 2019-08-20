import 'package:flutter/material.dart';
class AddCustomerPage extends StatefulWidget {
  @override
  _AddCustomerPageState createState() => _AddCustomerPageState();
}

class _AddCustomerPageState extends State<AddCustomerPage> {
  final _addCustomerForm = GlobalKey<FormState>();
  String _name;
  String _number;
  String _address;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('اضافة زبون'),
        centerTitle: true,
      ),
      body: ListView(
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(15),
            child: Form(
              key: _addCustomerForm,
              child: Column(
                children: <Widget>[
                  TextFormField(
                    decoration: InputDecoration(
                        labelText: 'ادخل الاسم',
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey))),
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'يجب ادخال الاسم';
                      }
                      return null;
                    },
                    onSaved: (value) {
                      setState(() {
                        _name = value;
                      });
                    },
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        labelText: 'ادخل العنوان',
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey))),
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'يجب ادخال العنوان';
                      }
                      return null;
                    },
                    onSaved: (value) {
                      setState(() {
                        _address = value;
                      });
                    },
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.number,
                    maxLength: 11,
                    decoration: InputDecoration(
                        labelText: 'ادخل رقم الموبايل',
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey))),
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'يجب ادخال رقم الموبايل';
                      }
                      if (value.length < 11) {
                        return 'رقم الموبايل لابد ان يكون 11 رقم';
                      }
                      return null;
                    },
                    onSaved: (value) {
                      setState(() {
                        _number = value;
                      });
                    },
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: double.infinity,
                    child: RaisedButton(
                      onPressed: () {
                        if (_addCustomerForm.currentState.validate()) {
                          _addCustomerForm.currentState.save();
                          print(_name);
                          print(_number);
                          print(_address);
                         
                        }
                      },
                      child: Text(
                        'اضافه الزبون',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
