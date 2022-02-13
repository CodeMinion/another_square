
import 'dart:convert';
import 'package:another_square/services/authentication_service.dart';
import 'package:another_square/square_models.dart';
import 'package:http/http.dart' as http;

///
/// URL: https://developer.squareup.com/reference/square/bank-accounts-api
/// The Bank Accounts API allows you to get basic details about a
/// seller's bank account, such as the last few digits of the account
/// number and the routing number. It can be paired with the Settlements
/// API to understand the pattern of deposits and withdrawals from a
/// seller's bank account.
///
class BankAccountService {
  final String baseUrl;
  final AuthenticationService authenticationService;

  BankAccountService(
      {required this.baseUrl, required this.authenticationService});




  ///
  /// Returns a list of BankAccount objects linked to a Square account.
  ///
  Future<BankAccountResponse> listBankAccounts({
    required ListBankAccountsRequest request,
    String? authToken,
  }) async {

    authToken ??= authenticationService.getCachedToken()?.accessToken;

    Map<String, String> headers = {
      "Authorization": "Bearer ${authToken ?? ""}",
      'Content-Type': 'application/json; charset=UTF-8',
      'Accept': 'application/json',

    };

    Uri endpoint = Uri.https(
        baseUrl, "/v2/bank-accounts", request.toJson());

    //print (endpoint.toString());

    var response = await
    http.get(endpoint,  headers: headers);

    if (response.statusCode == 200) {
      print (jsonDecode(response.body));
      return BankAccountResponse.fromJson(jsonDecode(response.body));
    }
    else {
      print (response.body);
      throw BankAccountException(statusCode: response.statusCode, message: BankAccountResponse.fromJson(jsonDecode(response.body)).errors?[0].detail?.toString());
    }
  }

  ///
  /// Returns details of a BankAccount identified by V1 bank account ID.
  ///
  Future<BankAccount> readBankAccountByV1Id({
    required String v1BankAccountId,
    String? authToken,
  }) async {

    authToken ??= authenticationService.getCachedToken()?.accessToken;

    Map<String, String> headers = {
      "Authorization": "Bearer ${authToken ?? ""}",
      'Content-Type': 'application/json; charset=UTF-8',
      'Accept': 'application/json',

    };

    Uri endpoint = Uri.https(
        baseUrl, "/v2/bank-accounts/by-v1-id/$v1BankAccountId");

    //print (endpoint.toString());

    var response = await
    http.get(endpoint,  headers: headers);

    if (response.statusCode == 200) {
      print (jsonDecode(response.body));
      return BankAccountResponse.fromJson(jsonDecode(response.body)).bankAccount!;
    }
    else {
      print (response.body);
      throw BankAccountException(statusCode: response.statusCode, message: BankAccountResponse.fromJson(jsonDecode(response.body)).errors?[0].detail?.toString());
    }
  }

  ///
  /// Returns details of a BankAccount linked to a Square account.
  ///
  Future<BankAccount> readBankAccountById({
    required String bankAccountId,
    String? authToken,
  }) async {

    authToken ??= authenticationService.getCachedToken()?.accessToken;

    Map<String, String> headers = {
      "Authorization": "Bearer ${authToken ?? ""}",
      'Content-Type': 'application/json; charset=UTF-8',
      'Accept': 'application/json',

    };

    Uri endpoint = Uri.https(
        baseUrl, "/v2/bank-accounts/$bankAccountId");

    //print (endpoint.toString());

    var response = await
    http.get(endpoint,  headers: headers);

    if (response.statusCode == 200) {
      print (jsonDecode(response.body));
      return BankAccountResponse.fromJson(jsonDecode(response.body)).bankAccount!;
    }
    else {
      print (response.body);
      throw BankAccountException(statusCode: response.statusCode, message: BankAccountResponse.fromJson(jsonDecode(response.body)).errors?[0].detail?.toString());
    }
  }

}

class BankAccountException implements Exception {
  final String? message;
  final int statusCode;

  BankAccountException({required this.statusCode, this.message});

  @override
  String toString() {
    return "BankAccountException: $statusCode - $message";
  }
}

