import 'dart:convert';

import 'package:frontend/models/orders.dart';
import 'package:http/http.dart' as http;

const String orderURL = "http://127.0.0.1:8000/orderdetails";

class OrdersHandler {
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
      List<Orders> orders = [];
      jsonResponse.map((json) {
        orders.add(Orders.fromJson(json));
      }).toList();
      return orders;
    }
  }
}
