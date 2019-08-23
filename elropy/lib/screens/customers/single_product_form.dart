import 'package:elropy/utilities/colors.dart';
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
  String test = 'sasda';
  final List<Map<String, dynamic>> prods;
  final Function addForm;

  SingleForm({Key key, this.onDelete, this.product, this.prods, this.addForm})
      : super(key: key);
  @override
  _SingleFormState createState() => _SingleFormState();

  void saveForm() {
    form.currentState.save();
  }
}

class _SingleFormState extends State<SingleForm> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(
          child: Column(
            children: <Widget>[],
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(left: 10, right: 10, top: 10),
            child: Card(
              child: Form(
                key: widget.form,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Container(
                      color: AppColors().mainColor.withOpacity(.7),
                      padding: EdgeInsets.only(left: 15, right: 0, top: 0, bottom: 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Expanded(
                            child: Text(widget.product['name'].toString(), style: TextStyle(color: Colors.white, fontSize: 17,),),
                          ),
                          Container(
                            padding: EdgeInsets.all(0),
                            child: IconButton(
                              icon: Icon(Icons.close, size: 20, color: Colors.white,),
                              
                              onPressed: widget.onDelete,
                            ),
                          ),
                        ],
                      ),
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
                                        top: 10,
                                        bottom: 10,
                                        left: 10,
                                        right: 10),
                                    border: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.grey),
                                    ),
                                    labelText: 'س ق',
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
                                  initialValue:
                                      widget.product['boxPrice'].toString(),
                                  onSaved: (val) => widget.boxPrice = val,
                                  decoration: InputDecoration(
                                    contentPadding: EdgeInsets.only(
                                        top: 10,
                                        bottom: 10,
                                        left: 10,
                                        right: 10),
                                    border: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.grey),
                                    ),
                                    labelText: 'س ص',
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
                                  initialValue: widget.product['containerPrice']
                                      .toString(),
                                  onSaved: (val) => widget.containerPrice = val,
                                  decoration: InputDecoration(
                                    contentPadding: EdgeInsets.only(
                                        top: 10,
                                        bottom: 10,
                                        left: 10,
                                        right: 10),
                                    border: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.grey),
                                    ),
                                    labelText: 'س ح',
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
                                        top: 10,
                                        bottom: 10,
                                        left: 10,
                                        right: 10),
                                    border: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.grey),
                                    ),
                                    labelText: 'ع ق',
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
                                        top: 10,
                                        bottom: 10,
                                        left: 10,
                                        right: 10),
                                    border: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.grey, width: 1),
                                    ),
                                    labelText: 'ع ص',
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
                                        top: 10,
                                        bottom: 10,
                                        left: 10,
                                        right: 10),
                                    border: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.grey),
                                    ),
                                    labelText: 'ع ح',
                                    hintText: 'ادخل عدد الحاويات',
                                  ),
                                  keyboardType: TextInputType.number,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
