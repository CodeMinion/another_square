
import 'dart:convert';
import 'package:another_square/services/authentication_service.dart';
import 'package:another_square/square_models.dart';
import 'package:http/http.dart' as http;

///
/// URL: https://developer.squareup.com/docs/orders-api/create-orders
/// You can create Order objects by calling the CreateOrder endpoint.
/// Order objects can be created with any combination of line items,
/// fulfillment objects, taxes, and discounts. They can also be created
/// empty and updated with elements over time.
//
// Sellers can view orders in the Seller Dashboard; however, note that
// Square pushes orders to the Seller Dashboard only if the orders meet
// specific conditions
///
class OrderService {
  final String baseUrl;
  final AuthenticationService authenticationService;

  OrderService(
      {required this.baseUrl, required this.authenticationService});


  ///
  /// Creates a Terminal checkout request and sends it to the
  /// specified device to take a payment for the requested amount.
  ///
  Future<Order> createOrder({
    required CreateOrderRequest request,
    String? authToken,
  }) async {

    authToken ??= authenticationService.getCachedToken()?.accessToken;

    Map<String, String> headers = {
      "Authorization": "Bearer ${authToken ?? ""}",
      'Content-Type': 'application/json; charset=UTF-8',
      'Accept': 'application/json',

    };

    Uri endpoint = Uri.https(
        baseUrl, "/v2/orders");

    //print (endpoint.toString());

    var response = await
    http.post(endpoint, body: jsonEncode(request.toJson()), headers: headers);

    if (response.statusCode == 200) {
      print (jsonDecode(response.body));
      return OrderResponse.fromJson(jsonDecode(response.body)).order!;
    }
    else {
      print (response.body);
      throw OrderException(statusCode: response.statusCode, message: TerminalCheckoutResponse.fromJson(jsonDecode(response.body)).errors?[0].detail?.toString());
    }
  }

  ///
  /// Retrieves a set of orders by their IDs.
  /// If a given order ID does not exist, the ID is ignored
  /// instead of generating an error.
  ///
  Future<List<Order>> batchOrderRead({
    required BatchOrderRequest request,
    String? authToken,
  }) async {

    authToken ??= authenticationService.getCachedToken()?.accessToken;

    Map<String, String> headers = {
      "Authorization": "Bearer ${authToken ?? ""}",
      'Content-Type': 'application/json; charset=UTF-8',
      'Accept': 'application/json',

    };

    Uri endpoint = Uri.https(
        baseUrl, "/v2/orders/batch-retrieve");

    //print (endpoint.toString());

    var response = await
    http.post(endpoint, body: jsonEncode(request.toJson()), headers: headers);

    if (response.statusCode == 200) {
      print (jsonDecode(response.body));
      return OrderResponse.fromJson(jsonDecode(response.body)).orders ?? List.empty();
    }
    else {
      print (response.body);
      throw OrderException(statusCode: response.statusCode, message: TerminalCheckoutResponse.fromJson(jsonDecode(response.body)).errors?[0].detail?.toString());
    }
  }

  ///
  /// Enables applications to preview order
  /// pricing without creating an order.
  ///
  Future<Order> calculateOrder({
    required CalculateOrderRequest request,
    String? authToken,
  }) async {

    authToken ??= authenticationService.getCachedToken()?.accessToken;

    Map<String, String> headers = {
      "Authorization": "Bearer ${authToken ?? ""}",
      'Content-Type': 'application/json; charset=UTF-8',
      'Accept': 'application/json',

    };

    Uri endpoint = Uri.https(
        baseUrl, "/v2/orders/calculate");

    //print (endpoint.toString());

    var response = await
    http.post(endpoint, body: jsonEncode(request.toJson()), headers: headers);

    if (response.statusCode == 200) {
      print (jsonDecode(response.body));
      return OrderResponse.fromJson(jsonDecode(response.body)).order!;
    }
    else {
      print (response.body);
      throw OrderException(statusCode: response.statusCode, message: TerminalCheckoutResponse.fromJson(jsonDecode(response.body)).errors?[0].detail?.toString());
    }
  }

  /// Creates a new order, in the DRAFT state, by duplicating an existing order.
  ///
  /// The newly created order has only the core fields (such as
  /// line items, taxes, and discounts) copied from the original order.
  ///
  Future<Order> cloneOrder({
    required CloneOrderRequest request,
    String? authToken,
  }) async {

    authToken ??= authenticationService.getCachedToken()?.accessToken;

    Map<String, String> headers = {
      "Authorization": "Bearer ${authToken ?? ""}",
      'Content-Type': 'application/json; charset=UTF-8',
      'Accept': 'application/json',

    };

    Uri endpoint = Uri.https(
        baseUrl, "/v2/orders/clone");

    //print (endpoint.toString());

    var response = await
    http.post(endpoint, body: jsonEncode(request.toJson()), headers: headers);

    if (response.statusCode == 200) {
      print (jsonDecode(response.body));
      return OrderResponse.fromJson(jsonDecode(response.body)).order!;
    }
    else {
      print (response.body);
      throw OrderException(statusCode: response.statusCode, message: TerminalCheckoutResponse.fromJson(jsonDecode(response.body)).errors?[0].detail?.toString());
    }
  }

  ///
  /// Search all orders for one or more locations.
  //.
  /// Orders include all sales, returns, and exchanges regardless
  /// of how or when they entered the Square ecosystem
  /// (such as Point of Sale, Invoices, and Connect APIs).
  ///
  Future<OrderResponse> searchOrder({
    required SearchOrderRequest request,
    String? authToken,
  }) async {

    authToken ??= authenticationService.getCachedToken()?.accessToken;

    Map<String, String> headers = {
      "Authorization": "Bearer ${authToken ?? ""}",
      'Content-Type': 'application/json; charset=UTF-8',
      'Accept': 'application/json',

    };

    Uri endpoint = Uri.https(
        baseUrl, "/v2/orders/search");

    //print (endpoint.toString());

    var response = await
    http.post(endpoint, body: jsonEncode(request.toJson()), headers: headers);

    if (response.statusCode == 200) {
      print (jsonDecode(response.body));
      return OrderResponse.fromJson(jsonDecode(response.body));
    }
    else {
      print (response.body);
      throw OrderException(statusCode: response.statusCode, message: TerminalCheckoutResponse.fromJson(jsonDecode(response.body)).errors?[0].detail?.toString());
    }
  }

  ///
  /// Retrieves an Order by ID.
  ///
  Future<Order> readOrder({
    required String orderId,
    String? authToken,
  }) async {

    authToken ??= authenticationService.getCachedToken()?.accessToken;

    Map<String, String> headers = {
      "Authorization": "Bearer ${authToken ?? ""}",
      'Content-Type': 'application/json; charset=UTF-8',
      'Accept': 'application/json',

    };

    Uri endpoint = Uri.https(
        baseUrl, "/v2/orders/$orderId");

    //print (endpoint.toString());

    var response = await
    http.get(endpoint, headers: headers);

    if (response.statusCode == 200) {
      print (jsonDecode(response.body));
      return OrderResponse.fromJson(jsonDecode(response.body)).order!;
    }
    else {
      print (response.body);
      throw OrderException(statusCode: response.statusCode, message: TerminalCheckoutResponse.fromJson(jsonDecode(response.body)).errors?[0].detail?.toString());
    }
  }

  ///
  /// Updates an open order by adding, replacing, or deleting fields.
  ///
  /// Orders with a COMPLETED or CANCELED state cannot be updated.
  ///
  Future<Order> updateOrder({
    required int orderId,
    required UpdateOrderRequest request,
    String? authToken,
  }) async {

    authToken ??= authenticationService.getCachedToken()?.accessToken;

    Map<String, String> headers = {
      "Authorization": "Bearer ${authToken ?? ""}",
      'Content-Type': 'application/json; charset=UTF-8',
      'Accept': 'application/json',

    };

    Uri endpoint = Uri.https(
        baseUrl, "/v2/orders/$orderId");

    //print (endpoint.toString());

    var response = await
    http.put(endpoint, body: jsonEncode(request.toJson()), headers: headers);

    if (response.statusCode == 200) {
      print (jsonDecode(response.body));
      return OrderResponse.fromJson(jsonDecode(response.body)).order!;
    }
    else {
      print (response.body);
      throw OrderException(statusCode: response.statusCode, message: TerminalCheckoutResponse.fromJson(jsonDecode(response.body)).errors?[0].detail?.toString());
    }
  }

  ///
  /// Pay for an order using one or more approved payments or
  /// settle an order with a total of 0.
  ///
  /// The total of the payment_ids listed in the request must
  /// be equal to the order total. Orders with a total amount
  /// of 0 can be marked as paid by specifying an empty array
  /// of payment_ids in the request.
  ///
  Future<Order> payOrder({
    required int orderId,
    required PayOrderRequest request,
    String? authToken,
  }) async {

    authToken ??= authenticationService.getCachedToken()?.accessToken;

    Map<String, String> headers = {
      "Authorization": "Bearer ${authToken ?? ""}",
      'Content-Type': 'application/json; charset=UTF-8',
      'Accept': 'application/json',

    };

    Uri endpoint = Uri.https(
        baseUrl, "/v2/orders/$orderId/pay");

    //print (endpoint.toString());

    var response = await
    http.post(endpoint, body: jsonEncode(request.toJson()), headers: headers);

    if (response.statusCode == 200) {
      print (jsonDecode(response.body));
      return OrderResponse.fromJson(jsonDecode(response.body)).order!;
    }
    else {
      print (response.body);
      throw OrderException(statusCode: response.statusCode, message: TerminalCheckoutResponse.fromJson(jsonDecode(response.body)).errors?[0].detail?.toString());
    }
  }
}

class OrderException implements Exception {
  final String? message;
  final int statusCode;

  OrderException({required this.statusCode, this.message});

  @override
  String toString() {
    return "OrderException: $statusCode - $message";
  }
}

