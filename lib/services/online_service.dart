
import 'dart:convert';
import 'package:another_square/services/authentication_service.dart';
import 'package:another_square/square_models.dart';
import 'package:http/http.dart' as http;

///
/// URL: https://developer.squareup.com/reference/square/sites-api
///
/// Get details about Square Online sites that belong to Square sellers.
///
/// Square sellers use Square Online to build eCommerce websites.
/// The Sites API lets you get basic details about Square Online sites,
/// such as the site ID, title, and domain. You can use the Sites API with
/// the Snippets API to manage snippets that extend Square Online features.
///
/// Note: Square Online APIs are publicly available as part of an early
/// access program. For more information, see Early access program for
/// Square Online APIs.
///
class OnlineService {
  final String baseUrl;
  final AuthenticationService authenticationService;

  OnlineService(
      {required this.baseUrl, required this.authenticationService});



  ///
  /// Lists the Square Online sites that belong to a seller.
  ///
  /// Sites are listed in descending order by the created_at date.
  ///
  Future<List<Site>> listSites({
    String? authToken,
  }) async {

    authToken ??= authenticationService.getCachedToken()?.accessToken;

    Map<String, String> headers = {
      "Authorization": "Bearer ${authToken ?? ""}",
      'Content-Type': 'application/json; charset=UTF-8',
      'Accept': 'application/json',

    };

    Uri endpoint = Uri.https(
        baseUrl, "/v2/sites");

    //print (endpoint.toString());

    var response = await
    http.get(endpoint,  headers: headers);

    if (response.statusCode == 200) {
      print (jsonDecode(response.body));
      return SitesResponse.fromJson(jsonDecode(response.body)).sites!;
    }
    else {
      print (response.body);
      throw OnlineException(statusCode: response.statusCode, message: SitesResponse.fromJson(jsonDecode(response.body)).errors?[0].detail?.toString());
    }
  }

  ///
  /// Removes your snippet from a Square Online site.
  ///
  /// You can call ListSites to get the IDs of the sites that
  /// belong to a seller.
  ///
  Future<bool> deleteSnippet({
    required String siteId,
    String? authToken,
  }) async {

    authToken ??= authenticationService.getCachedToken()?.accessToken;

    Map<String, String> headers = {
      "Authorization": "Bearer ${authToken ?? ""}",
      'Content-Type': 'application/json; charset=UTF-8',
      'Accept': 'application/json',

    };

    Uri endpoint = Uri.https(
        baseUrl, "/v2/sites/$siteId/snippet");

    //print (endpoint.toString());

    var response = await
    http.delete(endpoint,  headers: headers);

    if (response.statusCode == 200) {
      print (jsonDecode(response.body));
      return true;
    }
    else {
      print (response.body);
      throw OnlineException(statusCode: response.statusCode, message: SnippetResponse.fromJson(jsonDecode(response.body)).errors?[0].detail?.toString());
    }
  }

  ///
  /// Retrieves your snippet from a Square Online site.
  ///
  /// A site can contain snippets from multiple snippet applications,
  /// but you can retrieve only the snippet that was added by your application.
  ///
  Future<Snippet> readSnippet({
    required String siteId,
    String? authToken,
  }) async {

    authToken ??= authenticationService.getCachedToken()?.accessToken;

    Map<String, String> headers = {
      "Authorization": "Bearer ${authToken ?? ""}",
      'Content-Type': 'application/json; charset=UTF-8',
      'Accept': 'application/json',

    };

    Uri endpoint = Uri.https(
        baseUrl, "/v2/sites/$siteId/snippet");

    //print (endpoint.toString());

    var response = await
    http.get(endpoint,  headers: headers);

    if (response.statusCode == 200) {
      print (jsonDecode(response.body));
      return SnippetResponse.fromJson(jsonDecode(response.body)).snippet!;
    }
    else {
      print (response.body);
      throw OnlineException(statusCode: response.statusCode, message: SnippetResponse.fromJson(jsonDecode(response.body)).errors?[0].detail?.toString());
    }
  }

  ///
  /// Adds a snippet to a Square Online site or updates the existing
  /// snippet on the site.
  ///
  /// The snippet code is appended to the end of the head element on
  /// every page of the site, except checkout pages. A snippet application
  /// can add one snippet to a given site.
  ///
  /// You can call ListSites to get the IDs of the sites that belong
  /// to a seller.
  ///
  Future<Snippet> upsertSnippet({
    required Snippet snippet,
    String? authToken,
  }) async {

    authToken ??= authenticationService.getCachedToken()?.accessToken;

    Map<String, String> headers = {
      "Authorization": "Bearer ${authToken ?? ""}",
      'Content-Type': 'application/json; charset=UTF-8',
      'Accept': 'application/json',

    };

    Uri endpoint = Uri.https(
        baseUrl, "/v2/sites/${snippet.siteId}/snippet");

    //print (endpoint.toString());

    var response = await
    http.post(endpoint, body:snippet.toJson(),  headers: headers);

    if (response.statusCode == 200) {
      print (jsonDecode(response.body));
      return SnippetResponse.fromJson(jsonDecode(response.body)).snippet!;
    }
    else {
      print (response.body);
      throw OnlineException(statusCode: response.statusCode, message: SnippetResponse.fromJson(jsonDecode(response.body)).errors?[0].detail?.toString());
    }
  }

}

class OnlineException implements Exception {
  final String? message;
  final int statusCode;

  OnlineException({required this.statusCode, this.message});

  @override
  String toString() {
    return "OnlineException: $statusCode - $message";
  }
}

