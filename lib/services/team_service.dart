
import 'dart:convert';
import 'package:another_square/services/authentication_service.dart';
import 'package:another_square/square_models.dart';
import 'package:http/http.dart' as http;

///
/// URL: https://developer.squareup.com/reference/square/team-api
///
/// Pull employee data into accounting and payroll systems with the Team API.
///
/// The Team API allows applications to retrieve a roster of team members
/// registered in the Square Point of Sale system, which can be useful
/// in payroll and account contexts.
///
/// The Team API is best used in conjunction with the Labor API,
/// where you provide team member IDs to manage shifts, breaks, and wages.
///
class TeamService {
  final String baseUrl;
  final AuthenticationService authenticationService;

  TeamService(
      {required this.baseUrl, required this.authenticationService});


  ///
  /// Creates a single TeamMember object.
  ///
  /// The TeamMember object is returned on successful creates.
  ///
  Future<TeamMember> createTeamMember({
    required TeamMemberUpsertRequest request,
    String? authToken,
  }) async {

    authToken ??= authenticationService.getCachedToken()?.accessToken;

    Map<String, String> headers = {
      "Authorization": "Bearer ${authToken ?? ""}",
      'Content-Type': 'application/json; charset=UTF-8',
      'Accept': 'application/json',

    };

    Uri endpoint = Uri.https(
        baseUrl, "/v2/team-members");

    //print (endpoint.toString());

    var response = await
    http.post(endpoint, body: jsonEncode(request.toJson()), headers: headers);

    if (response.statusCode == 200) {
      print (jsonDecode(response.body));
      return TeamMemberResponse.fromJson(jsonDecode(response.body)).teamMember!;
    }
    else {
      print (response.body);
      throw TeamMemberException(statusCode: response.statusCode, message: TeamMemberResponse.fromJson(jsonDecode(response.body)).errors?[0].detail?.toString());
    }
  }

  ///
  /// Creates multiple TeamMember objects.
  ///
  /// The created TeamMember objects are returned on successful
  /// creates. This process is non-transactional and processes
  /// as much of the request as possible. If one of the creates
  /// in the request cannot be successfully processed, the request
  /// is not marked as failed, but the body of the response contains
  /// explicit error information for the failed create.
  ///
  Future<Map<String, TeamMember>> batchCreateTeamMember({
    required TeamMemberBatchUpsertRequest request,
    String? authToken,
  }) async {

    authToken ??= authenticationService.getCachedToken()?.accessToken;

    Map<String, String> headers = {
      "Authorization": "Bearer ${authToken ?? ""}",
      'Content-Type': 'application/json; charset=UTF-8',
      'Accept': 'application/json',

    };

    Uri endpoint = Uri.https(
        baseUrl, "/v2/team-members/bulk-create");

    //print (endpoint.toString());

    var response = await
    http.post(endpoint, body: jsonEncode(request.toJson()), headers: headers);

    if (response.statusCode == 200) {
      print (jsonDecode(response.body));
      return TeamMemberBatchResponse.fromJson(jsonDecode(response.body)).teamMembers!.map((key, value) => MapEntry(key, value.teamMember!));
    }
    else {
      print (response.body);
      throw TeamMemberException(statusCode: response.statusCode, message: TeamMemberBatchResponse.fromJson(jsonDecode(response.body)).errors?[0].detail?.toString());
    }
  }

  ///
  /// Updates multiple TeamMember objects.
  ///
  /// The updated TeamMember objects are returned on successful
  /// updates. This process is non-transactional and processes
  /// as much of the request as possible. If one of the updates
  /// in the request cannot be successfully processed, the request
  /// is not marked as failed, but the body of the response contains
  /// explicit error information for the failed update. Learn about
  /// Troubleshooting the Team API.
  ///
  Future<Map<String, TeamMember>> batchUpdateTeamMember({
    required TeamMemberBatchUpsertRequest request,
    String? authToken,
  }) async {

    authToken ??= authenticationService.getCachedToken()?.accessToken;

    Map<String, String> headers = {
      "Authorization": "Bearer ${authToken ?? ""}",
      'Content-Type': 'application/json; charset=UTF-8',
      'Accept': 'application/json',

    };

    Uri endpoint = Uri.https(
        baseUrl, "/v2/team-members/bulk-update");

    //print (endpoint.toString());

    var response = await
    http.post(endpoint, body: jsonEncode(request.toJson()), headers: headers);

    if (response.statusCode == 200) {
      print (jsonDecode(response.body));
      return TeamMemberBatchResponse.fromJson(jsonDecode(response.body)).teamMembers!.map((key, value) => MapEntry(key, value.teamMember!));
    }
    else {
      print (response.body);
      throw TeamMemberException(statusCode: response.statusCode, message: TeamMemberBatchResponse.fromJson(jsonDecode(response.body)).errors?[0].detail?.toString());
    }
  }

  ///
  /// Returns a paginated list of TeamMember objects for a business.
  ///
  Future<TeamMemberResponse> searchTeamMember({
    required TeamMemberSearchRequest request,
    String? authToken,
  }) async {

    authToken ??= authenticationService.getCachedToken()?.accessToken;

    Map<String, String> headers = {
      "Authorization": "Bearer ${authToken ?? ""}",
      'Content-Type': 'application/json; charset=UTF-8',
      'Accept': 'application/json',

    };

    Uri endpoint = Uri.https(
        baseUrl, "/v2/team-members/search");

    //print (endpoint.toString());

    var response = await
    http.post(endpoint, body: jsonEncode(request.toJson()), headers: headers);

    if (response.statusCode == 200) {
      print (jsonDecode(response.body));
      return TeamMemberResponse.fromJson(jsonDecode(response.body));
    }
    else {
      print (response.body);
      throw TeamMemberException(statusCode: response.statusCode, message: TeamMemberResponse.fromJson(jsonDecode(response.body)).errors?[0].detail?.toString());
    }
  }

  ///
  /// Retrieves a TeamMember object for the given TeamMember.id.
  ///
  /// Learn about Troubleshooting the Team API.
  ///
  Future<TeamMember> readTeamMember({
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
        baseUrl, "/v2/team-members/$teamMemberId");

    //print (endpoint.toString());

    var response = await
    http.get(endpoint,  headers: headers);

    if (response.statusCode == 200) {
      print (jsonDecode(response.body));
      return TeamMemberResponse.fromJson(jsonDecode(response.body)).teamMember!;
    }
    else {
      print (response.body);
      throw TeamMemberException(statusCode: response.statusCode, message: TeamMemberResponse.fromJson(jsonDecode(response.body)).errors?[0].detail?.toString());
    }
  }

  ///
  /// Updates a single TeamMember object.
  ///
  /// The TeamMember object is returned on successful updates.
  /// Learn about Troubleshooting the Team API.
  ///
  Future<TeamMember> updateTeamMember({
    required TeamMember teamMember,
    String? authToken,
  }) async {

    authToken ??= authenticationService.getCachedToken()?.accessToken;

    Map<String, String> headers = {
      "Authorization": "Bearer ${authToken ?? ""}",
      'Content-Type': 'application/json; charset=UTF-8',
      'Accept': 'application/json',

    };

    String teamMemberId = teamMember.id!;
    Uri endpoint = Uri.https(
        baseUrl, "/v2/team-members/$teamMemberId");

    //print (endpoint.toString());

    var response = await
    http.put(endpoint, body: jsonEncode(teamMember.toJson()), headers: headers);

    if (response.statusCode == 200) {
      print (jsonDecode(response.body));
      return TeamMemberResponse.fromJson(jsonDecode(response.body)).teamMember!;
    }
    else {
      print (response.body);
      throw TeamMemberException(statusCode: response.statusCode, message: TeamMemberResponse.fromJson(jsonDecode(response.body)).errors?[0].detail?.toString());
    }
  }

  ///
  /// Retrieves a WageSetting object for a team member
  /// specified by TeamMember.id.
  ///
  /// Learn about Troubleshooting the Team API.
  ///
  Future<WageSetting> readWageSetting({
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
        baseUrl, "/v2/team-members/$teamMemberId/wage-setting");

    //print (endpoint.toString());

    var response = await
    http.get(endpoint, headers: headers);

    if (response.statusCode == 200) {
      print (jsonDecode(response.body));
      return WageSettingResponse.fromJson(jsonDecode(response.body)).wageSetting!;
    }
    else {
      print (response.body);
      throw TeamMemberException(statusCode: response.statusCode, message: WageSettingResponse.fromJson(jsonDecode(response.body)).errors?[0].detail?.toString());
    }
  }

  ///
  /// Creates or updates a WageSetting object.
  ///
  /// The object is created if a WageSetting with the specified
  /// team_member_id does not exist. Otherwise, it fully replaces
  /// the WageSetting object for the team member. The WageSetting
  /// is returned on a successful update. Learn about Troubleshooting
  /// the Team API.
  ///
  Future<WageSetting> updateWageSetting({
    required WageSetting wageSetting,
    String? authToken,
  }) async {

    authToken ??= authenticationService.getCachedToken()?.accessToken;

    Map<String, String> headers = {
      "Authorization": "Bearer ${authToken ?? ""}",
      'Content-Type': 'application/json; charset=UTF-8',
      'Accept': 'application/json',

    };

    Uri endpoint = Uri.https(
        baseUrl, "/v2/team-members/${wageSetting.teamMemberId}/wage-setting");

    //print (endpoint.toString());

    var response = await
    http.put(endpoint, body: wageSetting, headers: headers);

    if (response.statusCode == 200) {
      print (jsonDecode(response.body));
      return WageSettingResponse.fromJson(jsonDecode(response.body)).wageSetting!;
    }
    else {
      print (response.body);
      throw TeamMemberException(statusCode: response.statusCode, message: WageSettingResponse.fromJson(jsonDecode(response.body)).errors?[0].detail?.toString());
    }
  }


  ///
  /// Returns a paginated list of BreakType instances for a business.
  ///
  Future<BreakTypeResponse> listBreakTypes({
    required ListBreakTypesRequest request,
    String? authToken,
  }) async {

    authToken ??= authenticationService.getCachedToken()?.accessToken;

    Map<String, String> headers = {
      "Authorization": "Bearer ${authToken ?? ""}",
      'Content-Type': 'application/json; charset=UTF-8',
      'Accept': 'application/json',

    };

    Uri endpoint = Uri.https(
        baseUrl, "/v2/labor/break-types", request.toJson());

    //print (endpoint.toString());

    var response = await
    http.get(endpoint, headers: headers);

    if (response.statusCode == 200) {
      print (jsonDecode(response.body));
      return BreakTypeResponse.fromJson(jsonDecode(response.body));
    }
    else {
      print (response.body);
      throw TeamMemberException(statusCode: response.statusCode, message: BreakTypeResponse.fromJson(jsonDecode(response.body)).errors?[0].detail?.toString());
    }
  }


  ///
  /// Creates a new BreakType.
  ///
  Future<BreakType> createBreakTypes({
    required CreateBreakTypeRequest request,
    String? authToken,
  }) async {

    authToken ??= authenticationService.getCachedToken()?.accessToken;

    Map<String, String> headers = {
      "Authorization": "Bearer ${authToken ?? ""}",
      'Content-Type': 'application/json; charset=UTF-8',
      'Accept': 'application/json',

    };

    Uri endpoint = Uri.https(
        baseUrl, "/v2/labor/break-types");

    //print (endpoint.toString());

    var response = await
    http.post(endpoint, body:request.toJson(), headers: headers);

    if (response.statusCode == 200) {
      print (jsonDecode(response.body));
      return BreakTypeResponse.fromJson(jsonDecode(response.body)).breakType!;
    }
    else {
      print (response.body);
      throw TeamMemberException(statusCode: response.statusCode, message: BreakTypeResponse.fromJson(jsonDecode(response.body)).errors?[0].detail?.toString());
    }
  }

  ///
  /// Deletes an existing BreakType.
  ///
  /// A BreakType can be deleted even if it is referenced from a Shift.
  ///
  Future<bool> deleteBreakTypes({
    required String breakTypeId,
    String? authToken,
  }) async {

    authToken ??= authenticationService.getCachedToken()?.accessToken;

    Map<String, String> headers = {
      "Authorization": "Bearer ${authToken ?? ""}",
      'Content-Type': 'application/json; charset=UTF-8',
      'Accept': 'application/json',

    };

    Uri endpoint = Uri.https(
        baseUrl, "/v2/labor/break-types/$breakTypeId");

    //print (endpoint.toString());

    var response = await
    http.delete(endpoint, headers: headers);

    if (response.statusCode == 200) {
      print (jsonDecode(response.body));
      return true;
    }
    else {
      print (response.body);
      throw TeamMemberException(statusCode: response.statusCode, message: BreakTypeResponse.fromJson(jsonDecode(response.body)).errors?[0].detail?.toString());
    }
  }

  ///
  /// Returns a single BreakType specified by id.
  ///
  Future<BreakType> readBreakTypes({
    required String breakTypeId,
    String? authToken,
  }) async {

    authToken ??= authenticationService.getCachedToken()?.accessToken;

    Map<String, String> headers = {
      "Authorization": "Bearer ${authToken ?? ""}",
      'Content-Type': 'application/json; charset=UTF-8',
      'Accept': 'application/json',

    };

    Uri endpoint = Uri.https(
        baseUrl, "/v2/labor/break-types/$breakTypeId");

    //print (endpoint.toString());

    var response = await
    http.get(endpoint, headers: headers);

    if (response.statusCode == 200) {
      print (jsonDecode(response.body));
      return BreakTypeResponse.fromJson(jsonDecode(response.body)).breakType!;
    }
    else {
      print (response.body);
      throw TeamMemberException(statusCode: response.statusCode, message: BreakTypeResponse.fromJson(jsonDecode(response.body)).errors?[0].detail?.toString());
    }
  }

  ///
  /// Updates an existing BreakType.
  ///
  Future<BreakType> updateBreakTypes({
    required BreakType breakType,
    String? authToken,
  }) async {

    authToken ??= authenticationService.getCachedToken()?.accessToken;

    Map<String, String> headers = {
      "Authorization": "Bearer ${authToken ?? ""}",
      'Content-Type': 'application/json; charset=UTF-8',
      'Accept': 'application/json',

    };

    Uri endpoint = Uri.https(
        baseUrl, "/v2/labor/break-types/${breakType.id}");

    //print (endpoint.toString());

    var response = await
    http.put(endpoint, body:breakType.toJson(), headers: headers);

    if (response.statusCode == 200) {
      print (jsonDecode(response.body));
      return BreakTypeResponse.fromJson(jsonDecode(response.body)).breakType!;
    }
    else {
      print (response.body);
      throw TeamMemberException(statusCode: response.statusCode, message: BreakTypeResponse.fromJson(jsonDecode(response.body)).errors?[0].detail?.toString());
    }
  }

  ///
  /// Creates a new Shift.
  ///
  /// A Shift represents a complete workday for a single employee.
  ///
  Future<Shift> createShift({
    required CreateShiftRequest request,
    String? authToken,
  }) async {

    authToken ??= authenticationService.getCachedToken()?.accessToken;

    Map<String, String> headers = {
      "Authorization": "Bearer ${authToken ?? ""}",
      'Content-Type': 'application/json; charset=UTF-8',
      'Accept': 'application/json',

    };

    Uri endpoint = Uri.https(
        baseUrl, "/v2/labor/shifts");

    //print (endpoint.toString());

    var response = await
    http.post(endpoint, body: request.toJson(),  headers: headers);

    if (response.statusCode == 200) {
      print (jsonDecode(response.body));
      return ShiftResponse.fromJson(jsonDecode(response.body)).shift!;
    }
    else {
      print (response.body);
      throw TeamMemberException(statusCode: response.statusCode, message: ShiftResponse.fromJson(jsonDecode(response.body)).errors?[0].detail?.toString());
    }
  }


  ///
  /// Returns a paginated list of Shift records for a business.
  ///
  Future<ShiftResponse> searchShift({
    required SearchShiftRequest request,
    String? authToken,
  }) async {

    authToken ??= authenticationService.getCachedToken()?.accessToken;

    Map<String, String> headers = {
      "Authorization": "Bearer ${authToken ?? ""}",
      'Content-Type': 'application/json; charset=UTF-8',
      'Accept': 'application/json',

    };

    Uri endpoint = Uri.https(
        baseUrl, "/v2/labor/shifts/search");

    //print (endpoint.toString());

    var response = await
    http.post(endpoint, body: request.toJson(),  headers: headers);

    if (response.statusCode == 200) {
      print (jsonDecode(response.body));
      return ShiftResponse.fromJson(jsonDecode(response.body));
    }
    else {
      print (response.body);
      throw TeamMemberException(statusCode: response.statusCode, message: ShiftResponse.fromJson(jsonDecode(response.body)).errors?[0].detail?.toString());
    }
  }

  ///
  /// Deletes a Shift.
  ///
  Future<bool> deleteShift({
    required String shiftId,
    String? authToken,
  }) async {

    authToken ??= authenticationService.getCachedToken()?.accessToken;

    Map<String, String> headers = {
      "Authorization": "Bearer ${authToken ?? ""}",
      'Content-Type': 'application/json; charset=UTF-8',
      'Accept': 'application/json',

    };

    Uri endpoint = Uri.https(
        baseUrl, "/v2/labor/shifts/$shiftId");

    //print (endpoint.toString());

    var response = await
    http.delete(endpoint, headers: headers);

    if (response.statusCode == 200) {
      print (jsonDecode(response.body));
      return true;
    }
    else {
      print (response.body);
      throw TeamMemberException(statusCode: response.statusCode, message: ShiftResponse.fromJson(jsonDecode(response.body)).errors?[0].detail?.toString());
    }
  }

  ///
  /// Returns a single Shift specified by id.
  ///
  Future<Shift> readShift({
    required String shiftId,
    String? authToken,
  }) async {

    authToken ??= authenticationService.getCachedToken()?.accessToken;

    Map<String, String> headers = {
      "Authorization": "Bearer ${authToken ?? ""}",
      'Content-Type': 'application/json; charset=UTF-8',
      'Accept': 'application/json',

    };

    Uri endpoint = Uri.https(
        baseUrl, "/v2/labor/shifts/$shiftId");

    //print (endpoint.toString());

    var response = await
    http.get(endpoint, headers: headers);

    if (response.statusCode == 200) {
      print (jsonDecode(response.body));
      return ShiftResponse.fromJson(jsonDecode(response.body)).shift!;
    }
    else {
      print (response.body);
      throw TeamMemberException(statusCode: response.statusCode, message: ShiftResponse.fromJson(jsonDecode(response.body)).errors?[0].detail?.toString());
    }
  }

  ///
  /// Updates an existing Shift.
  ///
  /// When adding a Break to a Shift, any earlier Break instances in
  /// the Shift have the end_at property set to a valid RFC-3339
  /// datetime string.
  ///
  /// When closing a Shift, all Break instances in the Shift must
  /// be complete with end_at set on each Break.
  ///
  Future<Shift> updateShift({
    required Shift shift,
    String? authToken,
  }) async {

    authToken ??= authenticationService.getCachedToken()?.accessToken;

    Map<String, String> headers = {
      "Authorization": "Bearer ${authToken ?? ""}",
      'Content-Type': 'application/json; charset=UTF-8',
      'Accept': 'application/json',

    };

    Uri endpoint = Uri.https(
        baseUrl, "/v2/labor/shifts/${shift.id}");

    //print (endpoint.toString());

    var response = await
    http.put(endpoint, body:shift.toJson(), headers: headers);

    if (response.statusCode == 200) {
      print (jsonDecode(response.body));
      return ShiftResponse.fromJson(jsonDecode(response.body)).shift!;
    }
    else {
      print (response.body);
      throw TeamMemberException(statusCode: response.statusCode, message: ShiftResponse.fromJson(jsonDecode(response.body)).errors?[0].detail?.toString());
    }
  }


  ///
  /// Returns a paginated list of TeamMemberWage instances for a business.
  ///
  Future<TeamMemberWageResponse> listTeamMemberWages({
    required ListTeamMemberWageRequest request,
    String? authToken,
  }) async {

    authToken ??= authenticationService.getCachedToken()?.accessToken;

    Map<String, String> headers = {
      "Authorization": "Bearer ${authToken ?? ""}",
      'Content-Type': 'application/json; charset=UTF-8',
      'Accept': 'application/json',

    };

    Uri endpoint = Uri.https(
        baseUrl, "/v2/labor/team-member-wages", request.toJson());

    //print (endpoint.toString());

    var response = await
    http.get(endpoint, headers: headers);

    if (response.statusCode == 200) {
      print (jsonDecode(response.body));
      return TeamMemberWageResponse.fromJson(jsonDecode(response.body));
    }
    else {
      print (response.body);
      throw TeamMemberException(statusCode: response.statusCode, message: TeamMemberWageResponse.fromJson(jsonDecode(response.body)).errors?[0].detail?.toString());
    }
  }

  ///
  /// Returns a single TeamMemberWage specified by id.
  ///
  Future<TeamMemberWage> getTeamMemberWages({
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
        baseUrl, "/v2/labor/team-member-wages/$teamMemberId");

    //print (endpoint.toString());

    var response = await
    http.get(endpoint, headers: headers);

    if (response.statusCode == 200) {
      print (jsonDecode(response.body));
      return TeamMemberWageResponse.fromJson(jsonDecode(response.body)).teamMemberWage!;
    }
    else {
      print (response.body);
      throw TeamMemberException(statusCode: response.statusCode, message: TeamMemberWageResponse.fromJson(jsonDecode(response.body)).errors?[0].detail?.toString());
    }
  }

  ///
  /// Returns a list of WorkweekConfig instances for a business.
  ///
  Future<WorkWeekConfigResponse> listWorkWeekConfigs({
    required SearchWorkWeekConfigRequest request,
    String? authToken,
  }) async {

    authToken ??= authenticationService.getCachedToken()?.accessToken;

    Map<String, String> headers = {
      "Authorization": "Bearer ${authToken ?? ""}",
      'Content-Type': 'application/json; charset=UTF-8',
      'Accept': 'application/json',

    };

    Uri endpoint = Uri.https(
        baseUrl, "/v2/labor/workweek-configs", request.toJson());

    //print (endpoint.toString());

    var response = await
    http.get(endpoint, headers: headers);

    if (response.statusCode == 200) {
      print (jsonDecode(response.body));
      return WorkWeekConfigResponse.fromJson(jsonDecode(response.body));
    }
    else {
      print (response.body);
      throw TeamMemberException(statusCode: response.statusCode, message: WorkWeekConfigResponse.fromJson(jsonDecode(response.body)).errors?[0].detail?.toString());
    }
  }

  ///
  /// Updates a WorkweekConfig.
  ///
  Future<WorkweekConfig> updateWorkWeekConfigs({
    required WorkweekConfig config,
    String? authToken,
  }) async {

    authToken ??= authenticationService.getCachedToken()?.accessToken;

    Map<String, String> headers = {
      "Authorization": "Bearer ${authToken ?? ""}",
      'Content-Type': 'application/json; charset=UTF-8',
      'Accept': 'application/json',

    };

    Uri endpoint = Uri.https(
        baseUrl, "/v2/labor/workweek-configs/${config.id}");

    //print (endpoint.toString());

    var response = await
    http.put(endpoint, body: config.toJson(), headers: headers);

    if (response.statusCode == 200) {
      print (jsonDecode(response.body));
      return WorkWeekConfigResponse.fromJson(jsonDecode(response.body)).workweekConfig!;
    }
    else {
      print (response.body);
      throw TeamMemberException(statusCode: response.statusCode, message: WorkWeekConfigResponse.fromJson(jsonDecode(response.body)).errors?[0].detail?.toString());
    }
  }


}

class TeamMemberException implements Exception {
  final String? message;
  final int statusCode;

  TeamMemberException({required this.statusCode, this.message});

  @override
  String toString() {
    return "TeamMemberException: $statusCode - $message";
  }
}

