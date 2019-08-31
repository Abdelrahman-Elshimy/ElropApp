import 'package:elropy/Api/customer/customer_api.dart';
import 'package:elropy/screens/customers/customers.dart';
import 'package:flutter/material.dart';

class AddCustomerPage extends StatefulWidget {
  @override
  _AddCustomerPageState createState() => _AddCustomerPageState();
}

class _AddCustomerPageState extends State<AddCustomerPage> {
  CustomerApi cusApi = new CustomerApi();
  bool isLaoding = false;
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
                      onPressed: () async {
                        if (_addCustomerForm.currentState.validate()) {
                          
                          _addCustomerForm.currentState.save();
                          final response = await cusApi.addNewCustomer({
                            'name': _name,
                            'address': _address,
                            'mobile': _number
                          });
                          getLoading(response['messages']);
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

  void getLoading(response) {
    Navigator.push(
      context,
      MaterialPageRoute(
        fullscreenDialog: true,
        builder: (_) => Scaffold(
          appBar: AppBar(),
          floatingActionButton: FloatingActionButton(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => CustomersPage()));
            },
            child: Icon(Icons.home),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                (response == null) ? Text('حدث خطا في الاتصال') : Text(response.toString()),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
