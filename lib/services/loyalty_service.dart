
import 'dart:convert';
import 'package:another_square/services/authentication_service.dart';
import 'package:another_square/square_models.dart';
import 'package:http/http.dart' as http;

///
/// URL: https://developer.squareup.com/reference/square/loyalty-api
/// Create and manage loyalty accounts for buyers.
///
/// The Loyalty API lets you create and manage loyalty accounts in a
/// Square loyalty program and allow buyers to earn points and redeem
/// points for discounts.
///
class LoyaltyService {
  final String baseUrl;
  final AuthenticationService authenticationService;

  LoyaltyService(
      {required this.baseUrl, required this.authenticationService});


  ///
  /// Creates a loyalty account.
  ///
  /// To create a loyalty account, you must provide the
  /// program_id and a mapping with the phone_number of the buyer.
  ///
  Future<LoyaltyAccount> createLoyalty({
    required LoyaltyUpsertRequest request,
    String? authToken,
  }) async {

    authToken ??= authenticationService.getCachedToken()?.accessToken;

    Map<String, String> headers = {
      "Authorization": "Bearer ${authToken ?? ""}",
      'Content-Type': 'application/json; charset=UTF-8',
      'Accept': 'application/json',

    };

    Uri endpoint = Uri.https(
        baseUrl, "/v2/loyalty/accounts");

    //print (endpoint.toString());

    var response = await
    http.post(endpoint, body: jsonEncode(request.toJson()), headers: headers);

    if (response.statusCode == 200) {
      print (jsonDecode(response.body));
      return LoyaltyResponse.fromJson(jsonDecode(response.body)).loyaltyAccount!;
    }
    else {
      print (response.body);
      throw LoyaltyException(statusCode: response.statusCode, message: LoyaltyResponse.fromJson(jsonDecode(response.body)).errors?[0].detail?.toString());
    }
  }


  ///
  /// Searches for loyalty accounts in a loyalty program.
  ///
  /// You can search for a loyalty account using the phone number
  /// or customer ID associated with the account. To return all
  /// loyalty accounts, specify an empty query object or omit it entirely.
  ///
  Future<LoyaltyResponse> searchLoyalty({
    required SearchLoyaltyRequest request,
    String? authToken,
  }) async {

    authToken ??= authenticationService.getCachedToken()?.accessToken;

    Map<String, String> headers = {
      "Authorization": "Bearer ${authToken ?? ""}",
      'Content-Type': 'application/json; charset=UTF-8',
      'Accept': 'application/json',

    };

    Uri endpoint = Uri.https(
        baseUrl, "/v2/loyalty/accounts/search");

    //print (endpoint.toString());

    var response = await
    http.post(endpoint, body: jsonEncode(request.toJson()), headers: headers);

    if (response.statusCode == 200) {
      print (jsonDecode(response.body));
      return LoyaltyResponse.fromJson(jsonDecode(response.body));
    }
    else {
      print (response.body);
      throw LoyaltyException(statusCode: response.statusCode, message: LoyaltyResponse.fromJson(jsonDecode(response.body)).errors?[0].detail?.toString());
    }
  }

  ///
  /// Retrieves a loyalty account.
  ///
  Future<LoyaltyAccount> readLoyalty({
    required String accountId,
    String? authToken,
  }) async {

    authToken ??= authenticationService.getCachedToken()?.accessToken;

    Map<String, String> headers = {
      "Authorization": "Bearer ${authToken ?? ""}",
      'Content-Type': 'application/json; charset=UTF-8',
      'Accept': 'application/json',

    };

    Uri endpoint = Uri.https(
        baseUrl, "/v2/loyalty/accounts/$accountId");

    //print (endpoint.toString());

    var response = await
    http.get(endpoint, headers: headers);

    if (response.statusCode == 200) {
      print (jsonDecode(response.body));
      return LoyaltyResponse.fromJson(jsonDecode(response.body)).loyaltyAccount!;
    }
    else {
      print (response.body);
      throw LoyaltyException(statusCode: response.statusCode, message: LoyaltyResponse.fromJson(jsonDecode(response.body)).errors?[0].detail?.toString());
    }
  }

  ///
  /// Adds points to a loyalty account.
  ///
  Future<LoyaltyEvent> accumulateLoyaltyPoints({
    required String accountId,
    required AccumulateLoyaltyPointRequest request,
    String? authToken,
  }) async {

    authToken ??= authenticationService.getCachedToken()?.accessToken;

    Map<String, String> headers = {
      "Authorization": "Bearer ${authToken ?? ""}",
      'Content-Type': 'application/json; charset=UTF-8',
      'Accept': 'application/json',

    };

    Uri endpoint = Uri.https(
        baseUrl, "/v2/loyalty/accounts/$accountId/accumulate");

    //print (endpoint.toString());

    var response = await
    http.post(endpoint, body: request.toJson(), headers: headers);

    if (response.statusCode == 200) {
      print (jsonDecode(response.body));
      return LoyaltyEventResponse.fromJson(jsonDecode(response.body)).event!;
    }
    else {
      print (response.body);
      throw LoyaltyException(statusCode: response.statusCode, message: LoyaltyEventResponse.fromJson(jsonDecode(response.body)).errors?[0].detail?.toString());
    }
  }

  ///
  /// Adds points to or subtracts points from a buyer's account.
  ///
  /// Use this endpoint only when you need to manually adjust points.
  /// Otherwise, in your application flow, you call AccumulateLoyaltyPoints
  /// to add points when a buyer pays for the purchase.
  ///
  Future<LoyaltyEvent> adjustLoyaltyPoints({
    required String accountId,
    required AdjustLoyaltyPointRequest request,
    String? authToken,
  }) async {

    authToken ??= authenticationService.getCachedToken()?.accessToken;

    Map<String, String> headers = {
      "Authorization": "Bearer ${authToken ?? ""}",
      'Content-Type': 'application/json; charset=UTF-8',
      'Accept': 'application/json',

    };

    Uri endpoint = Uri.https(
        baseUrl, "/v2/loyalty/accounts/$accountId/adjust");

    //print (endpoint.toString());

    var response = await
    http.post(endpoint, body: request.toJson(), headers: headers);

    if (response.statusCode == 200) {
      print (jsonDecode(response.body));
      return LoyaltyEventResponse.fromJson(jsonDecode(response.body)).event!;
    }
    else {
      print (response.body);
      throw LoyaltyException(statusCode: response.statusCode, message: LoyaltyEventResponse.fromJson(jsonDecode(response.body)).errors?[0].detail?.toString());
    }
  }

  ///
  /// Searches for loyalty events.
  ///
  /// A Square loyalty program maintains a ledger of events that occur
  /// during the lifetime of a buyer's loyalty account. Each change in
  /// the point balance (for example, points earned, points redeemed,
  /// and points expired) is recorded in the ledger. Using this endpoint,
  /// you can search the ledger for events.
  ///
  Future<LoyaltyEventResponse> searchLoyaltyEvents({
    required SearchLoyaltyEventsRequest request,
    String? authToken,
  }) async {

    authToken ??= authenticationService.getCachedToken()?.accessToken;

    Map<String, String> headers = {
      "Authorization": "Bearer ${authToken ?? ""}",
      'Content-Type': 'application/json; charset=UTF-8',
      'Accept': 'application/json',

    };

    Uri endpoint = Uri.https(
        baseUrl, "/v2/loyalty/events/search");

    //print (endpoint.toString());

    var response = await
    http.post(endpoint, body: request.toJson(), headers: headers);

    if (response.statusCode == 200) {
      print (jsonDecode(response.body));
      return LoyaltyEventResponse.fromJson(jsonDecode(response.body));
    }
    else {
      print (response.body);
      throw LoyaltyException(statusCode: response.statusCode, message: LoyaltyEventResponse.fromJson(jsonDecode(response.body)).errors?[0].detail?.toString());
    }
  }

  ///
  /// Retrieves the loyalty program in a seller's account,
  /// specified by the program ID or the keyword main.
  ///
  Future<LoyaltyProgram> readLoyaltyProgram({
    required String programId,
    String? authToken,
  }) async {

    authToken ??= authenticationService.getCachedToken()?.accessToken;

    Map<String, String> headers = {
      "Authorization": "Bearer ${authToken ?? ""}",
      'Content-Type': 'application/json; charset=UTF-8',
      'Accept': 'application/json',

    };

    Uri endpoint = Uri.https(
        baseUrl, "/v2/loyalty/programs/$programId");

    //print (endpoint.toString());

    var response = await
    http.get(endpoint, headers: headers);

    if (response.statusCode == 200) {
      print (jsonDecode(response.body));
      return LoyaltyProgramResponse.fromJson(jsonDecode(response.body)).program!;
    }
    else {
      print (response.body);
      throw LoyaltyException(statusCode: response.statusCode, message: LoyaltyProgramResponse.fromJson(jsonDecode(response.body)).errors?[0].detail?.toString());
    }
  }

  ///
  /// Calculates the points a purchase earns.
  ///
  Future<int> calculateLoyaltyPoints({
    required String programId,
    required CalculateLoyaltyPointsRequest request,
    String? authToken,
  }) async {

    authToken ??= authenticationService.getCachedToken()?.accessToken;

    Map<String, String> headers = {
      "Authorization": "Bearer ${authToken ?? ""}",
      'Content-Type': 'application/json; charset=UTF-8',
      'Accept': 'application/json',

    };

    Uri endpoint = Uri.https(
        baseUrl, "/v2/loyalty/programs/$programId/calculate");

    //print (endpoint.toString());

    var response = await
    http.post(endpoint, body: request.toJson(), headers: headers);

    if (response.statusCode == 200) {
      print (jsonDecode(response.body));
      return LoyaltyPointResponse.fromJson(jsonDecode(response.body)).points!;
    }
    else {
      print (response.body);
      throw LoyaltyException(statusCode: response.statusCode, message: LoyaltyEventResponse.fromJson(jsonDecode(response.body)).errors?[0].detail?.toString());
    }
  }

  ///
  /// Creates a loyalty reward.
  ///
  Future<LoyaltyReward> calculateLoyaltyReward({
    required UpsertLoyaltyRewardRequest request,
    String? authToken,
  }) async {

    authToken ??= authenticationService.getCachedToken()?.accessToken;

    Map<String, String> headers = {
      "Authorization": "Bearer ${authToken ?? ""}",
      'Content-Type': 'application/json; charset=UTF-8',
      'Accept': 'application/json',

    };

    Uri endpoint = Uri.https(
        baseUrl, "/v2/loyalty/rewards");

    //print (endpoint.toString());

    var response = await
    http.post(endpoint, body: request.toJson(), headers: headers);

    if (response.statusCode == 200) {
      print (jsonDecode(response.body));
      return LoyaltyRewardResponse.fromJson(jsonDecode(response.body)).reward!;
    }
    else {
      print (response.body);
      throw LoyaltyException(statusCode: response.statusCode, message: LoyaltyRewardResponse.fromJson(jsonDecode(response.body)).errors?[0].detail?.toString());
    }
  }


  ///
  /// Searches for loyalty rewards in a loyalty account.
  ///
  /// In the current implementation, the endpoint supports
  /// search by the reward status.
  ///
  Future<LoyaltyRewardResponse> searchLoyaltyReward({
    required SearchLoyaltyRewardRequest request,
    String? authToken,
  }) async {

    authToken ??= authenticationService.getCachedToken()?.accessToken;

    Map<String, String> headers = {
      "Authorization": "Bearer ${authToken ?? ""}",
      'Content-Type': 'application/json; charset=UTF-8',
      'Accept': 'application/json',

    };

    Uri endpoint = Uri.https(
        baseUrl, "/v2/loyalty/rewards/search");

    //print (endpoint.toString());

    var response = await
    http.post(endpoint, body: request.toJson(), headers: headers);

    if (response.statusCode == 200) {
      print (jsonDecode(response.body));
      return LoyaltyRewardResponse.fromJson(jsonDecode(response.body));
    }
    else {
      print (response.body);
      throw LoyaltyException(statusCode: response.statusCode, message: LoyaltyRewardResponse.fromJson(jsonDecode(response.body)).errors?[0].detail?.toString());
    }
  }

  ///
  /// Deletes a loyalty reward
  ///
  Future<bool> deleteLoyaltyReward({
    required String rewardId,
    String? authToken,
  }) async {

    authToken ??= authenticationService.getCachedToken()?.accessToken;

    Map<String, String> headers = {
      "Authorization": "Bearer ${authToken ?? ""}",
      'Content-Type': 'application/json; charset=UTF-8',
      'Accept': 'application/json',

    };

    Uri endpoint = Uri.https(
        baseUrl, "/v2/loyalty/rewards/$rewardId");

    //print (endpoint.toString());

    var response = await
    http.delete(endpoint, headers: headers);

    if (response.statusCode == 200) {
      print (jsonDecode(response.body));
      return true;
    }
    else {
      print (response.body);
      throw LoyaltyException(statusCode: response.statusCode, message: LoyaltyRewardResponse.fromJson(jsonDecode(response.body)).errors?[0].detail?.toString());
    }
  }

  ///
  /// Retrieves a loyalty reward.
  ///
  Future<LoyaltyReward> readLoyaltyReward({
    required String rewardId,
    String? authToken,
  }) async {

    authToken ??= authenticationService.getCachedToken()?.accessToken;

    Map<String, String> headers = {
      "Authorization": "Bearer ${authToken ?? ""}",
      'Content-Type': 'application/json; charset=UTF-8',
      'Accept': 'application/json',

    };

    Uri endpoint = Uri.https(
        baseUrl, "/v2/loyalty/rewards/$rewardId");

    //print (endpoint.toString());

    var response = await
    http.get(endpoint, headers: headers);

    if (response.statusCode == 200) {
      print (jsonDecode(response.body));
      return LoyaltyRewardResponse.fromJson(jsonDecode(response.body)).reward!;
    }
    else {
      print (response.body);
      throw LoyaltyException(statusCode: response.statusCode, message: LoyaltyRewardResponse.fromJson(jsonDecode(response.body)).errors?[0].detail?.toString());
    }
  }

  ///
  /// Redeems a loyalty reward.
  ///
  /// The endpoint sets the reward to the REDEEMED terminal state.
  ///
  Future<LoyaltyEvent> redeemLoyaltyReward({
    required String rewardId,
    required RedeemLoyaltyRequest request,
    String? authToken,
  }) async {

    authToken ??= authenticationService.getCachedToken()?.accessToken;

    Map<String, String> headers = {
      "Authorization": "Bearer ${authToken ?? ""}",
      'Content-Type': 'application/json; charset=UTF-8',
      'Accept': 'application/json',
    };

    Uri endpoint = Uri.https(
        baseUrl, "/v2/loyalty/rewards/$rewardId/redeem");

    //print (endpoint.toString());

    var response = await
    http.post(endpoint, body:request.toJson(), headers: headers);

    if (response.statusCode == 200) {
      print (jsonDecode(response.body));
      return LoyaltyEventResponse.fromJson(jsonDecode(response.body)).event!;
    }
    else {
      print (response.body);
      throw LoyaltyException(statusCode: response.statusCode, message: LoyaltyEventResponse.fromJson(jsonDecode(response.body)).errors?[0].detail?.toString());
    }
  }

}

class LoyaltyException implements Exception {
  final String? message;
  final int statusCode;

  LoyaltyException({required this.statusCode, this.message});

  @override
  String toString() {
    return "LoyaltyException: $statusCode - $message";
  }
}

