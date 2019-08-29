import 'package:elropy/models/customer.dart';
import 'package:http/http.dart' as http;
import 'package:elropy/utilities/base_api.dart';
import 'dart:convert';

class CustomerApi {
  String allClientData = baseApi + allCustomers;

  Future<List<Customer>> getAllCustomers() async {
    List<Customer> customers = [];
    try {
      var response = await http.get(allClientData);
      if (response.statusCode == 200) {
        var jsonData = jsonDecode(response.body);
        for (var i = 0; i < jsonData.length; i++) {
          if (jsonData[i]['dept'].isEmpty) {
            customers.add(
              Customer(jsonData[i]['name'], jsonData[i]['number'],
                  jsonData[i]['address'], 0),
            );
          } else {
            customers.add(
              Customer(
                  jsonData[i]['name'],
                  jsonData[i]['number'],
                  jsonData[i]['address'],
                  jsonData[i]['dept'][0]['value']),
            );
          }
        }
      }
    } catch (e) {
      print('error');
      print(e);
    }
    return customers;
  }
}
