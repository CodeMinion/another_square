
import 'dart:convert';
import 'package:another_square/services/authentication_service.dart';
import 'package:another_square/square_models.dart';
import 'package:http/http.dart' as http;

///
/// URL: https://developer.squareup.com/reference/square/merchants-api
///
/// Use the Merchants API to retrieve information about a Square merchant account.
///
class MerchantService {
  final String baseUrl;
  final AuthenticationService authenticationService;

  MerchantService(
      {required this.baseUrl, required this.authenticationService});



  ///
  /// Returns Merchant information for a given access token.
  ///
  /// If you don't know a Merchant ID, you can use this endpoint
  /// to retrieve the merchant ID for an access token. You can specify
  /// your personal access token to get your own merchant information or
  /// specify an OAuth token to get the information for the merchant that
  /// granted you access.
  ///
  /// If you know the merchant ID, you can also use the RetrieveMerchant
  /// endpoint to get the merchant information.
  ///
  Future<MerchantResponse> listMerchants({
    String? cursor,
    String? authToken,
  }) async {

    authToken ??= authenticationService.getCachedToken()?.accessToken;

    Map<String, String> headers = {
      "Authorization": "Bearer ${authToken ?? ""}",
      'Content-Type': 'application/json; charset=UTF-8',
      'Accept': 'application/json',

    };

    Map<String, String>? params = null;

    if (cursor != null) {
      params = {
        "cursor": cursor
      };
    }
    Uri endpoint = Uri.https(
        baseUrl, "/v2/merchants", params);

    //print (endpoint.toString());

    var response = await
    http.get(endpoint, headers: headers);

    if (response.statusCode == 200) {
      print (jsonDecode(response.body));
      return MerchantResponse.fromJson(jsonDecode(response.body));
    }
    else {
      print (response.body);
      throw MerchantException(statusCode: response.statusCode, message: MerchantResponse.fromJson(jsonDecode(response.body)).errors?[0].detail?.toString());
    }
  }

  ///
  /// Retrieve a Merchant object for the given merchant_id.
  ///
  Future<Merchant> readMerchant({
    required String merchantId,
    String? authToken,
  }) async {

    authToken ??= authenticationService.getCachedToken()?.accessToken;

    Map<String, String> headers = {
      "Authorization": "Bearer ${authToken ?? ""}",
      'Content-Type': 'application/json; charset=UTF-8',
      'Accept': 'application/json',

    };


    Uri endpoint = Uri.https(
        baseUrl, "/v2/merchants/$merchantId");

    //print (endpoint.toString());

    var response = await
    http.get(endpoint, headers: headers);

    if (response.statusCode == 200) {
      print (jsonDecode(response.body));
      return Merchant.fromJson(jsonDecode(response.body)["merchant"]);
    }
    else {
      print (response.body);
      throw MerchantException(statusCode: response.statusCode, message: MerchantResponse.fromJson(jsonDecode(response.body)).errors?[0].detail?.toString());
    }
  }


  ///
  /// Provides details about all of the seller's
  /// locations, including those with an inactive status.
  ///
  Future<List<Location>> listLocation({
    required String merchantId,
    String? authToken,
  }) async {

    authToken ??= authenticationService.getCachedToken()?.accessToken;

    Map<String, String> headers = {
      "Authorization": "Bearer ${authToken ?? ""}",
      'Content-Type': 'application/json; charset=UTF-8',
      'Accept': 'application/json',

    };


    Uri endpoint = Uri.https(
        baseUrl, "/v2/locations");

    //print (endpoint.toString());

    var response = await
    http.get(endpoint, headers: headers);

    if (response.statusCode == 200) {
      print (jsonDecode(response.body));
      return LocationResponse.fromJson(jsonDecode(response.body)).locations!;
    }
    else {
      print (response.body);
      throw MerchantException(statusCode: response.statusCode, message: LocationResponse.fromJson(jsonDecode(response.body)).errors?[0].detail?.toString());
    }
  }

  ///
  /// Creates a location.
  ///
  /// Creating new locations allows for separate configuration
  /// of receipt layouts, item prices, and sales reports. Developers
  /// can use locations to separate sales activity via applications
  /// that integrate with Square from sales activity elsewhere in a
  /// seller's account. Locations created programmatically with the
  /// Locations API will last forever and are visible to the seller
  /// for their own management, so ensure that each location has a
  /// sensible and unique name.
  ///
  Future<Location> createLocation({
    required Location location,
    String? authToken,
  }) async {

    authToken ??= authenticationService.getCachedToken()?.accessToken;

    Map<String, String> headers = {
      "Authorization": "Bearer ${authToken ?? ""}",
      'Content-Type': 'application/json; charset=UTF-8',
      'Accept': 'application/json',

    };


    Uri endpoint = Uri.https(
        baseUrl, "/v2/locations");

    //print (endpoint.toString());

    var response = await
    http.post(endpoint, body:jsonEncode(location.toJson()), headers: headers);

    if (response.statusCode == 200) {
      print (jsonDecode(response.body));
      return LocationResponse.fromJson(jsonDecode(response.body)).location!;
    }
    else {
      print (response.body);
      throw MerchantException(statusCode: response.statusCode, message: LocationResponse.fromJson(jsonDecode(response.body)).errors?[0].detail?.toString());
    }
  }

  ///
  /// Retrieves details of a single location.
  ///
  /// Specify "main" as the location ID to retrieve details
  /// of the main location.
  ///
  Future<Location> readLocation({
    required String locationId,
    String? authToken,
  }) async {

    authToken ??= authenticationService.getCachedToken()?.accessToken;

    Map<String, String> headers = {
      "Authorization": "Bearer ${authToken ?? ""}",
      'Content-Type': 'application/json; charset=UTF-8',
      'Accept': 'application/json',

    };


    Uri endpoint = Uri.https(
        baseUrl, "/v2/locations/$locationId");

    //print (endpoint.toString());

    var response = await
    http.get(endpoint, headers: headers);

    if (response.statusCode == 200) {
      print (jsonDecode(response.body));
      return LocationResponse.fromJson(jsonDecode(response.body)).location!;
    }
    else {
      print (response.body);
      throw MerchantException(statusCode: response.statusCode, message: LocationResponse.fromJson(jsonDecode(response.body)).errors?[0].detail?.toString());
    }
  }

  ///
  /// Updates a location.
  ///
  Future<Location> updateLocation({
    required Location location,
    String? authToken,
  }) async {

    authToken ??= authenticationService.getCachedToken()?.accessToken;

    Map<String, String> headers = {
      "Authorization": "Bearer ${authToken ?? ""}",
      'Content-Type': 'application/json; charset=UTF-8',
      'Accept': 'application/json',

    };


    Uri endpoint = Uri.https(
        baseUrl, "/v2/locations");

    //print (endpoint.toString());

    var response = await
    http.put(endpoint, body:jsonEncode(location.toJson()), headers: headers);

    if (response.statusCode == 200) {
      print (jsonDecode(response.body));
      return LocationResponse.fromJson(jsonDecode(response.body)).location!;
    }
    else {
      print (response.body);
      throw MerchantException(statusCode: response.statusCode, message: LocationResponse.fromJson(jsonDecode(response.body)).errors?[0].detail?.toString());
    }
  }

}

class MerchantException implements Exception {
  final String? message;
  final int statusCode;

  MerchantException({required this.statusCode, this.message});

  @override
  String toString() {
    return "MerchantException: $statusCode - $message";
  }
}

