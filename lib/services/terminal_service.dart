
import 'dart:convert';
import 'package:another_square/services/authentication_service.dart';
import 'package:another_square/square_models.dart';
import 'package:http/http.dart' as http;

///
/// URL: https://developer.squareup.com/reference/square/terminal-api
/// The Terminal API allows you to manage terminal checkout and Interac
/// refund requests sent to a paired Square Terminal. You can create a
/// checkout or Interac refund request, check its status, cancel the
/// request, search for in-process requests, and get the results of
/// the request after it is completed.
///
class TerminalService {
  final String baseUrl;
  final AuthenticationService authenticationService;

  TerminalService(
      {required this.baseUrl, required this.authenticationService});


  ///
  /// Creates a Terminal checkout request and sends it to the
  /// specified device to take a payment for the requested amount.
  ///
  Future<TerminalCheckout> createTerminalCheckout({
    required CreateTerminalCheckoutRequest request,
    String? authToken,
  }) async {

    authToken ??= authenticationService.getCachedToken()?.accessToken;

    Map<String, String> headers = {
      "Authorization": "Bearer ${authToken ?? ""}",
      'Content-Type': 'application/json; charset=UTF-8',
      'Accept': 'application/json',

    };


    Uri endpoint = Uri.https(
        baseUrl, "/v2/terminals/checkouts");

    //print (endpoint.toString());

    var response = await
    http.post(endpoint, body: jsonEncode(request.toJson()), headers: headers);

    if (response.statusCode == 200) {
      print (jsonDecode(response.body));
      return TerminalCheckoutResponse.fromJson(jsonDecode(response.body)).termCheckout!;
    }
    else {
      print (response.body);
      throw TerminalException(statusCode: response.statusCode, message: TerminalCheckoutResponse.fromJson(jsonDecode(response.body)).errors?.take(0).toString());
    }
  }

  ///
  /// Retrieves a filtered list of Terminal checkout requests
  /// created by the account making the request.
  ///
  Future<TerminalCheckoutResponse> searchTerminalCheckout({
    required SearchTerminalRequest request,
    String? authToken,
  }) async {

    authToken ??= authenticationService.getCachedToken()?.accessToken;

    Map<String, String> headers = {
      "Authorization": "Bearer ${authToken ?? ""}",
      'Content-Type': 'application/json; charset=UTF-8',
      'Accept': 'application/json',

    };


    Uri endpoint = Uri.https(
        baseUrl, "/v2/terminals/checkouts/search");

    var response = await
    http.post(endpoint, body: jsonEncode(request.toJson()), headers: headers);

    if (response.statusCode == 200) {
      //print (jsonDecode(response.body));
      return TerminalCheckoutResponse.fromJson(jsonDecode(response.body));
    }
    else {
      throw TerminalException(statusCode: response.statusCode, message: TerminalCheckoutResponse.fromJson(jsonDecode(response.body)).errors?.take(0).toString());
    }
  }


  ///
  /// Retrieves a Terminal checkout request by [checkoutId].
  ///
  Future<TerminalCheckout> readTerminalCheckout({
    required String checkoutId,
    String? authToken,
  }) async {

    authToken ??= authenticationService.getCachedToken()?.accessToken;

    Map<String, String> headers = {
      "Authorization": "Bearer ${authToken ?? ""}",
      'Content-Type': 'application/json; charset=UTF-8',
      'Accept': 'application/json',

    };


    Uri endpoint = Uri.https(
        baseUrl, "/v2/terminals/checkouts/$checkoutId");

    //print (endpoint.toString());

    var response = await
    http.get(endpoint, headers: headers);

    if (response.statusCode == 200) {
      //print (jsonDecode(response.body));
      return TerminalCheckoutResponse.fromJson(jsonDecode(response.body)).termCheckout!;
    }
    else {
      throw TerminalException(statusCode: response.statusCode, message: TerminalCheckoutResponse.fromJson(jsonDecode(response.body)).errors?.take(0).toString());
    }
  }

  ///
  /// Cancels a Terminal checkout request if the status of the request permits it.
  ///
  Future<TerminalCheckout> cancelTerminalCheckout({
    required String checkoutId,
    String? authToken,
  }) async {

    authToken ??= authenticationService.getCachedToken()?.accessToken;

    Map<String, String> headers = {
      "Authorization": "Bearer ${authToken ?? ""}",
      'Content-Type': 'application/json; charset=UTF-8',
      'Accept': 'application/json',

    };


    Uri endpoint = Uri.https(
        baseUrl, "/v2/terminals/checkouts/$checkoutId/cancel");

    //print (endpoint.toString());

    var response = await
    http.post(endpoint, headers: headers);

    if (response.statusCode == 200) {
      //print (jsonDecode(response.body));
      return TerminalCheckoutResponse.fromJson(jsonDecode(response.body)).termCheckout!;
    }
    else {
      throw TerminalException(statusCode: response.statusCode, message: TerminalCheckoutResponse.fromJson(jsonDecode(response.body)).errors?.take(0).toString());
    }
  }

  ///
  /// Creates a request to refund an Interac payment completed
  /// on a Square Terminal.
  ///
  Future<TerminalRefund> createTerminalRefund({
    required CreateRefundRequest request,
    String? authToken,
  }) async {

    authToken ??= authenticationService.getCachedToken()?.accessToken;

    Map<String, String> headers = {
      "Authorization": "Bearer ${authToken ?? ""}",
      'Content-Type': 'application/json; charset=UTF-8',
      'Accept': 'application/json',

    };


    Uri endpoint = Uri.https(
        baseUrl, "/v2/terminals/refunds");

    //print (endpoint.toString());

    var response = await
    http.post(endpoint, body: jsonEncode(request.toJson()), headers: headers);

    if (response.statusCode == 200) {
      //print (jsonDecode(response.body));
      return TerminalRefundResponse.fromJson(jsonDecode(response.body)).refund!;
    }
    else {
      throw TerminalException(statusCode: response.statusCode, message: TerminalRefundResponse.fromJson(jsonDecode(response.body)).errors?.take(0).toString());
    }
  }

  ///
  /// Retrieves a filtered list of Interac Terminal refund requests
  /// created by the seller making the request.
  ///
  Future<TerminalRefundResponse> searchTerminalRefund({
    required SearchTerminalRequest request,
    String? authToken,
  }) async {

    authToken ??= authenticationService.getCachedToken()?.accessToken;

    Map<String, String> headers = {
      "Authorization": "Bearer ${authToken ?? ""}",
      'Content-Type': 'application/json; charset=UTF-8',
      'Accept': 'application/json',

    };


    Uri endpoint = Uri.https(
        baseUrl, "/v2/terminals/refunds/search");

    var response = await
    http.post(endpoint, body: jsonEncode(request.toJson()), headers: headers);

    if (response.statusCode == 200) {
      //print (jsonDecode(response.body));
      return TerminalRefundResponse.fromJson(jsonDecode(response.body));
    }
    else {
      throw TerminalException(statusCode: response.statusCode, message: TerminalRefundResponse.fromJson(jsonDecode(response.body)).errors?.take(0).toString());
    }
  }

  ///
  /// Retrieves an Interac Terminal refund object by ID.
  ///
  Future<TerminalRefund> readTerminalRefund({
    required String terminalRefundId,
    String? authToken,
  }) async {

    authToken ??= authenticationService.getCachedToken()?.accessToken;

    Map<String, String> headers = {
      "Authorization": "Bearer ${authToken ?? ""}",
      'Content-Type': 'application/json; charset=UTF-8',
      'Accept': 'application/json',

    };


    Uri endpoint = Uri.https(
        baseUrl, "/v2/terminals/refunds/$terminalRefundId");

    //print (endpoint.toString());

    var response = await
    http.get(endpoint, headers: headers);

    if (response.statusCode == 200) {
      //print (jsonDecode(response.body));
      return TerminalRefundResponse.fromJson(jsonDecode(response.body)).refund!;
    }
    else {
      throw TerminalException(statusCode: response.statusCode, message: TerminalRefundResponse.fromJson(jsonDecode(response.body)).errors?.take(0).toString());
    }
  }

  ///
  /// Cancels a Terminal checkout request if the status of the request permits it.
  ///
  Future<TerminalRefund> cancelTerminalRefund({
    required String terminalRefundId,
    String? authToken,
  }) async {

    authToken ??= authenticationService.getCachedToken()?.accessToken;

    Map<String, String> headers = {
      "Authorization": "Bearer ${authToken ?? ""}",
      'Content-Type': 'application/json; charset=UTF-8',
      'Accept': 'application/json',

    };


    Uri endpoint = Uri.https(
        baseUrl, "/v2/terminals/refunds/$terminalRefundId}/cancel");

    //print (endpoint.toString());

    var response = await
    http.post(endpoint, headers: headers);

    if (response.statusCode == 200) {
      //print (jsonDecode(response.body));
      return TerminalRefundResponse.fromJson(jsonDecode(response.body)).refund!;
    }
    else {
      throw TerminalException(statusCode: response.statusCode, message: TerminalRefundResponse.fromJson(jsonDecode(response.body)).errors?.take(0).toString());
    }
  }
}

class TerminalException implements Exception {
  final String? message;
  final int statusCode;

  TerminalException({required this.statusCode, this.message});

  @override
  String toString() {
    return "TerminalException: $statusCode - $message";
  }
}

