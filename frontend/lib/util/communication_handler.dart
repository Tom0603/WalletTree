import 'dart:convert';

import 'package:frontend/models/orders.dart';
import 'package:http/http.dart' as http;

const String orderURL = "http://127.0.0.1:8000/orderdetails";

class OrdersHandler {
  /// List containing the users orders
  final List<Orders> _orders = [];
  List<Orders> get orders {
    return [..._orders];
  }

  Future<List<Orders>> fetchOrders() async {
    /// FOR DEBUG PURPOSES
    print("fetching");

    http.Response response = await http.get(Uri.parse(orderURL));

    if (response.statusCode != 200) {
      /// FOR DEBUG PURPOSES
      print("Exception");

      throw Exception("Error, ${response.statusCode}");
    } else {
      /// FOR DEBUG PURPOSES
      print("Success");

      List<dynamic> jsonResponse = jsonDecode(response.body);
      jsonResponse.map((json) {
        _orders.add(Orders.fromJson(json));
      }).toList();
      return _orders;
    }
  }


  Future<Orders> addOrders(String ticker) async {
    http.Response response = await http.post(Uri.parse(orderURL), headers: {"Content-Type": "application/json"}, body: jsonEncode(ticker));

    if (response.statusCode != 201) {
      /// FOR DEBUG PURPOSES
      print("Exception");
      throw Exception("Error creating an order: ${response.statusCode}");
    } else {
      return Orders.fromJson(jsonDecode(response.body));
    }
  }



}
