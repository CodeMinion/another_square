
import 'dart:convert';
import 'package:another_square/services/authentication_service.dart';
import 'package:another_square/square_models.dart';
import 'package:http/http.dart' as http;

///
/// URL: https://developer.squareup.com/reference/square/subscriptions-api/create-subscription
///
/// Creates a subscription to a subscription plan by a customer.
///
/// If you provide a card on file in the request, Square charges the card
/// for the subscription. Otherwise, Square bills an invoice to
/// the customer's email address. The subscription starts immediately,
/// unless the request includes the optional start_date. Each individual
/// subscription is associated with a particular location.
///
class SubscriptionService {
  final String baseUrl;
  final AuthenticationService authenticationService;

  SubscriptionService(
      {required this.baseUrl, required this.authenticationService});


  ///
  /// Creates a subscription to a subscription plan by a customer.
  ///
  /// If you provide a card on file in the request, Square charges
  /// the card for the subscription. Otherwise, Square bills an
  /// invoice to the customer's email address. The subscription
  /// starts immediately, unless the request includes the optional
  /// start_date. Each individual subscription is associated with
  /// a particular location.
  ///
  Future<Subscription> createSubscription({
    required CreateSubscriptionRequest request,
    String? authToken,
  }) async {

    authToken ??= authenticationService.getCachedToken()?.accessToken;

    Map<String, String> headers = {
      "Authorization": "Bearer ${authToken ?? ""}",
      'Content-Type': 'application/json; charset=UTF-8',
      'Accept': 'application/json',

    };

    Uri endpoint = Uri.https(
        baseUrl, "/v2/subscriptions");

    //print (endpoint.toString());

    var response = await
    http.post(endpoint, body: jsonEncode(request.toJson()), headers: headers);

    if (response.statusCode == 200) {
      print (jsonDecode(response.body));
      return SubscriptionResponse.fromJson(jsonDecode(response.body)).subscription!;
    }
    else {
      print (response.body);
      throw SubscriptionException(statusCode: response.statusCode, message: SubscriptionResponse.fromJson(jsonDecode(response.body)).errors?[0].detail?.toString());
    }
  }

  ///
  /// Searches for subscriptions.
  /// Results are ordered chronologically by subscription creation
  /// date. If the request specifies more than one location ID, the
  /// endpoint orders the result by location ID, and then by creation
  /// date within each location. If no locations are given in the query,
  /// all locations are searched.
  ///
  /// You can also optionally specify customer_ids to search by customer.
  /// If left unset, all customers associated with the specified locations
  /// are returned. If the request specifies customer IDs, the endpoint
  /// orders results first by location, within location by customer ID,
  /// and within customer by subscription creation date.
  ///
  Future<SubscriptionResponse> searchSubscription({
    required SearchSubscriptionRequest request,
    String? authToken,
  }) async {

    authToken ??= authenticationService.getCachedToken()?.accessToken;

    Map<String, String> headers = {
      "Authorization": "Bearer ${authToken ?? ""}",
      'Content-Type': 'application/json; charset=UTF-8',
      'Accept': 'application/json',

    };

    Uri endpoint = Uri.https(
        baseUrl, "/v2/subscriptions/search");

    //print (endpoint.toString());

    var response = await
    http.post(endpoint, body: jsonEncode(request.toJson()), headers: headers);

    if (response.statusCode == 200) {
      print (jsonDecode(response.body));
      return SubscriptionResponse.fromJson(jsonDecode(response.body));
    }
    else {
      print (response.body);
      throw SubscriptionException(statusCode: response.statusCode, message: SubscriptionResponse.fromJson(jsonDecode(response.body)).errors?[0].detail?.toString());
    }
  }

  ///
  /// Retrieves a subscription.
  ///
  Future<Subscription> readSubscription({
    required String subscriptionId,
    String? authToken,
  }) async {

    authToken ??= authenticationService.getCachedToken()?.accessToken;

    Map<String, String> headers = {
      "Authorization": "Bearer ${authToken ?? ""}",
      'Content-Type': 'application/json; charset=UTF-8',
      'Accept': 'application/json',

    };

    Uri endpoint = Uri.https(
        baseUrl, "/v2/subscriptions/$subscriptionId");

    //print (endpoint.toString());

    var response = await
    http.get(endpoint, headers: headers);

    if (response.statusCode == 200) {
      print (jsonDecode(response.body));
      return SubscriptionResponse.fromJson(jsonDecode(response.body)).subscription!;
    }
    else {
      print (response.body);
      throw SubscriptionException(statusCode: response.statusCode, message: SubscriptionResponse.fromJson(jsonDecode(response.body)).errors?[0].detail?.toString());
    }
  }

  ///
  /// Updates a subscription.
  ///
  /// You can set, modify, and clear the subscription field values.
  ///
  Future<Subscription> updateSubscription({
    required int subscriptionId,
    required Subscription request,
    String? authToken,
  }) async {

    authToken ??= authenticationService.getCachedToken()?.accessToken;

    Map<String, String> headers = {
      "Authorization": "Bearer ${authToken ?? ""}",
      'Content-Type': 'application/json; charset=UTF-8',
      'Accept': 'application/json',

    };

    Uri endpoint = Uri.https(
        baseUrl, "/v2/subscriptions/$subscriptionId");

    //print (endpoint.toString());

    var response = await
    http.put(endpoint, body: jsonEncode(request.toJson()), headers: headers);

    if (response.statusCode == 200) {
      print (jsonDecode(response.body));
      return SubscriptionResponse.fromJson(jsonDecode(response.body)).subscription!;
    }
    else {
      print (response.body);
      throw SubscriptionException(statusCode: response.statusCode, message: SubscriptionResponse.fromJson(jsonDecode(response.body)).errors?[0].detail?.toString());
    }
  }

  ///
  /// Deletes a scheduled action for a subscription.
  ///
  Future<Subscription> deleteSubscription({
    required int subscriptionId,
    required String actionId,
    String? authToken,
  }) async {

    authToken ??= authenticationService.getCachedToken()?.accessToken;

    Map<String, String> headers = {
      "Authorization": "Bearer ${authToken ?? ""}",
      'Content-Type': 'application/json; charset=UTF-8',
      'Accept': 'application/json',

    };

    Uri endpoint = Uri.https(
        baseUrl, "/v2/subscriptions/$subscriptionId}/actions/$actionId");

    //print (endpoint.toString());

    var response = await
    http.delete(endpoint, headers: headers);

    if (response.statusCode == 200) {
      print (jsonDecode(response.body));
      return SubscriptionResponse.fromJson(jsonDecode(response.body)).subscription!;
    }
    else {
      print (response.body);
      throw SubscriptionException(statusCode: response.statusCode, message: SubscriptionResponse.fromJson(jsonDecode(response.body)).errors?[0].detail?.toString());
    }
  }

  ///
  /// Schedules a CANCEL action to cancel an active subscription
  /// by setting the canceled_date field to the end of the active
  /// billing period and changing the subscription status from ACTIVE
  /// to CANCELED after this date.
  ///
  Future<SubscriptionResponse> cancelSubscription({
    required int subscriptionId,
    String? authToken,
  }) async {

    authToken ??= authenticationService.getCachedToken()?.accessToken;

    Map<String, String> headers = {
      "Authorization": "Bearer ${authToken ?? ""}",
      'Content-Type': 'application/json; charset=UTF-8',
      'Accept': 'application/json',

    };

    Uri endpoint = Uri.https(
        baseUrl, "/v2/subscriptions/$subscriptionId/cancel");

    //print (endpoint.toString());

    var response = await
    http.post(endpoint, headers: headers);

    if (response.statusCode == 200) {
      print (jsonDecode(response.body));
      return SubscriptionResponse.fromJson(jsonDecode(response.body));
    }
    else {
      print (response.body);
      throw SubscriptionException(statusCode: response.statusCode, message: SubscriptionResponse.fromJson(jsonDecode(response.body)).errors?[0].detail?.toString());
    }
  }

  ///
  /// Lists all events for a specific subscription.
  ///
  /// In the current implementation, only START_SUBSCRIPTION
  /// and STOP_SUBSCRIPTION (when the subscription was canceled)
  /// events are returned.
  ///
  Future<List<SubscriptionEvent>> listSubscriptionEvents({
    required int subscriptionId,
    String? cursor,
    int? limit,
    String? authToken,
  }) async {

    authToken ??= authenticationService.getCachedToken()?.accessToken;

    Map<String, String> headers = {
      "Authorization": "Bearer ${authToken ?? ""}",
      'Content-Type': 'application/json; charset=UTF-8',
      'Accept': 'application/json',

    };

    Map<String, dynamic> params = {
      "cursor": cursor,
      "limit": limit
    };


    Uri endpoint = Uri.https(
        baseUrl, "/v2/subscriptions/$subscriptionId/events", params);

    //print (endpoint.toString());

    var response = await
    http.get(endpoint, headers: headers);

    if (response.statusCode == 200) {
      print (jsonDecode(response.body));
      return SubscriptionEventResponse.fromJson(jsonDecode(response.body)).subscriptionEvents!;
    }
    else {
      print (response.body);
      throw SubscriptionException(statusCode: response.statusCode, message: SubscriptionEventResponse.fromJson(jsonDecode(response.body)).errors?[0].detail?.toString());
    }
  }

  ///
  /// Schedules a PAUSE action to pause an active subscription.
  ///
  Future<SubscriptionResponse> pauseSubscription({
    required String subscriptionId,
    required SubscriptionStateRequest request,
    String? authToken,
  }) async {

    authToken ??= authenticationService.getCachedToken()?.accessToken;

    Map<String, String> headers = {
      "Authorization": "Bearer ${authToken ?? ""}",
      'Content-Type': 'application/json; charset=UTF-8',
      'Accept': 'application/json',

    };

    Uri endpoint = Uri.https(
        baseUrl, "/v2/subscriptions/$subscriptionId/pause");

    //print (endpoint.toString());

    var response = await
    http.post(endpoint, body: jsonEncode(request.toJson()), headers: headers);

    if (response.statusCode == 200) {
      print (jsonDecode(response.body));
      return SubscriptionResponse.fromJson(jsonDecode(response.body));
    }
    else {
      print (response.body);
      throw SubscriptionException(statusCode: response.statusCode, message: SubscriptionResponse.fromJson(jsonDecode(response.body)).errors?[0].detail?.toString());
    }
  }

  ///
  /// Schedules a RESUME action to resume a paused
  /// or a deactivated subscription.
  ///
  Future<SubscriptionResponse> resumeSubscription({
    required String subscriptionId,
    required SubscriptionStateRequest request,
    String? authToken,
  }) async {

    authToken ??= authenticationService.getCachedToken()?.accessToken;

    Map<String, String> headers = {
      "Authorization": "Bearer ${authToken ?? ""}",
      'Content-Type': 'application/json; charset=UTF-8',
      'Accept': 'application/json',

    };

    Uri endpoint = Uri.https(
        baseUrl, "/v2/subscriptions/$subscriptionId/resume");

    //print (endpoint.toString());

    var response = await
    http.post(endpoint, body: jsonEncode(request.toJson()), headers: headers);

    if (response.statusCode == 200) {
      print (jsonDecode(response.body));
      return SubscriptionResponse.fromJson(jsonDecode(response.body));
    }
    else {
      print (response.body);
      throw SubscriptionException(statusCode: response.statusCode, message: SubscriptionResponse.fromJson(jsonDecode(response.body)).errors?[0].detail?.toString());
    }
  }


  Future<Subscription> swapPlan({
    required String subscriptionId,
    required String newPlanId,
    String? authToken,
  }) async {

    authToken ??= authenticationService.getCachedToken()?.accessToken;

    Map<String, String> headers = {
      "Authorization": "Bearer ${authToken ?? ""}",
      'Content-Type': 'application/json; charset=UTF-8',
      'Accept': 'application/json',

    };

    Uri endpoint = Uri.https(
        baseUrl, "/v2/subscriptions/$subscriptionId/swap-plan");

    //print (endpoint.toString());

    var request = {
      "new_plan_id": newPlanId
    };

    var response = await
    http.post(endpoint, body: jsonEncode(request), headers: headers);

    if (response.statusCode == 200) {
      print (jsonDecode(response.body));
      return SubscriptionResponse.fromJson(jsonDecode(response.body)).subscription!;
    }
    else {
      print (response.body);
      throw SubscriptionException(statusCode: response.statusCode, message: SubscriptionResponse.fromJson(jsonDecode(response.body)).errors?[0].detail?.toString());
    }
  }
}

class SubscriptionException implements Exception {
  final String? message;
  final int statusCode;

  SubscriptionException({required this.statusCode, this.message});

  @override
  String toString() {
    return "SubscriptionException: $statusCode - $message";
  }
}

