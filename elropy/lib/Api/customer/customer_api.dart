import 'package:elropy/models/customer.dart';
import 'package:http/http.dart' as http;
import 'package:elropy/utilities/base_api.dart';
import 'dart:convert';

class CustomerApi {
  // add new  customer api url
  String addClient = baseApi + addCustomer;

    Future<Map<String, dynamic>> addNewCustomer(Map<String, dynamic> data) async {
    Map<String, dynamic> messageCome;
    try {
      var response = await http.post(addClient, body: data);
      if(response.statusCode == 200) {
        messageCome = jsonDecode(response.body);
      }
      else {
        messageCome = {
        "status": false,
        "message": "عذرا حدث خطا في الاتصال"
      };
      }
    } catch (e) {
      messageCome = {
        "status": false,
        "message": "عذرا حدث خطا في الاتصال"
      };
    }
    return messageCome;
  }
  // get All customers data api url
  String allClientData = baseApi + allCustomers;

  // return all customers data
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
