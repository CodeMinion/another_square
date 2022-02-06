library another_square;

import 'package:another_square/services/authentication_service.dart';
import 'package:another_square/square_models.dart';

///
/// Client for the Square APIs
class SquareClient {
  final EnvironmentType environmentType;
  final String? applicationId;
  final String clientId;
  final String clientSecret;
  String _url = "connect.squareupsandbox.com";
  AuthenticationService? _authenticationService;

  SquareClient(
      {
        required this.applicationId,
        required this.clientId,
        required this.clientSecret,
        this.environmentType = EnvironmentType.Sandbox}) {
    if (environmentType == EnvironmentType.Sandbox) {
      _url = "connect.squareupsandbox.com";
    } else {
      _url = "connect.squareup.com";
    }
  }

  /// Initializes the client
  Future<void> initialize() async {
    // TODO Initialize Services
    _authenticationService = AuthenticationService(
        clientId: clientId,
        clientSecret: clientSecret,
        authorizationEndpoint: "https://$_url/oauth2/authorize",
        tokenEndpoint: "https://connect.squareupsandbox.com/oauth2/token",
        revocationEndpoint: "https://connect.squareupsandbox.com/oauth2/token");

  }
  ///
  /// Returns an Authorization URL for presenting the user with
  /// a modal authorization.
  ///
  String getAuthorizationPageUrl(
      {required List<Scope> scopes,
        required String redirectUrl,
        required String state}) {
    if (_authenticationService == null) {
      throw ClientNotInitializedException(message: "Auth Not Ready");
    } else {
      return _authenticationService!.getAuthorizationPageUrl(
          scopes: scopes, state: state);
    }
  }

  ///
  /// Gets the Authorization Token from the code.
  ///
  Future<TokenResponse> getAuthToken(
      {required String code,
        required String redirectUrl
      }) async {
    if (_authenticationService == null) {
      throw ClientNotInitializedException(message: "Auth Not Ready");
    } else {
      return _authenticationService!
          .getAuthToken(code: code, redirectUrl: redirectUrl);
    }
  }

  ///
  /// Refreshes the authorization token.
  /// Note: If refreshToken is not set it will attempt to use the refresh
  /// token from the last token request it cached if any.
  ///
  Future<TokenResponse> refreshToken({String refreshToken = ""}) async {
    if (_authenticationService == null) {
      throw ClientNotInitializedException(message: "Auth Not Ready");
    } else {
      return _authenticationService!.refreshToken(refreshToken: refreshToken);
    }
  }

  bool isInitialized() {
    return _authenticationService != null;
  }
}

enum EnvironmentType {
  Sandbox,
  Production,
}

class ClientNotInitializedException implements Exception {
  final String message;

  ClientNotInitializedException({required this.message});
}
