
import 'dart:convert';
import 'package:another_square/services/authentication_service.dart';
import 'package:another_square/square_models.dart';
import 'package:http/http.dart' as http;

///
/// URL: https://developer.squareup.com/reference/square/customers-api
/// Create and manage customer profiles and sync CRM systems with Square.
///
/// The Customers API enables you to create and manage customer profiles,
/// as well as search for customers based on various criteria (including
/// customer group membership). You can also use the API to sync contacts
/// between your CRM system and Square.
///
class CustomerService {
  final String baseUrl;
  final AuthenticationService authenticationService;

  CustomerService(
      {required this.baseUrl, required this.authenticationService});



  ///
  /// Lists customer profiles associated with a Square account.
  ///
  /// Under normal operating conditions, newly created or
  /// updated customer profiles become available for the listing
  /// operation in well under 30 seconds. Occasionally, propagation
  /// of the new or updated profiles can take closer to one minute
  /// or longer, especially during network incidents and outages.
  ///
  Future<List<Customer>> listCustomer({
    required ListCustomerRequest request,
    String? authToken,
  }) async {

    authToken ??= authenticationService.getCachedToken()?.accessToken;

    Map<String, String> headers = {
      "Authorization": "Bearer ${authToken ?? ""}",
      'Content-Type': 'application/json; charset=UTF-8',
      'Accept': 'application/json',

    };

    Uri endpoint = Uri.https(
        baseUrl, "/v2/customers", request.toJson());

    //print (endpoint.toString());

    var response = await
    http.get(endpoint, headers: headers);

    if (response.statusCode == 200) {
      print (jsonDecode(response.body));
      return CustomerResponse.fromJson(jsonDecode(response.body)).customers!;
    }
    else {
      print (response.body);
      throw CustomerException(statusCode: response.statusCode, message: CustomerResponse.fromJson(jsonDecode(response.body)).errors?[0].detail?.toString());
    }
  }

  ///
  /// Creates a new customer for a business.
  ///
  /// You must provide at least one of the following values in
  /// your request to this
  ///
  Future<Customer> createCustomer({
    required CustomerUpsertRequest request,
    String? authToken,
  }) async {

    authToken ??= authenticationService.getCachedToken()?.accessToken;

    Map<String, String> headers = {
      "Authorization": "Bearer ${authToken ?? ""}",
      'Content-Type': 'application/json; charset=UTF-8',
      'Accept': 'application/json',

    };

    Uri endpoint = Uri.https(
        baseUrl, "/v2/customers");

    //print (endpoint.toString());

    var response = await
    http.post(endpoint, body: jsonEncode(request.toJson()), headers: headers);

    if (response.statusCode == 200) {
      print (jsonDecode(response.body));
      return CustomerResponse.fromJson(jsonDecode(response.body)).customer!;
    }
    else {
      print (response.body);
      throw CustomerException(statusCode: response.statusCode, message: CustomerResponse.fromJson(jsonDecode(response.body)).errors?[0].detail?.toString());
    }
  }

  ///
  /// Searches the customer profiles associated with a Square account
  /// using a supported query filter.
  ///
  /// Calling SearchCustomers without any explicit query filter
  /// returns all customer profiles ordered alphabetically based
  /// on given_name and family_name.
  ///
  Future<CustomerResponse> searchCustomer({
    required SearchCustomerRequest request,
    String? authToken,
  }) async {

    authToken ??= authenticationService.getCachedToken()?.accessToken;

    Map<String, String> headers = {
      "Authorization": "Bearer ${authToken ?? ""}",
      'Content-Type': 'application/json; charset=UTF-8',
      'Accept': 'application/json',

    };

    Uri endpoint = Uri.https(
        baseUrl, "/v2/customers/search");

    //print (endpoint.toString());

    var response = await
    http.post(endpoint, body: jsonEncode(request.toJson()), headers: headers);

    if (response.statusCode == 200) {
      print (jsonDecode(response.body));
      return CustomerResponse.fromJson(jsonDecode(response.body));
    }
    else {
      print (response.body);
      throw CustomerException(statusCode: response.statusCode, message: CustomerResponse.fromJson(jsonDecode(response.body)).errors?[0].detail?.toString());
    }
  }

  ///
  /// Deletes a customer profile from a business.
  ///
  /// This operation also unlinks any associated cards on file.
  ///
  Future<bool> deleteCustomer({
    required String customerId,
    String? authToken,
  }) async {

    authToken ??= authenticationService.getCachedToken()?.accessToken;

    Map<String, String> headers = {
      "Authorization": "Bearer ${authToken ?? ""}",
      'Content-Type': 'application/json; charset=UTF-8',
      'Accept': 'application/json',

    };

    Uri endpoint = Uri.https(
        baseUrl, "/v2/customers/$customerId");

    //print (endpoint.toString());

    var response = await
    http.delete(endpoint, headers: headers);

    if (response.statusCode == 200) {
      print (jsonDecode(response.body));
      return true;
    }
    else {
      print (response.body);
      throw CustomerException(statusCode: response.statusCode, message: CustomerResponse.fromJson(jsonDecode(response.body)).errors?[0].detail?.toString());
    }
  }

  ///
  /// Returns details for a single customer.
  ///
  Future<Customer> readCustomer({
    required String customerId,
    String? authToken,
  }) async {

    authToken ??= authenticationService.getCachedToken()?.accessToken;

    Map<String, String> headers = {
      "Authorization": "Bearer ${authToken ?? ""}",
      'Content-Type': 'application/json; charset=UTF-8',
      'Accept': 'application/json',

    };

    Uri endpoint = Uri.https(
        baseUrl, "/v2/customers/$customerId");

    //print (endpoint.toString());

    var response = await
    http.get(endpoint, headers: headers);

    if (response.statusCode == 200) {
      print (jsonDecode(response.body));
      return CustomerResponse.fromJson(jsonDecode(response.body)).customer!;
    }
    else {
      print (response.body);
      throw CustomerException(statusCode: response.statusCode, message: CustomerResponse.fromJson(jsonDecode(response.body)).errors?[0].detail?.toString());
    }
  }

  ///
  /// Updates a customer profile.
  ///
  /// To change an attribute, specify the new value. To remove an
  /// attribute, specify the value as an empty string or empty object.
  ///
  Future<Customer> updateCustomer({
    required String customerId,
    required CustomerUpsertRequest request,
    String? authToken,
  }) async {

    authToken ??= authenticationService.getCachedToken()?.accessToken;

    Map<String, String> headers = {
      "Authorization": "Bearer ${authToken ?? ""}",
      'Content-Type': 'application/json; charset=UTF-8',
      'Accept': 'application/json',

    };

    Uri endpoint = Uri.https(
        baseUrl, "/v2/customers/$customerId");

    //print (endpoint.toString());

    var response = await
    http.put(endpoint, body: request.toJson(), headers: headers);

    if (response.statusCode == 200) {
      print (jsonDecode(response.body));
      return CustomerResponse.fromJson(jsonDecode(response.body)).customer!;
    }
    else {
      print (response.body);
      throw CustomerException(statusCode: response.statusCode, message: CustomerResponse.fromJson(jsonDecode(response.body)).errors?[0].detail?.toString());
    }
  }

  ///
  /// Removes a group membership from a customer.
  ///
  /// The customer is identified by the customer_id value and the
  /// customer group is identified by the group_id value.
  ///
  Future<bool> removeCustomerFromGroup({
    required String customerId,
    required String groupId,
    String? authToken,
  }) async {

    authToken ??= authenticationService.getCachedToken()?.accessToken;

    Map<String, String> headers = {
      "Authorization": "Bearer ${authToken ?? ""}",
      'Content-Type': 'application/json; charset=UTF-8',
      'Accept': 'application/json',

    };

    Uri endpoint = Uri.https(
        baseUrl, "/v2/customers/$customerId/groups/$groupId");

    //print (endpoint.toString());

    var response = await
    http.delete(endpoint, headers: headers);

    if (response.statusCode == 200) {
      print (jsonDecode(response.body));
      return true;
    }
    else {
      print (response.body);
      throw CustomerException(statusCode: response.statusCode, message: CustomerResponse.fromJson(jsonDecode(response.body)).errors?[0].detail?.toString());
    }
  }

  ///
  /// Adds a group membership to a customer.
  ///
  /// The customer is identified by the customer_id value
  /// and the customer group is identified by the group_id value.
  ///
  Future<bool> addCustomerToGroup({
    required String customerId,
    required String groupId,
    String? authToken,
  }) async {

    authToken ??= authenticationService.getCachedToken()?.accessToken;

    Map<String, String> headers = {
      "Authorization": "Bearer ${authToken ?? ""}",
      'Content-Type': 'application/json; charset=UTF-8',
      'Accept': 'application/json',

    };

    Uri endpoint = Uri.https(
        baseUrl, "/v2/customers/$customerId/groups/$groupId");

    //print (endpoint.toString());

    var response = await
    http.put(endpoint, headers: headers);

    if (response.statusCode == 200) {
      print (jsonDecode(response.body));
      return true;
    }
    else {
      print (response.body);
      throw CustomerException(statusCode: response.statusCode, message: CustomerResponse.fromJson(jsonDecode(response.body)).errors?[0].detail?.toString());
    }
  }


}

class CustomerException implements Exception {
  final String? message;
  final int statusCode;

  CustomerException({required this.statusCode, this.message});

  @override
  String toString() {
    return "CustomerException: $statusCode - $message";
  }
}

