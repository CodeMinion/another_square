
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

