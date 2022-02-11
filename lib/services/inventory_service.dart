
import 'dart:convert';
import 'package:another_square/services/authentication_service.dart';
import 'package:another_square/square_models.dart';
import 'package:http/http.dart' as http;

///
/// URL: https://developer.squareup.com/reference/square/inventory-api
///
/// Programmatically manages a Square seller’s inventory of catalog items.
///
/// The Inventory API allows you to programmatically manage inventory
/// counts and inventory changes of products or services.
///
class InventoryService {
  final String baseUrl;
  final AuthenticationService authenticationService;

  InventoryService(
      {required this.baseUrl, required this.authenticationService});


  ///
  /// Returns the InventoryAdjustment object with the provided adjustment_id.
  ///
  Future<InventoryAdjustment> readInventoryAdjustment({
    required String adjustmentId,
    String? authToken,
  }) async {

    authToken ??= authenticationService.getCachedToken()?.accessToken;

    Map<String, String> headers = {
      "Authorization": "Bearer ${authToken ?? ""}",
      'Content-Type': 'application/json; charset=UTF-8',
      'Accept': 'application/json',

    };

    Uri endpoint = Uri.https(
        baseUrl, "/v2/inventory/adjustments/$adjustmentId");

    //print (endpoint.toString());

    var response = await
    http.get(endpoint, headers: headers);

    if (response.statusCode == 200) {
      print (jsonDecode(response.body));
      return InventoryAdjustmentResponse.fromJson(jsonDecode(response.body)).adjustment!;
    }
    else {
      print (response.body);
      throw InventoryException(statusCode: response.statusCode, message: InventoryAdjustmentResponse.fromJson(jsonDecode(response.body)).errors?[0].detail?.toString());
    }
  }


  ///
  /// Applies adjustments and counts to the provided item quantities.
  ///
  /// On success: returns the current calculated counts for all objects
  /// referenced in the request. On failure: returns a list of related errors.
  ///
  Future<InventoryResponse> batchInventoryChange({
    required BatchInventoryChangeRequest request,
    String? authToken,
  }) async {

    authToken ??= authenticationService.getCachedToken()?.accessToken;

    Map<String, String> headers = {
      "Authorization": "Bearer ${authToken ?? ""}",
      'Content-Type': 'application/json; charset=UTF-8',
      'Accept': 'application/json',

    };

    Uri endpoint = Uri.https(
        baseUrl, "/v2/inventory/changes/batch-create");

    //print (endpoint.toString());

    var response = await
    http.post(endpoint, body: jsonEncode(request.toJson()), headers: headers);

    if (response.statusCode == 200) {
      print (jsonDecode(response.body));
      return InventoryResponse.fromJson(jsonDecode(response.body));
    }
    else {
      print (response.body);
      throw InventoryException(statusCode: response.statusCode, message: InventoryResponse.fromJson(jsonDecode(response.body)).errors?[0].detail?.toString());
    }
  }

  ///
  /// Returns historical physical counts and adjustments
  /// based on the provided filter criteria.
  ///
  /// Results are paginated and sorted in ascending order according
  /// their occurred_at timestamp (oldest first).
  ///
  Future<InventoryResponse> batchInventoryRead({
    required BatchInventoryReadRequest request,
    String? authToken,
  }) async {

    authToken ??= authenticationService.getCachedToken()?.accessToken;

    Map<String, String> headers = {
      "Authorization": "Bearer ${authToken ?? ""}",
      'Content-Type': 'application/json; charset=UTF-8',
      'Accept': 'application/json',

    };

    Uri endpoint = Uri.https(
        baseUrl, "/v2/inventory/changes/batch-retrieve");

    //print (endpoint.toString());

    var response = await
    http.post(endpoint, body: jsonEncode(request.toJson()), headers: headers);

    if (response.statusCode == 200) {
      print (jsonDecode(response.body));
      return InventoryResponse.fromJson(jsonDecode(response.body));
    }
    else {
      print (response.body);
      throw InventoryException(statusCode: response.statusCode, message: InventoryResponse.fromJson(jsonDecode(response.body)).errors?[0].detail?.toString());
    }
  }

  ///
  /// Returns current counts for the provided
  /// CatalogObjects at the requested Locations.
  ///
  /// Results are paginated and sorted in descending order according to
  /// their calculated_at timestamp (newest first).
  ///
  Future<InventoryResponse> batchInventoryReadCounts({
    required BatchInventoryReadCountRequest request,
    String? authToken,
  }) async {

    authToken ??= authenticationService.getCachedToken()?.accessToken;

    Map<String, String> headers = {
      "Authorization": "Bearer ${authToken ?? ""}",
      'Content-Type': 'application/json; charset=UTF-8',
      'Accept': 'application/json',

    };

    Uri endpoint = Uri.https(
        baseUrl, "/v2/inventory/counts/batch-retrieve");

    //print (endpoint.toString());

    var response = await
    http.post(endpoint, body: jsonEncode(request.toJson()), headers: headers);

    if (response.statusCode == 200) {
      print (jsonDecode(response.body));
      return InventoryResponse.fromJson(jsonDecode(response.body));
    }
    else {
      print (response.body);
      throw InventoryException(statusCode: response.statusCode, message: InventoryResponse.fromJson(jsonDecode(response.body)).errors?[0].detail?.toString());
    }
  }

  ///
  /// Returns the InventoryPhysicalCount object with the
  /// provided [physicalCountId].
  ///
  Future<InventoryPhysicalCount> readInventoryPhysicalCount({
    required String physicalCountId,
    String? authToken,
  }) async {

    authToken ??= authenticationService.getCachedToken()?.accessToken;

    Map<String, String> headers = {
      "Authorization": "Bearer ${authToken ?? ""}",
      'Content-Type': 'application/json; charset=UTF-8',
      'Accept': 'application/json',

    };

    Uri endpoint = Uri.https(
        baseUrl, "/v2/inventory/physical-counts/$physicalCountId");

    //print (endpoint.toString());

    var response = await
    http.get(endpoint, headers: headers);

    if (response.statusCode == 200) {
      print (jsonDecode(response.body));
      return InventoryPhysicalResponse.fromJson(jsonDecode(response.body)).count!;
    }
    else {
      print (response.body);
      throw InventoryException(statusCode: response.statusCode, message: InventoryTransferResponse.fromJson(jsonDecode(response.body)).errors?[0].detail?.toString());
    }
  }

  ///
  /// Returns the InventoryTransfer object with the provided transfer_id.
  ///
  Future<InventoryTransfer> readInventoryTransfer({
    required String transferId,
    String? authToken,
  }) async {

    authToken ??= authenticationService.getCachedToken()?.accessToken;

    Map<String, String> headers = {
      "Authorization": "Bearer ${authToken ?? ""}",
      'Content-Type': 'application/json; charset=UTF-8',
      'Accept': 'application/json',

    };

    Uri endpoint = Uri.https(
        baseUrl, "/v2/inventory/transfers/$transferId");

    //print (endpoint.toString());

    var response = await
    http.get(endpoint, headers: headers);

    if (response.statusCode == 200) {
      print (jsonDecode(response.body));
      return InventoryTransferResponse.fromJson(jsonDecode(response.body)).transfer!;
    }
    else {
      print (response.body);
      throw InventoryException(statusCode: response.statusCode, message: InventoryTransferResponse.fromJson(jsonDecode(response.body)).errors?[0].detail?.toString());
    }
  }

  ///
  /// Retrieves the current calculated stock count for a
  /// given CatalogObject at a given set of Locations.
  ///
  /// Responses are paginated and unsorted. For more sophisticated
  /// queries, use a batch endpoint.
  ///
  Future<InventoryResponse> readInventoryCount({
    required String catalogObjectId,
    InventoryCountRequest? request,
    String? authToken,
  }) async {

    authToken ??= authenticationService.getCachedToken()?.accessToken;

    Map<String, String> headers = {
      "Authorization": "Bearer ${authToken ?? ""}",
      'Content-Type': 'application/json; charset=UTF-8',
      'Accept': 'application/json',

    };

    Uri endpoint = Uri.https(
        baseUrl, "/v2/inventory/$catalogObjectId", request?.toJson());

    //print (endpoint.toString());

    var response = await
    http.get(endpoint, headers: headers);

    if (response.statusCode == 200) {
      print (jsonDecode(response.body));
      return InventoryResponse.fromJson(jsonDecode(response.body));
    }
    else {
      print (response.body);
      throw InventoryException(statusCode: response.statusCode, message: InventoryTransferResponse.fromJson(jsonDecode(response.body)).errors?[0].detail?.toString());
    }
  }

}

class InventoryException implements Exception {
  final String? message;
  final int statusCode;

  InventoryException({required this.statusCode, this.message});

  @override
  String toString() {
    return "InventoryException: $statusCode - $message";
  }
}

