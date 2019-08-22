import 'package:flutter/material.dart';

class SingleForm extends StatefulWidget {
  final Function onDelete;
  final Map<String, dynamic> product;
  final form = GlobalKey<FormState>();
  String name;
  String unitCount;
  String boxCount;
  String containerCount;
  String unitPrice;
  String boxPrice;
  String containerPrice;
  String test = 'vb';

  SingleForm({Key key, this.onDelete, this.product}) : super(key: key);
  @override
  _SingleFormState createState() => _SingleFormState();
}

class _SingleFormState extends State<SingleForm> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      // padding: const EdgeInsets.all(8.0),
      padding: EdgeInsets.only(left: 10, right: 10, top: 10),
      child: Card(
        child: Form(
          key: widget.form,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              AppBar(
                leading: Icon(Icons.verified_user),
                elevation: 0,
                title: Text(widget.product['name'].toString()),
                backgroundColor: Theme.of(context).accentColor,
                centerTitle: true,
                actions: <Widget>[
                  IconButton(
                    icon: Icon(Icons.delete),
                    onPressed: widget.onDelete,
                  )
                ],
              ),
              Container(
                margin: EdgeInsets.all(10),
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: TextFormField(
                            initialValue:
                                widget.product['unitPrice'].toString(),
                            onSaved: (val) => widget.unitPrice = val,
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.only(
                                  top: 10, bottom: 10, left: 10, right: 10),
                              border: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey),
                              ),
                              labelText: 'سعر الوحده',
                              hintText: 'ادخل سعر الوحده',
                            ),
                            keyboardType: TextInputType.number,
                          ),
                        ),
                        SizedBox(
                          width: 3,
                        ),
                        Expanded(
                          child: TextFormField(
                            initialValue: widget.product['boxPrice'].toString(),
                            onSaved: (val) => widget.boxPrice = val,
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.only(
                                  top: 10, bottom: 10, left: 10, right: 10),
                              border: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey),
                              ),
                              labelText: 'سعر الصندوق',
                              hintText: 'ادخل سعر الصندوق',
                            ),
                            keyboardType: TextInputType.number,
                          ),
                        ),
                        SizedBox(
                          width: 3,
                        ),
                        Expanded(
                          child: TextFormField(
                            initialValue:
                                widget.product['containerPrice'].toString(),
                            onSaved: (val) => widget.containerPrice = val,
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.only(
                                  top: 10, bottom: 10, left: 10, right: 10),
                              border: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey),
                              ),
                              labelText: 'سعر الحاوية',
                              hintText: 'ادخل سعر الحاوية',
                            ),
                            keyboardType: TextInputType.number,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: TextFormField(
                            initialValue: 0.toString(),
                            onSaved: (val) => widget.unitCount = val,
                            validator: (value) {
                              if (double.parse(value) >
                                  widget.product['unitCount']) {
                                return 'لا يوجد كافي';
                              }
                              return null;
                            },
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.only(
                                  top: 10, bottom: 10, left: 10, right: 10),
                              border: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey),
                              ),
                              labelText: 'عدد القطع',
                              hintText: 'ادخل عدد القطعة',
                            ),
                            keyboardType: TextInputType.number,
                          ),
                        ),
                        SizedBox(
                          width: 3,
                        ),
                        Expanded(
                          child: TextFormField(
                            initialValue: 0.toString(),
                            onSaved: (val) => widget.boxCount = val,
                            validator: (value) {
                              if (double.parse(value) >
                                  widget.product['boxCount']) {
                                return 'لا يوجد كافي';
                              }
                              return null;
                            },
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.only(
                                  top: 10, bottom: 10, left: 10, right: 10),
                              border: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.grey, width: 1),
                              ),
                              labelText: 'عدد الصناديق',
                              hintText: 'ادخل عدد الصناديق',
                            ),
                            keyboardType: TextInputType.number,
                          ),
                        ),
                        SizedBox(
                          width: 3,
                        ),
                        Expanded(
                          child: TextFormField(
                            initialValue: '0',
                            onSaved: (val) => widget.containerCount = val,
                            validator: (value) {
                              if (double.parse(value) >
                                  widget.product['containerCount']) {
                                return 'لا يوجد كافي';
                              }
                              return null;
                            },
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.only(
                                  top: 10, bottom: 10, left: 10, right: 10),
                              border: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey),
                              ),
                              labelText: 'عدد الحاويات',
                              hintText: 'ادخل عدد الحاويات',
                            ),
                            keyboardType: TextInputType.number,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
