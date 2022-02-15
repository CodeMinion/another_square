
import 'dart:convert';
import 'package:another_square/services/authentication_service.dart';
import 'package:another_square/square_models.dart';
import 'package:http/http.dart' as http;

///
/// URL: https://developer.squareup.com/reference/square/payments-api
///
///
class BankAccountService {
  final String baseUrl;
  final AuthenticationService authenticationService;

  BankAccountService(
      {required this.baseUrl, required this.authenticationService});



  ///
  /// Retrieves a list of payments taken by the account making the request.
  ///
  /// Results are eventually consistent, and new payments or
  /// changes to payments might take several seconds to appear.
  ///
  /// The maximum results per page is 100.
  ///
  Future<SquarePaymentResponse> listPayments({
    required ListPaymentRequest request,
    String? authToken,
  }) async {

    authToken ??= authenticationService.getCachedToken()?.accessToken;

    Map<String, String> headers = {
      "Authorization": "Bearer ${authToken ?? ""}",
      'Content-Type': 'application/json; charset=UTF-8',
      'Accept': 'application/json',

    };

    Uri endpoint = Uri.https(
        baseUrl, "/v2/payments", request.toJson());

    //print (endpoint.toString());

    var response = await
    http.get(endpoint,  headers: headers);

    if (response.statusCode == 200) {
      print (jsonDecode(response.body));
      return SquarePaymentResponse.fromJson(jsonDecode(response.body));
    }
    else {
      print (response.body);
      throw PaymentException(statusCode: response.statusCode, message: SquarePaymentResponse.fromJson(jsonDecode(response.body)).errors?[0].detail?.toString());
    }
  }

  ///
  /// Creates a payment using the provided source.
  ///
  /// You can use this endpoint to charge a card (credit/debit card or
  /// Square gift card) or record a payment that the seller
  /// received outside of Square (cash payment from a buyer or a
  /// payment that an external entity processed on behalf of the seller).
  ///
  Future<Payment> createPayment({
    required CreatePaymentRequest request,
    String? authToken,
  }) async {

    authToken ??= authenticationService.getCachedToken()?.accessToken;

    Map<String, String> headers = {
      "Authorization": "Bearer ${authToken ?? ""}",
      'Content-Type': 'application/json; charset=UTF-8',
      'Accept': 'application/json',

    };

    Uri endpoint = Uri.https(
        baseUrl, "/v2/payments");

    //print (endpoint.toString());

    var response = await
    http.post(endpoint, body: request.toJson(), headers: headers);

    if (response.statusCode == 200) {
      print (jsonDecode(response.body));
      return SquarePaymentResponse.fromJson(jsonDecode(response.body)).payment!;
    }
    else {
      print (response.body);
      throw PaymentException(statusCode: response.statusCode, message: SquarePaymentResponse.fromJson(jsonDecode(response.body)).errors?[0].detail?.toString());
    }
  }

  ///
  /// Cancels (voids) a payment identified by the idempotency key
  /// that is specified in the request.
  ///
  /// Use this method when the status of a CreatePayment request
  /// is unknown (for example, after you send a CreatePayment
  /// request, a network error occurs and you do not get a response).
  /// In this case, you can direct Square to cancel the payment using
  /// this endpoint. In the request, you provide the same idempotency
  /// key that you provided in your CreatePayment request that you want
  /// to cancel. After canceling the payment, you can submit your
  /// CreatePayment request again.
  ///
  /// Note that if no payment with the specified idempotency key is found,
  /// no action is taken and the endpoint returns successful
  ///
  Future<bool> cancelPaymentByIdempotencyKey({
    required String idempotencyKey,
    String? authToken,
  }) async {

    authToken ??= authenticationService.getCachedToken()?.accessToken;

    Map<String, String> headers = {
      "Authorization": "Bearer ${authToken ?? ""}",
      'Content-Type': 'application/json; charset=UTF-8',
      'Accept': 'application/json',

    };

    Uri endpoint = Uri.https(
        baseUrl, "/v2/payments/cancel");

    //print (endpoint.toString());

    var request = {
      "idempotency_key": idempotencyKey
    };
    var response = await
    http.post(endpoint, body: jsonEncode(request), headers: headers);

    if (response.statusCode == 200) {
      print (jsonDecode(response.body));
      return true;
    }
    else {
      print (response.body);
      throw PaymentException(statusCode: response.statusCode, message: SquarePaymentResponse.fromJson(jsonDecode(response.body)).errors?[0].detail?.toString());
    }
  }

  ///
  /// Retrieves details for a specific payment.
  ///
  Future<Payment> readPayment({
    required String paymentId,
    String? authToken,
  }) async {

    authToken ??= authenticationService.getCachedToken()?.accessToken;

    Map<String, String> headers = {
      "Authorization": "Bearer ${authToken ?? ""}",
      'Content-Type': 'application/json; charset=UTF-8',
      'Accept': 'application/json',

    };

    Uri endpoint = Uri.https(
        baseUrl, "/v2/payments/$paymentId");

    //print (endpoint.toString());

    var response = await
    http.get(endpoint, headers: headers);

    if (response.statusCode == 200) {
      print (jsonDecode(response.body));
      return SquarePaymentResponse.fromJson(jsonDecode(response.body)).payment!;
    }
    else {
      print (response.body);
      throw PaymentException(statusCode: response.statusCode, message: SquarePaymentResponse.fromJson(jsonDecode(response.body)).errors?[0].detail?.toString());
    }
  }

  ///
  /// Updates a payment with the APPROVED status.
  ///
  /// You can update the amount_money and tip_money using this endpoint.
  ///
  Future<Payment> updatePayment({
    required String paymentId,
    required UpdatePaymentRequest request,
    String? authToken,
  }) async {

    authToken ??= authenticationService.getCachedToken()?.accessToken;

    Map<String, String> headers = {
      "Authorization": "Bearer ${authToken ?? ""}",
      'Content-Type': 'application/json; charset=UTF-8',
      'Accept': 'application/json',

    };

    Uri endpoint = Uri.https(
        baseUrl, "/v2/payments/$paymentId");

    //print (endpoint.toString());

    var response = await
    http.put(endpoint, body:request.toJson(), headers: headers);

    if (response.statusCode == 200) {
      print (jsonDecode(response.body));
      return SquarePaymentResponse.fromJson(jsonDecode(response.body)).payment!;
    }
    else {
      print (response.body);
      throw PaymentException(statusCode: response.statusCode, message: SquarePaymentResponse.fromJson(jsonDecode(response.body)).errors?[0].detail?.toString());
    }
  }

  ///
  /// Cancels (voids) a payment.
  ///
  /// You can use this endpoint to cancel a payment with the APPROVED status.
  ///
  Future<bool> cancelPayment({
    required String paymentId,
    String? authToken,
  }) async {

    authToken ??= authenticationService.getCachedToken()?.accessToken;

    Map<String, String> headers = {
      "Authorization": "Bearer ${authToken ?? ""}",
      'Content-Type': 'application/json; charset=UTF-8',
      'Accept': 'application/json',

    };

    Uri endpoint = Uri.https(
        baseUrl, "/v2/payments/$paymentId/cancel");

    //print (endpoint.toString());

    var response = await
    http.post(endpoint, headers: headers);

    if (response.statusCode == 200) {
      print (jsonDecode(response.body));
      return true;
    }
    else {
      print (response.body);
      throw PaymentException(statusCode: response.statusCode, message: SquarePaymentResponse.fromJson(jsonDecode(response.body)).errors?[0].detail?.toString());
    }
  }

  ///
  /// Completes (captures) a payment.
  ///
  /// By default, payments are set to complete immediately
  /// after they are created.
  ///
  /// You can use this endpoint to complete a payment with the
  /// APPROVED status.
  ///
  Future<Payment> completePayment({
    required String paymentId,
    required CompletePaymentRequest request,
    String? authToken,
  }) async {

    authToken ??= authenticationService.getCachedToken()?.accessToken;

    Map<String, String> headers = {
      "Authorization": "Bearer ${authToken ?? ""}",
      'Content-Type': 'application/json; charset=UTF-8',
      'Accept': 'application/json',

    };

    Uri endpoint = Uri.https(
        baseUrl, "/v2/payments/$paymentId/complete");

    //print (endpoint.toString());

    var response = await
    http.post(endpoint, body:request.toJson(), headers: headers);

    if (response.statusCode == 200) {
      print (jsonDecode(response.body));
      return SquarePaymentResponse.fromJson(jsonDecode(response.body)).payment!;
    }
    else {
      print (response.body);
      throw PaymentException(statusCode: response.statusCode, message: SquarePaymentResponse.fromJson(jsonDecode(response.body)).errors?[0].detail?.toString());
    }
  }

  ///
  /// Retrieves a list of refunds for the account making the request.
  ///
  /// Results are eventually consistent, and new refunds or changes
  /// to refunds might take several seconds to appear.
  ///
  Future<SquareRefundResponse> listRefunds({
    required ListRefundsRequest request,
    String? authToken,
  }) async {

    authToken ??= authenticationService.getCachedToken()?.accessToken;

    Map<String, String> headers = {
      "Authorization": "Bearer ${authToken ?? ""}",
      'Content-Type': 'application/json; charset=UTF-8',
      'Accept': 'application/json',

    };

    Uri endpoint = Uri.https(
        baseUrl, "/v2/refunds", request.toJson());

    //print (endpoint.toString());

    var response = await
    http.get(endpoint,  headers: headers);

    if (response.statusCode == 200) {
      print (jsonDecode(response.body));
      return SquareRefundResponse.fromJson(jsonDecode(response.body));
    }
    else {
      print (response.body);
      throw PaymentException(statusCode: response.statusCode, message: SquareRefundResponse.fromJson(jsonDecode(response.body)).errors?[0].detail?.toString());
    }
  }
  // TODO Add remaining calls.

}

class PaymentException implements Exception {
  final String? message;
  final int statusCode;

  PaymentException({required this.statusCode, this.message});

  @override
  String toString() {
    return "PaymentException: $statusCode - $message";
  }
}

