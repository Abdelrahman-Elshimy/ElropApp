import 'package:elropy/screens/customers/single_product_form.dart';
import 'package:elropy/shared/empty_state.dart';
import 'package:elropy/utilities/colors.dart';
import 'package:flutter/material.dart';

class AddProductsPage extends StatefulWidget {
  @override
  _AddProductsPageState createState() => _AddProductsPageState();
}

class _AddProductsPageState extends State<AddProductsPage> {
  List<SingleForm> formProducts = [];
  List<SingleForm> secondFormProducts = [];

  List<Widget> allProductToAdd() {
    List<Widget> prodsClick = [
      Divider(),
    ];
    for (var i = 0; i < products.length; i++) {
      prodsClick.add(
        InkWell(
          onTap: () {
            addForm(products[i]);
          },
          child: Container(
            decoration: BoxDecoration(
                border: Border(
                    right: BorderSide(color: Colors.grey.withOpacity(.4)))),
            padding: EdgeInsets.only(
              left: 10,
              right: 10,
              top: 5,
              bottom: 5,
            ),
            child: Text(products[i]['name']),
          ),
        ),
      );
      prodsClick.add(
        Divider(),
      );
    }

    return prodsClick;
  }

  List<Map<String, dynamic>> products = [
    {
      "name": 'يبملبن',
      "unitCount": 200,
      "boxCount": 10,
      "containerCount": 5,
      "unitPrice": 1.5,
      "boxPrice": 25,
      "containerPrice": 200,
    },
    {
      "name": 'زبييت',
      "unitCount": 200,
      "boxCount": 10,
      "containerCount": 5,
      "unitPrice": 1.5,
      "boxPrice": 25,
      "containerPrice": 200,
    },
    {
      "name": 'حلاوهب',
      "unitCount": 200,
      "boxCount": 10,
      "containerCount": 5,
      "unitPrice": 1.5,
      "boxPrice": 25,
      "containerPrice": 200,
    },
    {
      "name": 'شبمر',
      "unitCount": 200,
      "boxCount": 10,
      "containerCount": 5,
      "unitPrice": 1.5,
      "boxPrice": 25,
      "containerPrice": 200,
    },
    {
      "name": 'ببي',
      "unitCount": 200,
      "boxCount": 10,
      "containerCount": 5,
      "unitPrice": 1.5,
      "boxPrice": 25,
      "containerPrice": 200,
    },
    {
      "name": 'قصبب',
      "unitCount": 200,
      "boxCount": 10,
      "containerCount": 5,
      "unitPrice": 1.5,
      "boxPrice": 25,
      "containerPrice": 200,
    },
    {
      "name": 'اربز',
      "unitCount": 200,
      "boxCount": 10,
      "containerCount": 5,
      "unitPrice": 1.5,
      "boxPrice": 25,
      "containerPrice": 200,
    },
    {
      "name": 'سكيبر',
      "unitCount": 200,
      "boxCount": 10,
      "containerCount": 5,
      "unitPrice": 1.5,
      "boxPrice": 25,
      "containerPrice": 200,
    },
    {
      "name": 'ببلح',
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
    },
    {
      "name": 'ملبن',
      "unitCount": 200,
      "boxCount": 10,
      "containerCount": 5,
      "unitPrice": 1.5,
      "boxPrice": 25,
      "containerPrice": 200,
    },
    {
      "name": 'زيت',
      "unitCount": 200,
      "boxCount": 10,
      "containerCount": 5,
      "unitPrice": 1.5,
      "boxPrice": 25,
      "containerPrice": 200,
    },
    {
      "name": 'حلاوه',
      "unitCount": 200,
      "boxCount": 10,
      "containerCount": 5,
      "unitPrice": 1.5,
      "boxPrice": 25,
      "containerPrice": 200,
    },
    {
      "name": 'شمر',
      "unitCount": 200,
      "boxCount": 10,
      "containerCount": 5,
      "unitPrice": 1.5,
      "boxPrice": 25,
      "containerPrice": 200,
    },
    {
      "name": 'جاز',
      "unitCount": 200,
      "boxCount": 10,
      "containerCount": 5,
      "unitPrice": 1.5,
      "boxPrice": 25,
      "containerPrice": 200,
    },
    {
      "name": 'قصب',
      "unitCount": 200,
      "boxCount": 10,
      "containerCount": 5,
      "unitPrice": 1.5,
      "boxPrice": 25,
      "containerPrice": 200,
    },
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
    },
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
                    color: AppColors().mainColor,
                    fontSize: 17,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
      body: Row(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(0),
            width: MediaQuery.of(context).size.width * .25,
            child: ListView(
              children: allProductToAdd(),
            ),
          ),
          Expanded(
            child: formProducts.length <= 0
                ? Center(
                    child: EmptyState(
                      title: 'لو سمحت',
                      message: 'اختار المنتج اللي عايز تبيعه',
                    ),
                  )
                : ListView(
                    children: <Widget>[
                      Column(
                        children: formProducts,
                      ),
                    ],
                  ),
          ),
        ],
      ),
    );
  }

  // on delete form
  void deleteForm(var name) {
    setState(() {
      for (var i = 0; i < formProducts.length; i++) {
        if (name == formProducts[i].product['name']) {
          formProducts.remove(formProducts[i]);
        }
      }
    });
  }

  // on add new form
  void addForm(Map<String, dynamic> prod) {
    setState(() {
      formProducts.add(
        SingleForm(
          product: prod,
          onDelete: () => deleteForm(prod['name']),
        ),
      );
    });
  }

  ///on save forms
  void onSave() {
    if (formProducts.length > 0) {
      List<Map<String, dynamic>> bill = [];
      var data = formProducts.map((it) {
        if (it.form.currentState != null) {
          it.saveForm();
          bill.add({
            "name": it.product['name'],
            "unitCount": it.unitCount,
            "boxCount": it.boxCount,
            "containerCount": it.containerCount,
            "unitPrice": it.unitPrice,
            "boxPrice": it.boxPrice,
            "containerPrice": it.containerPrice
          });
        } else {}

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
                    itemCount: data[0].length,
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
                Container(
                  padding: EdgeInsets.only(left: 15, right: 15, bottom: 15),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            SizedBox(height: 13,),
                            Container(
                              child: RaisedButton(
                                padding: EdgeInsets.all(8),
                                onPressed: () {},
                                child: Text(
                                  'أضافة',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                            SizedBox(height: 7,),
                            Container(
                              child: RaisedButton(
                                padding: EdgeInsets.all(0),
                                onPressed: () {},
                                child: Text(
                                  'طباعة فاتورة',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: <Widget>[
                              Container(
                                child: Text(
                                  'قيمة الفاتورة',
                                  textAlign: TextAlign.right,
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  color: AppColors().mainColor,
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                width: MediaQuery.of(context).size.width,
                                child: Text(
                                  '1000',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                              Container(
                                child: Text('قيمة الديون'),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  color: AppColors().mainColor,
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                padding: EdgeInsets.all(10),
                                width: MediaQuery.of(context).size.width,
                                child: Text(
                                  '750',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: <Widget>[
                              Container(
                                child: Text('القيمة المسددة'),
                              ),
                              Container(
                                child: Form(
                                  child: TextFormField(
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                    keyboardType: TextInputType.number,
                                    initialValue: '0',
                                    decoration: InputDecoration(
                                        filled: true,
                                        fillColor: AppColors().mainColor,
                                        contentPadding: EdgeInsets.all(9),
                                        border: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: AppColors().mainColor))),
                                  ),
                                ),
                              ),
                              Container(
                                child: Text('قيمة الديون المتبقيه'),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  color: AppColors().mainColor,
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                padding: EdgeInsets.all(10),
                                width: MediaQuery.of(context).size.width,
                                child: Text(
                                  '750',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ],
                          ),
                        ),
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
