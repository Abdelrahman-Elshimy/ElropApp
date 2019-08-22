import 'dart:math';

import 'package:elropy/screens/customers/single_product_form.dart';
import 'package:elropy/shared/empty_state.dart';
import 'package:flutter/material.dart';

class AddProductsPage extends StatefulWidget {
  @override
  _AddProductsPageState createState() => _AddProductsPageState();
}

class _AddProductsPageState extends State<AddProductsPage> {
  List<SingleForm> formProducts = [];

  List<Map<String, dynamic>> products = [
    {
      "name": 'ارز',
      "unitCount": 200,
      "boxCount": 10,
      "containerCount": 5,
      "unitPrice": 1.5,
      "boxPrice": 25,
      "containerPrice": 200,
    },
    {
      "name": 'سكر',
      "unitCount": 200,
      "boxCount": 10,
      "containerCount": 5,
      "unitPrice": 1.5,
      "boxPrice": 25,
      "containerPrice": 200,
    },
    {
      "name": 'بلح',
      "unitCount": 200,
      "boxCount": 10,
      "containerCount": 5,
      "unitPrice": 1.5,
      "boxPrice": 25,
      "containerPrice": 200,
    },
    {
      "name": 'شاس ممبح',
      "unitCount": 200,
      "boxCount": 10,
      "containerCount": 5,
      "unitPrice": 1.5,
      "boxPrice": 25,
      "containerPrice": 200,
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('شراء البضائع'),
        actions: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 10, bottom: 10, right: 10),
            child: RaisedButton(
              onPressed: () {
                onSave();
              },
              color: Colors.white,
              child: Text(
                'تنفيذ البيع',
                style: TextStyle(
                    color: Colors.red,
                    fontSize: 17,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
      body: formProducts.length <= 0
          ? Center(
              child: EmptyState(
                title: 'يا حسن !!',
                message: 'اختار المنتج اللي عايز تبيعه',
              ),
            )
          : ListView.builder(
              itemBuilder: (context, index) {
                return formProducts[index];
              },
              itemCount: formProducts.length,
            ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: addForm,
        foregroundColor: Colors.white,
      ),
    );
  }

  // on delete form
  void deleteForm(var x) {
    setState(() {
      for (var i = 0; i < formProducts.length; i++) {
        if (x == formProducts[i].product['name']) {
          formProducts.remove(formProducts[i]);
        }
      }
    });
  }

  // on add new form
  void addForm() {
    setState(() {
      Random random = new Random();
      int ind = random.nextInt(4);
      formProducts.add(
        SingleForm(
          product: products[ind],
          onDelete: () => deleteForm(products[ind]['name']),
        ),
      );
    });
  }

  ///on save forms
  void onSave() {
    if (formProducts.length > 0) {
      List<Map<String, dynamic>> bill = [];
      var data = formProducts.map((it) {
        it.form.currentState.save();
        bill.add({
          "name": it.product['name'],
          "unitCount": it.unitCount,
          "boxCount": it.boxCount,
          "containerCount": it.containerCount,
          "unitPrice": it.unitPrice,
          "boxPrice": it.boxPrice,
          "containerPrice": it.containerPrice
        });

        return bill;
      }).toList();
      Navigator.push(
        context,
        MaterialPageRoute(
          fullscreenDialog: true,
          builder: (_) => Scaffold(
            appBar: AppBar(
              title: Text('البضائع المباعة'),
              centerTitle: true,
            ),
            body: Column(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(5)),
                  margin:
                      EdgeInsets.only(bottom: 0, left: 15, right: 15, top: 10),
                  padding: EdgeInsets.only(top: 7, bottom: 7),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        flex: 1,
                        child: Container(
                          child: Text(
                            'الصنف',
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 1,
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
                          child: Text(
                            'عدد القطع',
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 1,
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
                          child: Text(
                            'عدد الصناديق',
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 1,
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
                          child: Text(
                            'عدد الحاويات',
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 1,
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
                          child: Text(
                            'سعر القطعه',
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 1,
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
                          child: Text(
                            'سعر الصندوق',
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 1,
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
                          child: Text(
                            'سعر الحاويه',
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
                          child: Text(
                            'السعر الكلي',
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: data.length,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: EdgeInsets.only(
                            bottom: 5, left: 15, right: 15, top: 5),
                        padding: EdgeInsets.only(top: 7, bottom: 7),
                        child: Row(
                          children: <Widget>[
                            Expanded(
                              flex: 1,
                              child: Container(
                                child: Text(
                                  data[0][index]['name'].toString(),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 1,
                            ),
                            Expanded(
                              flex: 1,
                              child: Container(
                                child: Text(
                                  data[0][index]['unitCount'].toString(),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 1,
                            ),
                            Expanded(
                              flex: 1,
                              child: Container(
                                child: Text(
                                  data[0][index]['boxCount'].toString(),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 1,
                            ),
                            Expanded(
                              flex: 1,
                              child: Container(
                                child: Text(
                                  data[0][index]['containerCount'].toString(),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 1,
                            ),
                            Expanded(
                              flex: 1,
                              child: Container(
                                child: Text(
                                  data[0][index]['unitPrice'].toString(),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 1,
                            ),
                            Expanded(
                              flex: 1,
                              child: Container(
                                child: Text(
                                  data[0][index]['boxPrice'].toString(),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 1,
                            ),
                            Expanded(
                              flex: 1,
                              child: Container(
                                child: Text(
                                  data[0][index]['containerPrice'].toString(),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 1,
                            ),
                            Expanded(
                              flex: 1,
                              child: Container(
                                child: Text(
                                  getPrice(
                                          data[0][index]['unitCount']
                                              .toString(),
                                          data[0][index]['boxCount'].toString(),
                                          data[0][index]['containerCount']
                                              .toString(),
                                          data[0][index]['unitPrice']
                                              .toString(),
                                          data[0][index]['boxPrice'].toString(),
                                          data[0][index]['containerPrice']
                                              .toString())
                                      .toString(),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    }
  }

  double getPrice(
      String uc, String bc, String cc, String up, String bp, String cp) {
    double price = 0;
    if (double.parse(uc) > 0) {
      price = double.parse(uc) * double.parse(up);
      if (double.parse(bc) > 0) {
        price = price + (double.parse(bc) * double.parse(bp));
        if (double.parse(cc) > 0) {
          price = price + (double.parse(cc) * double.parse(cp));
        }
      } else {
        if (double.parse(cc) > 0) {
          price = price + (double.parse(cc) * double.parse(cp));
        }
      }
    } else {
      if (double.parse(bc) > 0) {
        price = price + (double.parse(bc) * double.parse(bp));
        if (double.parse(cc) > 0) {
          price = price + (double.parse(cc) * double.parse(cp));
        }
      } else {
        if (double.parse(cc) > 0) {
          price = price + (double.parse(cc) * double.parse(cp));
        }
      }
    }
    return price;
  }
}
