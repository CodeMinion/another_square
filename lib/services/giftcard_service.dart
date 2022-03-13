
import 'dart:convert';
import 'package:another_square/services/authentication_service.dart';
import 'package:another_square/services/backend_extensions.dart';
import 'package:another_square/square_models.dart';
import 'package:http/http.dart' as http;

///
/// URL: https://developer.squareup.com/reference/square/gift-cards-api
/// Create and access gift cards and link customers to gift cards.
///
/// Square gift cards enable sellers to boost sales and attract
/// new customers. Sellers can easily sell, redeem, track, and
/// reload Square gift cards.
///
/// Developers can use the Gift Cards API to integrate Square
/// gift cards into third-party applications. In addition,
/// developers can use the Gift Card Activities API to create
/// gift card activities, such as activate a gift card, add funds
/// to a gift card, and redeem a gift card.
///
class GiftCardService {
  final String baseUrl;
  final AuthenticationService authenticationService;

  GiftCardService(
      {required this.baseUrl, required this.authenticationService});



  ///
  /// Lists all gift cards.
  ///
  /// You can specify optional filters to retrieve a subset of
  /// the gift cards.
  ///
  Future<GiftCardResponse> listGiftCards({
    required ListGiftCardRequest request,
    String? authToken,
  }) async {

    authToken ??= authenticationService.getCachedToken()?.accessToken;

    Map<String, String> headers = {
      "Authorization": "Bearer ${authToken ?? ""}",
      'Content-Type': 'application/json; charset=UTF-8',
      'Accept': 'application/json',

    };

    Uri endpoint = Uri.https(
        baseUrl, "/v2/gift-cards", request.toJson().toQueryParam());

    //print (endpoint.toString());

    var response = await
    http.get(endpoint, headers: headers);

    if (response.statusCode == 200) {
      print (jsonDecode(response.body));
      return GiftCardResponse.fromJson(jsonDecode(response.body));
    }
    else {
      print (response.body);
      throw GiftCardException(statusCode: response.statusCode, message: GiftCardResponse.fromJson(jsonDecode(response.body)).errors?[0].detail?.toString());
    }
  }

  ///
  /// Creates a digital gift card or registers a physical (plastic) gift card.
  ///
  /// You must activate the gift card before it can be used for payment.
  /// For more information, see Selling gift cards.
  ///
  Future<GiftCard> createGiftCard({
    required CreateGiftCardRequest request,
    String? authToken,
  }) async {

    authToken ??= authenticationService.getCachedToken()?.accessToken;

    Map<String, String> headers = {
      "Authorization": "Bearer ${authToken ?? ""}",
      'Content-Type': 'application/json; charset=UTF-8',
      'Accept': 'application/json',

    };

    Uri endpoint = Uri.https(
        baseUrl, "/v2/gift-cards");

    //print (endpoint.toString());

    var response = await
    http.post(endpoint, body: jsonEncode(request.toJson()), headers: headers);

    if (response.statusCode == 200) {
      print (jsonDecode(response.body));
      return GiftCardResponse.fromJson(jsonDecode(response.body)).giftCard!;
    }
    else {
      print (response.body);
      throw GiftCardException(statusCode: response.statusCode, message: GiftCardResponse.fromJson(jsonDecode(response.body)).errors?[0].detail?.toString());
    }
  }


  ///
  /// Retrieves a gift card using the gift card account number (GAN).
  ///
  Future<GiftCard> readGiftCardFromGan({
    required String gan,
    String? authToken,
  }) async {

    authToken ??= authenticationService.getCachedToken()?.accessToken;

    Map<String, String> headers = {
      "Authorization": "Bearer ${authToken ?? ""}",
      'Content-Type': 'application/json; charset=UTF-8',
      'Accept': 'application/json',

    };

    Uri endpoint = Uri.https(
        baseUrl, "/v2/gift-cards/from-gan");

    //print (endpoint.toString());

    var request = {
      "gan": gan
    };

    var response = await
    http.post(endpoint, body: request, headers: headers);

    if (response.statusCode == 200) {
      print (jsonDecode(response.body));
      return GiftCardResponse.fromJson(jsonDecode(response.body)).giftCard!;
    }
    else {
      print (response.body);
      throw GiftCardException(statusCode: response.statusCode, message: GiftCardResponse.fromJson(jsonDecode(response.body)).errors?[0].detail?.toString());
    }
  }

  ///
  /// Retrieves a gift card using a secure payment
  /// token that represents the gift card.
  ///
  Future<GiftCard> readGiftCardFromNonce({
    required String nonce,
    String? authToken,
  }) async {

    authToken ??= authenticationService.getCachedToken()?.accessToken;

    Map<String, String> headers = {
      "Authorization": "Bearer ${authToken ?? ""}",
      'Content-Type': 'application/json; charset=UTF-8',
      'Accept': 'application/json',

    };

    Uri endpoint = Uri.https(
        baseUrl, "/v2/gift-cards/from-nonce");

    //print (endpoint.toString());

    var request = {
      "nonce": nonce
    };

    var response = await
    http.post(endpoint, body: request, headers: headers);

    if (response.statusCode == 200) {
      print (jsonDecode(response.body));
      return GiftCardResponse.fromJson(jsonDecode(response.body)).giftCard!;
    }
    else {
      print (response.body);
      throw GiftCardException(statusCode: response.statusCode, message: GiftCardResponse.fromJson(jsonDecode(response.body)).errors?[0].detail?.toString());
    }
  }


  ///
  /// Links a customer to a gift card, which is also
  /// referred to as adding a card on file.
  ///
  Future<GiftCard> linkGiftCardToCustomer({
    required String giftCardId,
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
        baseUrl, "/v2/gift-cards/$giftCardId/link-customer");

    //print (endpoint.toString());

    var request = {
      "customer_id": customerId
    };

    var response = await
    http.post(endpoint, body: request, headers: headers);

    if (response.statusCode == 200) {
      print (jsonDecode(response.body));
      return GiftCardResponse.fromJson(jsonDecode(response.body)).giftCard!;
    }
    else {
      print (response.body);
      throw GiftCardException(statusCode: response.statusCode, message: GiftCardResponse.fromJson(jsonDecode(response.body)).errors?[0].detail?.toString());
    }
  }

  ///
  /// Unlinks a customer from a gift card, which is also
  /// referred to as removing a card on file.
  ///
  Future<GiftCard> unlinkGiftCardToCustomer({
    required String giftCardId,
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
        baseUrl, "/v2/gift-cards/$giftCardId/unlink-customer");

    //print (endpoint.toString());

    var request = {
      "customer_id": customerId
    };

    var response = await
    http.post(endpoint, body: request, headers: headers);

    if (response.statusCode == 200) {
      print (jsonDecode(response.body));
      return GiftCardResponse.fromJson(jsonDecode(response.body)).giftCard!;
    }
    else {
      print (response.body);
      throw GiftCardException(statusCode: response.statusCode, message: GiftCardResponse.fromJson(jsonDecode(response.body)).errors?[0].detail?.toString());
    }
  }

  ///
  /// Retrieves a gift card using its ID.
  ///
  Future<GiftCard> readGiftCard({
    required String giftCardId,
    String? authToken,
  }) async {

    authToken ??= authenticationService.getCachedToken()?.accessToken;

    Map<String, String> headers = {
      "Authorization": "Bearer ${authToken ?? ""}",
      'Content-Type': 'application/json; charset=UTF-8',
      'Accept': 'application/json',

    };

    Uri endpoint = Uri.https(
        baseUrl, "/v2/gift-cards/$giftCardId");

    //print (endpoint.toString());

    var response = await
    http.get(endpoint, headers: headers);

    if (response.statusCode == 200) {
      print (jsonDecode(response.body));
      return GiftCardResponse.fromJson(jsonDecode(response.body)).giftCard!;
    }
    else {
      print (response.body);
      throw GiftCardException(statusCode: response.statusCode, message: GiftCardResponse.fromJson(jsonDecode(response.body)).errors?[0].detail?.toString());
    }
  }

  ///
  /// Lists gift card activities.
  ///
  /// By default, you get gift card activities for all
  /// gift cards in the seller's account. You can optionally
  /// specify query parameters to filter the list. For example,
  /// you can get a list of gift card activities for a gift card,
  /// for all gift cards in a specific region, or for activities within
  /// a time window.
  ///
  Future<GiftCardActivityResponse> listGiftCardActivities({
    required ListGiftCardActivityRequest request,
    String? authToken,
  }) async {

    authToken ??= authenticationService.getCachedToken()?.accessToken;

    Map<String, String> headers = {
      "Authorization": "Bearer ${authToken ?? ""}",
      'Content-Type': 'application/json; charset=UTF-8',
      'Accept': 'application/json',

    };

    Uri endpoint = Uri.https(
        baseUrl, "/v2/gift-cards/activities", request.toJson().toQueryParam());

    //print (endpoint.toString());

    var response = await
    http.get(endpoint, headers: headers);

    if (response.statusCode == 200) {
      print (jsonDecode(response.body));
      return GiftCardActivityResponse.fromJson(jsonDecode(response.body));
    }
    else {
      print (response.body);
      throw GiftCardException(statusCode: response.statusCode, message: GiftCardActivityResponse.fromJson(jsonDecode(response.body)).errors?[0].detail?.toString());
    }
  }

  ///
  /// Creates a gift card activity.
  ///
  /// For more information, see GiftCardActivity and Using
  /// activated gift cards.
  ///
  Future<GiftCardActivity> createGiftCardActivities({
    required CreateGiftCardActivityRequest request,
    String? authToken,
  }) async {

    authToken ??= authenticationService.getCachedToken()?.accessToken;

    Map<String, String> headers = {
      "Authorization": "Bearer ${authToken ?? ""}",
      'Content-Type': 'application/json; charset=UTF-8',
      'Accept': 'application/json',

    };

    Uri endpoint = Uri.https(
        baseUrl, "/v2/gift-cards/activities");

    //print (endpoint.toString());

    var response = await
    http.post(endpoint, body:jsonEncode(request.toJson()), headers: headers);

    if (response.statusCode == 200) {
      print (jsonDecode(response.body));
      return GiftCardActivityResponse.fromJson(jsonDecode(response.body)).giftCardActivity!;
    }
    else {
      print (response.body);
      throw GiftCardException(statusCode: response.statusCode, message: GiftCardActivityResponse.fromJson(jsonDecode(response.body)).errors?[0].detail?.toString());
    }
  }
}

class GiftCardException implements Exception {
  final String? message;
  final int statusCode;

  GiftCardException({required this.statusCode, this.message});

  @override
  String toString() {
    return "GiftCardException: $statusCode - $message";
  }
}

