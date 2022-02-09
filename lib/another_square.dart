library another_square;

import 'package:another_square/services/authentication_service.dart';
import 'package:another_square/services/terminal_service.dart';
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
  late TerminalService _terminalService;
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

    _terminalService = TerminalService(authenticationService:
    _authenticationService!, baseUrl: _url);

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

  ///
  /// Creates a Terminal checkout request and sends it to the
  /// specified device to take a payment for the requested amount.
  ///
  Future<TerminalCheckout> createTerminalCheckout({
    required CreateTerminalCheckoutRequest request,
    String? authToken,
  }) async {
    return _terminalService.createTerminalCheckout(request: request, authToken: authToken);
  }

  ///
  /// Retrieves a filtered list of Terminal checkout requests
  /// created by the account making the request.
  ///
  Future<TerminalCheckoutResponse> searchTerminalCheckout({
    required SearchTerminalRequest request,
    String? authToken,
  }) async {
    return _terminalService.searchTerminalCheckout(request: request, authToken: authToken);
  }

  ///
  /// Retrieves a Terminal checkout request by [checkoutId].
  ///
  Future<TerminalCheckout> readTerminalCheckout({
    required String checkoutId,
    String? authToken,
  }) async {
    return _terminalService.readTerminalCheckout(checkoutId: checkoutId, authToken: authToken);
  }

  ///
  /// Cancels a Terminal checkout request if the status of the request permits it.
  ///
  Future<TerminalCheckout> cancelTerminalCheckout({
    required String checkoutId,
    String? authToken,
  }) async {
    return _terminalService.cancelTerminalCheckout(checkoutId: checkoutId, authToken: authToken);
  }

  ///
  /// Creates a request to refund an Interac payment completed
  /// on a Square Terminal.
  ///
  Future<TerminalRefund> createTerminalRefund({
    required CreateRefundRequest request,
    String? authToken,
  }) async {
    return _terminalService.createTerminalRefund(request: request, authToken: authToken);
  }

  ///
  /// Retrieves a filtered list of Interac Terminal refund requests
  /// created by the seller making the request.
  ///
  Future<TerminalRefundResponse> searchTerminalRefund({
    required SearchTerminalRequest request,
    String? authToken,
  }) async {
    return _terminalService.searchTerminalRefund(request: request, authToken: authToken);
  }

  ///
  /// Retrieves an Interac Terminal refund object by ID.
  ///
  Future<TerminalRefund> readTerminalRefund({
    required String terminalRefundId,
    String? authToken,
  }) async {
    return _terminalService.readTerminalRefund(terminalRefundId: terminalRefundId, authToken: authToken);
  }

  ///
  /// Cancels a Terminal checkout request if the status of the request permits it.
  ///
  Future<TerminalRefund> cancelTerminalRefund({
    required String terminalRefundId,
    String? authToken,
  }) async {
    return _terminalService.cancelTerminalRefund(terminalRefundId: terminalRefundId, authToken: authToken);
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
