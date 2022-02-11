
import 'dart:convert';
import 'package:another_square/services/authentication_service.dart';
import 'package:another_square/square_models.dart';
import 'package:http/http.dart' as http;

///
/// URL: https://developer.squareup.com/reference/square/catalog-api
///
/// Programmatically catalogs a Square seller’s products for sale and services for hire.
///
/// The Catalog API allows you to programmatically catalog products
/// or services, including items, variations, categories, discounts,
/// taxes, modifiers, and more.
///
class CatalogService {
  final String baseUrl;
  final AuthenticationService authenticationService;

  CatalogService(
      {required this.baseUrl, required this.authenticationService});




  ///
  /// Deletes a set of CatalogItems based on the provided list of
  /// target IDs and returns a set of successfully deleted IDs in the response.
  ///
  /// Deletion is a cascading event such that all children of the
  /// targeted object are also deleted. For example, deleting a
  /// CatalogItem will also delete all of its CatalogItemVariation children.
  ///
  /// BatchDeleteCatalogObjects succeeds even if only a portion of
  /// the targeted IDs can be deleted. The response will only include
  /// IDs that were actually deleted.
  ///
  Future<CatalogDeleteResponse> batchDeleteCatalog({
    required List<String> objectIds,
    String? authToken,
  }) async {

    authToken ??= authenticationService.getCachedToken()?.accessToken;

    Map<String, String> headers = {
      "Authorization": "Bearer ${authToken ?? ""}",
      'Content-Type': 'application/json; charset=UTF-8',
      'Accept': 'application/json',

    };

    var request = {
      "object_ids": objectIds,
    };


    Uri endpoint = Uri.https(
        baseUrl, "/v2/catalog/batch-delete");

    //print (endpoint.toString());

    var response = await
    http.post(endpoint, body: jsonEncode(request),  headers: headers);

    if (response.statusCode == 200) {
      print (jsonDecode(response.body));
      return CatalogDeleteResponse.fromJson(jsonDecode(response.body));
    }
    else {
      print (response.body);
      throw CatalogException(statusCode: response.statusCode, message: CatalogDeleteResponse.fromJson(jsonDecode(response.body)).errors?[0].detail?.toString());
    }
  }

  ///
  /// Returns a set of objects based on the provided ID.
  ///
  /// Each CatalogItem returned in the set includes all of its
  /// child information including: all of its CatalogItemVariation
  /// objects, references to its CatalogModifierList objects, and
  /// the ids of any CatalogTax objects that apply to it.
  ///
  Future<CatalogResponse> batchRetrieveCatalog({
    required CatalogRetrieveRequest request,
    String? authToken,
  }) async {

    authToken ??= authenticationService.getCachedToken()?.accessToken;

    Map<String, String> headers = {
      "Authorization": "Bearer ${authToken ?? ""}",
      'Content-Type': 'application/json; charset=UTF-8',
      'Accept': 'application/json',

    };

    Uri endpoint = Uri.https(
        baseUrl, "/v2/catalog/batch-retrieve");

    //print (endpoint.toString());

    var response = await
    http.post(endpoint, body: jsonEncode(request),  headers: headers);

    if (response.statusCode == 200) {
      print (jsonDecode(response.body));
      return CatalogResponse.fromJson(jsonDecode(response.body));
    }
    else {
      print (response.body);
      throw CatalogException(statusCode: response.statusCode, message: CatalogResponse.fromJson(jsonDecode(response.body)).errors?[0].detail?.toString());
    }
  }


  ///
  /// Creates or updates up to 10,000 target objects based
  /// on the provided list of objects.
  ///
  /// The target objects are grouped into batches and each
  /// batch is inserted/updated in an all-or-nothing manner.
  /// If an object within a batch is malformed in some way,
  /// or violates a database constraint, the entire batch containing
  /// that item will be disregarded. However, other batches in the
  /// same request may still succeed. Each batch may contain up to
  /// 1,000 objects, and batches will be processed in order as long
  /// as the total object count for the request (items, variations,
  /// modifier lists, discounts, and taxes) is no more than 10,000.
  ///
  Future<CatalogResponse> batchUpsertCatalog({
    required CatalogBatchUpsertRequest request,
    String? authToken,
  }) async {

    authToken ??= authenticationService.getCachedToken()?.accessToken;

    Map<String, String> headers = {
      "Authorization": "Bearer ${authToken ?? ""}",
      'Content-Type': 'application/json; charset=UTF-8',
      'Accept': 'application/json',

    };

    Uri endpoint = Uri.https(
        baseUrl, "/v2/catalog/batch-upsert");

    //print (endpoint.toString());

    var response = await
    http.post(endpoint, body: jsonEncode(request),  headers: headers);

    if (response.statusCode == 200) {
      print (jsonDecode(response.body));
      return CatalogResponse.fromJson(jsonDecode(response.body));
    }
    else {
      print (response.body);
      throw CatalogException(statusCode: response.statusCode, message: CatalogResponse.fromJson(jsonDecode(response.body)).errors?[0].detail?.toString());
    }
  }

  ///
  /// Uploads an image file to be represented by a CatalogImage
  /// object that can be linked to an existing CatalogObject instance.
  ///
  /// The resulting CatalogImage is unattached to any CatalogObject
  /// if the object_id is not specified.
  ///
  /// This CreateCatalogImage endpoint accepts HTTP multipart/form-data
  /// requests with a JSON part and an image file part in JPEG, PJPEG,
  /// PNG, or GIF format. The maximum file size is 15MB.
  ///
  Future<CatalogObject> createCatalogImage({
    required CreateCatalogImageRequest request,
    String? authToken,
  }) async {

    authToken ??= authenticationService.getCachedToken()?.accessToken;

    Map<String, String> headers = {
      "Authorization": "Bearer ${authToken ?? ""}",
      'Content-Type': 'application/json; charset=UTF-8',
      'Accept': 'application/json',

    };

    Uri endpoint = Uri.https(
        baseUrl, "/v2/catalog/images");

    //print (endpoint.toString());

    var response = await
    http.post(endpoint, body: jsonEncode(request),  headers: headers);

    if (response.statusCode == 200) {
      print (jsonDecode(response.body));
      return CatalogResponse.fromJson(jsonDecode(response.body)).image!;
    }
    else {
      print (response.body);
      throw CatalogException(statusCode: response.statusCode, message: CatalogResponse.fromJson(jsonDecode(response.body)).errors?[0].detail?.toString());
    }
  }


  ///
  /// Uploads a new image file to replace the existing one in the specified CatalogImage object.
  ///
  /// This UpdateCatalogImage endpoint accepts HTTP multipart/form-data
  /// requests with a JSON part and an image file part in JPEG, PJPEG, PNG, or
  /// GIF format. The maximum file size is 15MB.
  ///
  Future<CatalogObject> updateCatalogImage({
    required UpdateCatalogImageRequest request,
    required String imageId,
    String? authToken,
  }) async {

    authToken ??= authenticationService.getCachedToken()?.accessToken;

    Map<String, String> headers = {
      "Authorization": "Bearer ${authToken ?? ""}",
      'Content-Type': 'application/json; charset=UTF-8',
      'Accept': 'application/json',

    };

    Uri endpoint = Uri.https(
        baseUrl, "/v2/catalog/images/$imageId");

    //print (endpoint.toString());

    var response = await
    http.put(endpoint, body: jsonEncode(request),  headers: headers);

    if (response.statusCode == 200) {
      print (jsonDecode(response.body));
      return CatalogResponse.fromJson(jsonDecode(response.body)).image!;
    }
    else {
      print (response.body);
      throw CatalogException(statusCode: response.statusCode, message: CatalogResponse.fromJson(jsonDecode(response.body)).errors?[0].detail?.toString());
    }
  }

  ///
  /// Retrieves information about the Square Catalog API,
  /// such as batch size limits that can be used by the
  /// BatchUpsertCatalogObjects endpoint
  ///
  Future<CatalogInfoResponse> readCatalogInfo({
    required UpdateCatalogImageRequest request,
    required String imageId,
    String? authToken,
  }) async {

    authToken ??= authenticationService.getCachedToken()?.accessToken;

    Map<String, String> headers = {
      "Authorization": "Bearer ${authToken ?? ""}",
      'Content-Type': 'application/json; charset=UTF-8',
      'Accept': 'application/json',

    };

    Uri endpoint = Uri.https(
        baseUrl, "/v2/catalog/info");

    //print (endpoint.toString());

    var response = await
    http.put(endpoint, body: jsonEncode(request),  headers: headers);

    if (response.statusCode == 200) {
      print (jsonDecode(response.body));
      return CatalogInfoResponse.fromJson(jsonDecode(response.body));
    }
    else {
      print (response.body);
      throw CatalogException(statusCode: response.statusCode, message: CatalogInfoResponse.fromJson(jsonDecode(response.body)).errors?[0].detail?.toString());
    }
  }

  ///
  /// Returns a list of all CatalogObjects of the specified types in the catalog.
  ///
  /// The types parameter is specified as a comma-separated list of
  /// the CatalogObjectType values, for example, "ITEM, ITEM_VARIATION,
  /// MODIFIER, MODIFIER_LIST, CATEGORY, DISCOUNT, TAX, IMAGE".
  ///
  /// Important: ListCatalog does not return deleted catalog items.
  /// To retrieve deleted catalog items, use SearchCatalogObjects and
  /// set the include_deleted_objects attribute value to true.
  ///
  Future<CatalogResponse> listCatalog({
    required ListCatalogImageRequest request,
    String? authToken,
  }) async {

    authToken ??= authenticationService.getCachedToken()?.accessToken;

    Map<String, String> headers = {
      "Authorization": "Bearer ${authToken ?? ""}",
      'Content-Type': 'application/json; charset=UTF-8',
      'Accept': 'application/json',

    };

    Uri endpoint = Uri.https(
        baseUrl, "/v2/catalog/list", request.toJson());

    //print (endpoint.toString());

    var response = await
    http.get(endpoint, headers: headers);

    if (response.statusCode == 200) {
      print (jsonDecode(response.body));
      return CatalogResponse.fromJson(jsonDecode(response.body));
    }
    else {
      print (response.body);
      throw CatalogException(statusCode: response.statusCode, message: CatalogResponse.fromJson(jsonDecode(response.body)).errors?[0].detail?.toString());
    }
  }

  ///
  /// Creates or updates the target CatalogObject.
  ///
  Future<CatalogResponse> upsertCatalog({
    required UpsertCatalogRequest request,
    String? authToken,
  }) async {

    authToken ??= authenticationService.getCachedToken()?.accessToken;

    Map<String, String> headers = {
      "Authorization": "Bearer ${authToken ?? ""}",
      'Content-Type': 'application/json; charset=UTF-8',
      'Accept': 'application/json',

    };

    Uri endpoint = Uri.https(
        baseUrl, "/v2/catalog/object");

    //print (endpoint.toString());

    var response = await
    http.post(endpoint, body: jsonEncode(request.toJson()), headers: headers);

    if (response.statusCode == 200) {
      print (jsonDecode(response.body));
      return CatalogResponse.fromJson(jsonDecode(response.body));
    }
    else {
      print (response.body);
      throw CatalogException(statusCode: response.statusCode, message: CatalogResponse.fromJson(jsonDecode(response.body)).errors?[0].detail?.toString());
    }
  }

  ///
  /// Deletes a single CatalogObject based on the provided ID and
  /// returns the set of successfully deleted IDs in the response.
  ///
  /// Deletion is a cascading event such that all children of the
  /// targeted object are also deleted. For example, deleting a
  /// CatalogItem will also delete all of its CatalogItemVariation children.
  ///
  Future<CatalogDeleteResponse> deleteCatalog({
    required String objectId,
    String? authToken,
  }) async {

    authToken ??= authenticationService.getCachedToken()?.accessToken;

    Map<String, String> headers = {
      "Authorization": "Bearer ${authToken ?? ""}",
      'Content-Type': 'application/json; charset=UTF-8',
      'Accept': 'application/json',

    };

    Uri endpoint = Uri.https(
        baseUrl, "/v2/catalog/object/$objectId");

    //print (endpoint.toString());

    var response = await
    http.delete(endpoint, headers: headers);

    if (response.statusCode == 200) {
      print (jsonDecode(response.body));
      return CatalogDeleteResponse.fromJson(jsonDecode(response.body));
    }
    else {
      print (response.body);
      throw CatalogException(statusCode: response.statusCode, message: CatalogDeleteResponse.fromJson(jsonDecode(response.body)).errors?[0].detail?.toString());
    }
  }

  ///
  /// Returns a single CatalogItem as a CatalogObject based on the provided ID.
  ///
  /// The returned object includes all of the relevant CatalogItem
  /// information including: CatalogItemVariation children, references
  /// to its CatalogModifierList objects, and the ids of any CatalogTax
  /// objects that apply to it
  ///
  Future<CatalogResponse> readCatalog({
    required String objectId,
    String? authToken,
  }) async {

    authToken ??= authenticationService.getCachedToken()?.accessToken;

    Map<String, String> headers = {
      "Authorization": "Bearer ${authToken ?? ""}",
      'Content-Type': 'application/json; charset=UTF-8',
      'Accept': 'application/json',

    };

    Uri endpoint = Uri.https(
        baseUrl, "/v2/catalog/object/$objectId");

    //print (endpoint.toString());

    var response = await
    http.delete(endpoint, headers: headers);

    if (response.statusCode == 200) {
      print (jsonDecode(response.body));
      return CatalogResponse.fromJson(jsonDecode(response.body));
    }
    else {
      print (response.body);
      throw CatalogException(statusCode: response.statusCode, message: CatalogResponse.fromJson(jsonDecode(response.body)).errors?[0].detail?.toString());
    }
  }

  ///
  /// Searches for CatalogObject of any type by matching supported
  /// search attribute values, excluding custom attribute values
  /// on items or item variations, against one or more of the specified
  /// query filters.
  ///
  Future<CatalogResponse> searchCatalog({
    required String objectId,
    required CatalogSearchRequest request,
    String? authToken,
  }) async {

    authToken ??= authenticationService.getCachedToken()?.accessToken;

    Map<String, String> headers = {
      "Authorization": "Bearer ${authToken ?? ""}",
      'Content-Type': 'application/json; charset=UTF-8',
      'Accept': 'application/json',

    };

    Uri endpoint = Uri.https(
        baseUrl, "/v2/catalog/search");

    //print (endpoint.toString());

    var response = await
    http.post(endpoint, body: jsonEncode(request.toJson()), headers: headers);

    if (response.statusCode == 200) {
      print (jsonDecode(response.body));
      return CatalogResponse.fromJson(jsonDecode(response.body));
    }
    else {
      print (response.body);
      throw CatalogException(statusCode: response.statusCode, message: CatalogResponse.fromJson(jsonDecode(response.body)).errors?[0].detail?.toString());
    }
  }

  ///
  /// Searches for catalog items or item variations by matching
  /// supported search attribute values, including custom attribute
  /// values, against one or more of the specified query filters.
  ///
  Future<CatalogItemsResponse> searchCatalogItems({
    required String objectId,
    required CatalogItemsSearchRequest request,
    String? authToken,
  }) async {

    authToken ??= authenticationService.getCachedToken()?.accessToken;

    Map<String, String> headers = {
      "Authorization": "Bearer ${authToken ?? ""}",
      'Content-Type': 'application/json; charset=UTF-8',
      'Accept': 'application/json',

    };

    Uri endpoint = Uri.https(
        baseUrl, "/v2/catalog/search-catalog-items");

    //print (endpoint.toString());

    var response = await
    http.post(endpoint, body: jsonEncode(request.toJson()), headers: headers);

    if (response.statusCode == 200) {
      print (jsonDecode(response.body));
      return CatalogItemsResponse.fromJson(jsonDecode(response.body));
    }
    else {
      print (response.body);
      throw CatalogException(statusCode: response.statusCode, message: CatalogItemsResponse.fromJson(jsonDecode(response.body)).errors?[0].detail?.toString());
    }
  }

  ///
  /// Updates the CatalogModifierList objects that apply to the
  /// targeted CatalogItem without having to perform an upsert
  /// on the entire item.
  ///
  Future<String> updateCatalogItemsModifiers({
    required String objectId,
    required UpdateCatalogItemsModifier request,
    String? authToken,
  }) async {

    authToken ??= authenticationService.getCachedToken()?.accessToken;

    Map<String, String> headers = {
      "Authorization": "Bearer ${authToken ?? ""}",
      'Content-Type': 'application/json; charset=UTF-8',
      'Accept': 'application/json',

    };

    Uri endpoint = Uri.https(
        baseUrl, "/v2/catalog/update-item-modifier-lists");

    //print (endpoint.toString());

    var response = await
    http.post(endpoint, body: jsonEncode(request.toJson()), headers: headers);

    if (response.statusCode == 200) {
      print (jsonDecode(response.body));
      return CatalogResponse.fromJson(jsonDecode(response.body)).updatedAt!;
    }
    else {
      print (response.body);
      throw CatalogException(statusCode: response.statusCode, message: CatalogResponse.fromJson(jsonDecode(response.body)).errors?[0].detail?.toString());
    }
  }

  ///
  /// Updates the CatalogTax objects that apply to the targeted
  /// CatalogItem without having to perform an upsert on the
  /// entire item.
  ///
  Future<String> updateCatalogItemsTaxes({
    required String objectId,
    required UpdateCatalogItemsTaxes request,
    String? authToken,
  }) async {

    authToken ??= authenticationService.getCachedToken()?.accessToken;

    Map<String, String> headers = {
      "Authorization": "Bearer ${authToken ?? ""}",
      'Content-Type': 'application/json; charset=UTF-8',
      'Accept': 'application/json',

    };

    Uri endpoint = Uri.https(
        baseUrl, "/v2/catalog/update-item-taxes");

    //print (endpoint.toString());

    var response = await
    http.post(endpoint, body: jsonEncode(request.toJson()), headers: headers);

    if (response.statusCode == 200) {
      print (jsonDecode(response.body));
      return CatalogResponse.fromJson(jsonDecode(response.body)).updatedAt!;
    }
    else {
      print (response.body);
      throw CatalogException(statusCode: response.statusCode, message: CatalogResponse.fromJson(jsonDecode(response.body)).errors?[0].detail?.toString());
    }
  }
}

class CatalogException implements Exception {
  final String? message;
  final int statusCode;

  CatalogException({required this.statusCode, this.message});

  @override
  String toString() {
    return "CatalogException: $statusCode - $message";
  }
}

