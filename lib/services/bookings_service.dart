
import 'dart:convert';
import 'package:another_square/services/authentication_service.dart';
import 'package:another_square/services/backend_extensions.dart';
import 'package:another_square/square_models.dart';
import 'package:http/http.dart' as http;

///
/// URL: https://developer.squareup.com/reference/square/bookings-api
/// Create and manage bookings for Square sellers.
///
/// The Bookings API allows you to create, retrieve, update,
/// and delete appointments online. When used with other Square
/// APIs (such as the Locations API, Team API, Catalog API, and Customers API),
/// the Bookings API lets you create online-booking applications for users to
/// book services provided by Square sellers.
///
class BookingsService {
  final String baseUrl;
  final AuthenticationService authenticationService;

  BookingsService(
      {required this.baseUrl, required this.authenticationService});



  ///
  /// Retrieve a collection of bookings.
  ///
  /// To call this endpoint with buyer-level permissions,
  /// set APPOINTMENTS_READ for the OAuth scope.
  /// To call this endpoint with seller-level permissions,
  /// set APPOINTMENTS_ALL_READ and APPOINTMENTS_READ for
  /// the OAuth scope.
  ///
  Future<BookingsResponse> listBookings({
    required ListBookingsRequest request,
    String? authToken,
  }) async {

    authToken ??= authenticationService.getCachedToken()?.accessToken;

    Map<String, String> headers = {
      "Authorization": "Bearer ${authToken ?? ""}",
      'Content-Type': 'application/json; charset=UTF-8',
      'Accept': 'application/json',

    };

    Uri endpoint = Uri.https(
        baseUrl, "/v2/bookings", request.toJson().toQueryParam());

    //print (endpoint.toString());

    var response = await
    http.get(endpoint, headers: headers);

    if (response.statusCode == 200) {
      print (jsonDecode(response.body));
      return BookingsResponse.fromJson(jsonDecode(response.body));
    }
    else {
      print (response.body);
      throw BookingsException(statusCode: response.statusCode, message: BookingsResponse.fromJson(jsonDecode(response.body)).errors?[0].detail?.toString());
    }
  }

  ///
  /// Creates a booking.
  ///
  /// To call this endpoint with buyer-level permissions,
  /// set APPOINTMENTS_WRITE for the OAuth scope.
  /// To call this endpoint with seller-level permissions,
  /// set APPOINTMENTS_ALL_WRITE and APPOINTMENTS_WRITE for the OAuth scope.
  ///
  Future<Booking> createBooking({
    required UpsertBookingRequest request,
    String? authToken,
  }) async {

    authToken ??= authenticationService.getCachedToken()?.accessToken;

    Map<String, String> headers = {
      "Authorization": "Bearer ${authToken ?? ""}",
      'Content-Type': 'application/json; charset=UTF-8',
      'Accept': 'application/json',

    };

    Uri endpoint = Uri.https(
        baseUrl, "/v2/bookings");

    //print (endpoint.toString());

    var response = await
    http.post(endpoint, body: jsonEncode(request.toJson()), headers: headers);

    if (response.statusCode == 200) {
      print (jsonDecode(response.body));
      return BookingsResponse.fromJson(jsonDecode(response.body)).booking!;
    }
    else {
      print (response.body);
      throw BookingsException(statusCode: response.statusCode, message: BookingsResponse.fromJson(jsonDecode(response.body)).errors?[0].detail?.toString());
    }
  }

  ///
  /// Searches for availabilities for booking.
  ///
  /// To call this endpoint with buyer-level permissions,
  /// set APPOINTMENTS_READ for the OAuth scope.
  /// To call this endpoint with seller-level permissions,
  /// set APPOINTMENTS_ALL_READ and APPOINTMENTS_READ for the OAuth scope.
  ///
  Future<List<Availability>> searchBookingAvailability({
    required SearchAvailabilityQuery query,
    String? authToken,
  }) async {

    authToken ??= authenticationService.getCachedToken()?.accessToken;

    Map<String, String> headers = {
      "Authorization": "Bearer ${authToken ?? ""}",
      'Content-Type': 'application/json; charset=UTF-8',
      'Accept': 'application/json',

    };

    Uri endpoint = Uri.https(
        baseUrl, "/v2/bookings/availability/search");

    //print (endpoint.toString());

    var response = await
    http.post(endpoint, body: jsonEncode(query.toJson()), headers: headers);

    if (response.statusCode == 200) {
      print (jsonDecode(response.body));
      return AvailabilityResponse.fromJson(jsonDecode(response.body)).availabilities!;
    }
    else {
      print (response.body);
      throw BookingsException(statusCode: response.statusCode, message: AvailabilityResponse.fromJson(jsonDecode(response.body)).errors?[0].detail?.toString());
    }
  }

  ///
  /// Retrieves a seller's booking profile.
  ///
  Future<BusinessBookingProfile> readBusinessBooking({
    String? authToken,
  }) async {

    authToken ??= authenticationService.getCachedToken()?.accessToken;

    Map<String, String> headers = {
      "Authorization": "Bearer ${authToken ?? ""}",
      'Content-Type': 'application/json; charset=UTF-8',
      'Accept': 'application/json',

    };

    Uri endpoint = Uri.https(
        baseUrl, "/v2/bookings/business-booking-profile");

    //print (endpoint.toString());

    var response = await
    http.get(endpoint, headers: headers);

    if (response.statusCode == 200) {
      print (jsonDecode(response.body));
      return BusinessBookingProfileResponse.fromJson(jsonDecode(response.body)).businessBookingProfile!;
    }
    else {
      print (response.body);
      throw BookingsException(statusCode: response.statusCode, message: BusinessBookingProfileResponse.fromJson(jsonDecode(response.body)).errors?[0].detail?.toString());
    }
  }

  ///
  /// Lists booking profiles for team members.
  ///
  Future<TeamMemberBookingProfileResponse> listTeamMemberBookingProfile({
    required ReadTeamMemberBookingProfileRequest request,
    String? authToken,
  }) async {

    authToken ??= authenticationService.getCachedToken()?.accessToken;

    Map<String, String> headers = {
      "Authorization": "Bearer ${authToken ?? ""}",
      'Content-Type': 'application/json; charset=UTF-8',
      'Accept': 'application/json',

    };

    Uri endpoint = Uri.https(
        baseUrl, "/v2/bookings/team-member-booking-profiles", request.toJson().toQueryParam());

    //print (endpoint.toString());

    var response = await
    http.get(endpoint, headers: headers);

    if (response.statusCode == 200) {
      print (jsonDecode(response.body));
      return TeamMemberBookingProfileResponse.fromJson(jsonDecode(response.body));
    }
    else {
      print (response.body);
      throw BookingsException(statusCode: response.statusCode, message: TeamMemberBookingProfileResponse.fromJson(jsonDecode(response.body)).errors?[0].detail?.toString());
    }
  }


  ///
  /// Retrieves a team member's booking profile.
  ///
  Future<TeamMemberBookingProfile> readTeamMemberBookingProfile({
    required String teamMemberId,
    String? authToken,
  }) async {

    authToken ??= authenticationService.getCachedToken()?.accessToken;

    Map<String, String> headers = {
      "Authorization": "Bearer ${authToken ?? ""}",
      'Content-Type': 'application/json; charset=UTF-8',
      'Accept': 'application/json',

    };

    Uri endpoint = Uri.https(
        baseUrl, "/v2/bookings/team-member-booking-profiles/$teamMemberId");

    //print (endpoint.toString());

    var response = await
    http.get(endpoint, headers: headers);

    if (response.statusCode == 200) {
      print (jsonDecode(response.body));
      return TeamMemberBookingProfileResponse.fromJson(jsonDecode(response.body)).teamMemberBookingProfile!;
    }
    else {
      print (response.body);
      throw BookingsException(statusCode: response.statusCode, message: TeamMemberBookingProfileResponse.fromJson(jsonDecode(response.body)).errors?[0].detail?.toString());
    }
  }

  ///
  /// Retrieves a booking.
  ///
  /// To call this endpoint with buyer-level permissions,
  /// set APPOINTMENTS_READ for the OAuth scope.
  /// To call this endpoint with seller-level permissions,
  /// set APPOINTMENTS_ALL_READ and APPOINTMENTS_READ for the OAuth scope.
  ///
  Future<Booking> readBooking({
    required String bookingId,
    String? authToken,
  }) async {

    authToken ??= authenticationService.getCachedToken()?.accessToken;

    Map<String, String> headers = {
      "Authorization": "Bearer ${authToken ?? ""}",
      'Content-Type': 'application/json; charset=UTF-8',
      'Accept': 'application/json',

    };

    Uri endpoint = Uri.https(
        baseUrl, "/v2/bookings/$bookingId");

    //print (endpoint.toString());

    var response = await
    http.get(endpoint, headers: headers);

    if (response.statusCode == 200) {
      print (jsonDecode(response.body));
      return BookingsResponse.fromJson(jsonDecode(response.body)).booking!;
    }
    else {
      print (response.body);
      throw BookingsException(statusCode: response.statusCode, message: BookingsResponse.fromJson(jsonDecode(response.body)).errors?[0].detail?.toString());
    }
  }


  ///
  /// Updates a booking.
  ///
  /// To call this endpoint with buyer-level permissions,
  /// set APPOINTMENTS_WRITE for the OAuth scope.
  /// To call this endpoint with seller-level permissions,
  /// set APPOINTMENTS_ALL_WRITE and APPOINTMENTS_WRITE for the OAuth scope.
  ///
  Future<Booking> updateBooking({
    required String bookingId,
    required UpsertBookingRequest request,
    String? authToken,
  }) async {

    authToken ??= authenticationService.getCachedToken()?.accessToken;

    Map<String, String> headers = {
      "Authorization": "Bearer ${authToken ?? ""}",
      'Content-Type': 'application/json; charset=UTF-8',
      'Accept': 'application/json',

    };

    Uri endpoint = Uri.https(
        baseUrl, "/v2/bookings/$bookingId");

    //print (endpoint.toString());

    var response = await
    http.put(endpoint, body:jsonEncode(request.toJson()), headers: headers);

    if (response.statusCode == 200) {
      print (jsonDecode(response.body));
      return BookingsResponse.fromJson(jsonDecode(response.body)).booking!;
    }
    else {
      print (response.body);
      throw BookingsException(statusCode: response.statusCode, message: BookingsResponse.fromJson(jsonDecode(response.body)).errors?[0].detail?.toString());
    }
  }

  ///
  /// Cancels an existing booking.
  ///
  /// To call this endpoint with buyer-level permissions,
  /// set APPOINTMENTS_WRITE for the OAuth scope.
  /// To call this endpoint with seller-level permissions,
  /// set APPOINTMENTS_ALL_WRITE and APPOINTMENTS_WRITE for the OAuth scope.
  ///
  Future<Booking> cancelBooking({
    required String bookingId,
    required CancelBookingRequest request,
    String? authToken,
  }) async {

    authToken ??= authenticationService.getCachedToken()?.accessToken;

    Map<String, String> headers = {
      "Authorization": "Bearer ${authToken ?? ""}",
      'Content-Type': 'application/json; charset=UTF-8',
      'Accept': 'application/json',

    };

    Uri endpoint = Uri.https(
        baseUrl, "/v2/bookings/$bookingId/cancel");

    //print (endpoint.toString());

    var response = await
    http.post(endpoint, body:jsonEncode(request.toJson()), headers: headers);

    if (response.statusCode == 200) {
      print (jsonDecode(response.body));
      return BookingsResponse.fromJson(jsonDecode(response.body)).booking!;
    }
    else {
      print (response.body);
      throw BookingsException(statusCode: response.statusCode, message: BookingsResponse.fromJson(jsonDecode(response.body)).errors?[0].detail?.toString());
    }
  }

}

class BookingsException implements Exception {
  final String? message;
  final int statusCode;

  BookingsException({required this.statusCode, this.message});

  @override
  String toString() {
    return "BookingsException: $statusCode - $message";
  }
}

