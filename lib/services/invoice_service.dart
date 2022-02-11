
import 'dart:convert';
import 'package:another_square/services/authentication_service.dart';
import 'package:another_square/square_models.dart';
import 'package:http/http.dart' as http;

///
/// URL: https://developer.squareup.com/reference/square/invoices-api/list-invoices
///
/// The Invoices API lets you create and manage invoices for orders that were
/// created using the Orders API. After you create the invoice and configure
/// its delivery method, payment schedule, and other invoice settings,
/// you can publish the invoice. Depending on the invoice settings, Square
/// sends the invoice to the customer or automatically charges a card on
/// file. Square also hosts each invoice on a web page where customers
/// can easily pay for it.
///
class InvoiceService {
  final String baseUrl;
  final AuthenticationService authenticationService;

  InvoiceService(
      {required this.baseUrl, required this.authenticationService});



  ///
  /// Returns a list of invoices for a given location.
  ///
  /// The response is paginated. If truncated, the
  /// response includes a cursor that you
  /// use in a subsequent request to retrieve the
  /// next set of invoices.
  ///
  Future<InvoiceResponse> listInvoices({
    required String locationId,
    String? cursor,
    int? limit,
    String? authToken,
  }) async {

    limit ??= 200;
    authToken ??= authenticationService.getCachedToken()?.accessToken;

    Map<String, String> headers = {
      "Authorization": "Bearer ${authToken ?? ""}",
      'Content-Type': 'application/json; charset=UTF-8',
      'Accept': 'application/json',

    };

    var params = {
      "location_id": locationId,
      "limit": limit
    };

    if (cursor!= null) {
      params.putIfAbsent("cursor", () => cursor);
    }

    Uri endpoint = Uri.https(
        baseUrl, "/v2/invoices", params);

    //print (endpoint.toString());

    var response = await
    http.get(endpoint, headers: headers);

    if (response.statusCode == 200) {
      print (jsonDecode(response.body));
      return InvoiceResponse.fromJson(jsonDecode(response.body));
    }
    else {
      print (response.body);
      throw InvoiceException(statusCode: response.statusCode, message: InvoiceResponse.fromJson(jsonDecode(response.body)).errors?[0].detail?.toString());
    }
  }


  ///
  /// Creates a draft invoice for an order created using the Orders API.
  ///
  /// A draft invoice remains in your account and no action is taken.
  /// You must publish the invoice before Square can process it
  /// (send it to the customer's email address or charge the
  /// customer’s card on file).
  ///
  Future<Invoice> createInvoice({
    required CreateInvoiceRequest request,
    String? authToken,
  }) async {

    authToken ??= authenticationService.getCachedToken()?.accessToken;

    Map<String, String> headers = {
      "Authorization": "Bearer ${authToken ?? ""}",
      'Content-Type': 'application/json; charset=UTF-8',
      'Accept': 'application/json',

    };

    Uri endpoint = Uri.https(
        baseUrl, "/v2/invoices");

    //print (endpoint.toString());

    var response = await
    http.post(endpoint, body: jsonEncode(request.toJson()), headers: headers);

    if (response.statusCode == 200) {
      print (jsonDecode(response.body));
      return InvoiceResponse.fromJson(jsonDecode(response.body)).invoice!;
    }
    else {
      print (response.body);
      throw InvoiceException(statusCode: response.statusCode, message: InvoiceResponse.fromJson(jsonDecode(response.body)).errors?[0].detail?.toString());
    }
  }

  ///
  /// Searches for invoices from a location specified in the filter.
  ///
  /// You can optionally specify customers in the filter for whom to
  /// retrieve invoices. In the current implementation, you can only
  /// specify one location and optionally one customer.
  ///
  /// The response is paginated. If truncated, the response includes a
  /// cursor that you use in a subsequent request to retrieve the
  /// next set of invoices.
  ///
  Future<InvoiceResponse> searchInvoice({
    required SearchInvoiceRequest request,
    String? authToken,
  }) async {

    authToken ??= authenticationService.getCachedToken()?.accessToken;

    Map<String, String> headers = {
      "Authorization": "Bearer ${authToken ?? ""}",
      'Content-Type': 'application/json; charset=UTF-8',
      'Accept': 'application/json',

    };

    Uri endpoint = Uri.https(
        baseUrl, "/v2/invoices/search");

    //print (endpoint.toString());

    var response = await
    http.post(endpoint, body: jsonEncode(request.toJson()), headers: headers);

    if (response.statusCode == 200) {
      print (jsonDecode(response.body));
      return InvoiceResponse.fromJson(jsonDecode(response.body));
    }
    else {
      print (response.body);
      throw InvoiceException(statusCode: response.statusCode, message: InvoiceResponse.fromJson(jsonDecode(response.body)).errors?[0].detail?.toString());
    }
  }

  ///
  /// Deletes the specified invoice.
  ///
  /// When an invoice is deleted, the associated order status
  /// changes to CANCELED. You can only delete a draft invoice
  /// (you cannot delete a published invoice, including one that
  /// is scheduled for processing).
  ///
  Future<bool> deleteInvoice({
    required int invoiceId,
    required int version,
    String? authToken,
  }) async {

    authToken ??= authenticationService.getCachedToken()?.accessToken;

    Map<String, String> headers = {
      "Authorization": "Bearer ${authToken ?? ""}",
      'Content-Type': 'application/json; charset=UTF-8',
      'Accept': 'application/json',

    };

    var params = {
      "version": version
    };

    Uri endpoint = Uri.https(
        baseUrl, "/v2/invoices/$invoiceId", params);

    //print (endpoint.toString());

    var response = await
    http.delete(endpoint, headers: headers);

    if (response.statusCode == 200) {
      print (jsonDecode(response.body));
      //return InvoiceResponse.fromJson(jsonDecode(response.body)).invoice!;
      return true;
    }
    else {
      print (response.body);
      throw InvoiceException(statusCode: response.statusCode, message: InvoiceResponse.fromJson(jsonDecode(response.body)).errors?[0].detail?.toString());
    }
  }

  ///
  /// Retrieves an invoice by invoice ID.
  ///
  Future<Invoice> readInvoice({
    required String invoiceId,
    String? authToken,
  }) async {

    authToken ??= authenticationService.getCachedToken()?.accessToken;

    Map<String, String> headers = {
      "Authorization": "Bearer ${authToken ?? ""}",
      'Content-Type': 'application/json; charset=UTF-8',
      'Accept': 'application/json',

    };

    Uri endpoint = Uri.https(
        baseUrl, "/v2/invoices/$invoiceId");

    //print (endpoint.toString());

    var response = await
    http.get(endpoint, headers: headers);

    if (response.statusCode == 200) {
      print (jsonDecode(response.body));
      return InvoiceResponse.fromJson(jsonDecode(response.body)).invoice!;
    }
    else {
      print (response.body);
      throw InvoiceException(statusCode: response.statusCode, message: InvoiceResponse.fromJson(jsonDecode(response.body)).errors?[0].detail?.toString());
    }
  }

  ///
  /// Updates an invoice by modifying fields, clearing fields, or both.
  ///
  /// For most updates, you can use a sparse Invoice object to add fields
  /// or change values and use the fields_to_clear field to specify fields
  /// to clear. However, some restrictions apply. For example, you cannot
  /// change the order_id or location_id field and you must provide the
  /// complete custom_fields list to update a custom field. Published
  /// invoices have additional restrictions.
  ///
  Future<Invoice> updateInvoice({
    required int invoiceId,
    required UpdateInvoiceRequest request,
    String? authToken,
  }) async {

    authToken ??= authenticationService.getCachedToken()?.accessToken;

    Map<String, String> headers = {
      "Authorization": "Bearer ${authToken ?? ""}",
      'Content-Type': 'application/json; charset=UTF-8',
      'Accept': 'application/json',

    };

    Uri endpoint = Uri.https(
        baseUrl, "/v2/invoices/$invoiceId");

    //print (endpoint.toString());

    var response = await
    http.put(endpoint, body: jsonEncode(request.toJson()), headers: headers);

    if (response.statusCode == 200) {
      print (jsonDecode(response.body));
      return InvoiceResponse.fromJson(jsonDecode(response.body)).invoice!;
    }
    else {
      print (response.body);
      throw InvoiceException(statusCode: response.statusCode, message: InvoiceResponse.fromJson(jsonDecode(response.body)).errors?[0].detail?.toString());
    }
  }

  ///
  /// Cancels an invoice.
  ///
  /// The seller cannot collect payments for the canceled invoice.
  ///
  /// You cannot cancel an invoice in the DRAFT state or in a
  /// terminal state: PAID, REFUNDED, CANCELED, or FAILED.
  ///
  Future<Invoice> cancelInvoice({
    required int invoiceId,
    required int version,
    String? authToken,
  }) async {

    authToken ??= authenticationService.getCachedToken()?.accessToken;

    Map<String, String> headers = {
      "Authorization": "Bearer ${authToken ?? ""}",
      'Content-Type': 'application/json; charset=UTF-8',
      'Accept': 'application/json',

    };

    Uri endpoint = Uri.https(
        baseUrl, "/v2/invoices/$invoiceId}/cancel");

    //print (endpoint.toString());

    var request = {
      "version": version
    };

    var response = await
    http.post(endpoint, body: jsonEncode(request), headers: headers);

    if (response.statusCode == 200) {
      print (jsonDecode(response.body));
      return InvoiceResponse.fromJson(jsonDecode(response.body)).invoice!;
    }
    else {
      print (response.body);
      throw InvoiceException(statusCode: response.statusCode, message: InvoiceResponse.fromJson(jsonDecode(response.body)).errors?[0].detail?.toString());
    }
  }

  ///
  /// Publishes the specified draft invoice.
  ///
  /// After an invoice is published, Square follows up based
  /// on the invoice configuration. For example, Square sends
  /// the invoice to the customer's email address, charges the
  /// customer's card on file, or does nothing. Square also
  /// makes the invoice available on a Square-hosted invoice page.
  ///
  Future<Invoice> publishInvoice({
    required String invoiceId,
    required PublishInvoiceRequest request,
    String? authToken,
  }) async {

    authToken ??= authenticationService.getCachedToken()?.accessToken;

    Map<String, String> headers = {
      "Authorization": "Bearer ${authToken ?? ""}",
      'Content-Type': 'application/json; charset=UTF-8',
      'Accept': 'application/json',

    };

    Uri endpoint = Uri.https(
        baseUrl, "/v2/invoices/$invoiceId/publish");

    //print (endpoint.toString());

    var response = await
    http.post(endpoint, body: jsonEncode(request.toJson()), headers: headers);

    if (response.statusCode == 200) {
      print (jsonDecode(response.body));
      return InvoiceResponse.fromJson(jsonDecode(response.body)).invoice!;
    }
    else {
      print (response.body);
      throw InvoiceException(statusCode: response.statusCode, message: InvoiceResponse.fromJson(jsonDecode(response.body)).errors?[0].detail?.toString());
    }
  }
}

class InvoiceException implements Exception {
  final String? message;
  final int statusCode;

  InvoiceException({required this.statusCode, this.message});

  @override
  String toString() {
    return "InvoiceException: $statusCode - $message";
  }
}

