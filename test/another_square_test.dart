import 'package:another_square/square_models.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:another_square/another_square.dart';

void main() {
  const String applicationId = "sandbox-sq0idb-BOZshuZ7XTKLKpBk73rJtQ";
  const String clientId = "sandbox-sq0idb-BOZshuZ7XTKLKpBk73rJtQ";
  const String clientSecret = "sandbox-sq0csb-JFyKEpzTvo2Sp_TXf8yZ20FAaOycuokBeQR0Fj3KXaQ";
  const String refreshToken = "EQAAEBuVqFR903EI0SY3q9RXU6aDZkltg9JA-CWPgBFc-w2GGUO1naFcaAF9wLrZ";

  ///
  /// Test that the correct auth URL is generated
  /// for sandbox
  ///
  test('test auth url', () async {
    final squareClient = SquareClient(
        applicationId: applicationId,
        clientId: clientId,
        clientSecret: clientSecret,
    environmentType: EnvironmentType.Sandbox
    );
    await squareClient.initialize();
    expect(squareClient.isInitialized(), true);

    String authUrl = squareClient.getAuthorizationPageUrl(
        scopes: [Scope.CustomerWrite,Scope.CustomerRead ],
        redirectUrl: "https://localhost/v2/OAuth2Playground/RedirectUrl",
        state: "82201dd8d83d23cc8a48caf52b");

    //print (authUrl);
    expect(authUrl, "https://connect.squareupsandbox.com/oauth2/authorize?client_id=$applicationId&scope=CUSTOMERS_WRITE+CUSTOMERS_READ&session=False&state=82201dd8d83d23cc8a48caf52b");

  });

  ///
  /// Test that the correct auth URL is generated
  /// for sandbox
  ///
  test('test auth url', () async {
    final squareClient = SquareClient(
        applicationId: applicationId,
        clientId: clientId,
        clientSecret: clientSecret,
        environmentType: EnvironmentType.Sandbox
    );
    await squareClient.initialize();
    expect(squareClient.isInitialized(), true);

    String authUrl = squareClient.getAuthorizationPageUrl(
        scopes: [Scope.CustomerWrite,Scope.CustomerRead ],
        redirectUrl: "https://localhost/v2/OAuth2Playground/RedirectUrl",
        state: "82201dd8d83d23cc8a48caf52b");

    print (authUrl);
    expect(authUrl, "https://connect.squareupsandbox.com/oauth2/authorize?client_id=$applicationId&scope=CUSTOMERS_WRITE+CUSTOMERS_READ&session=False&state=82201dd8d83d23cc8a48caf52b");

  });

  ///
  /// Test the request for a auth code
  /// Note: This requires UI so it's meant as a simple sanity test.
  ///
  test('test auth code request', () async {
    final squareClient = SquareClient(
        applicationId: applicationId,
        clientId: clientId,
        clientSecret: clientSecret,
        environmentType: EnvironmentType.Sandbox
    );
    await squareClient.initialize();
    expect(squareClient.isInitialized(), true);

    var response = await squareClient.getAuthToken(
      code: "sandbox-sq0cgb-kGor8DK6hRUN_xOe4aDl9w",
        redirectUrl: "https://localhost"
    );

    expect(response.accessToken, isNotNull);

  });

  ///
  /// Test for auth token refresh
  test('test auth token refresh', () async {
    final squareClient = SquareClient(
        applicationId: applicationId,
        clientId: clientId,
        clientSecret: clientSecret,
        environmentType: EnvironmentType.Sandbox
    );
    await squareClient.initialize();
    expect(squareClient.isInitialized(), true);

    var response = await squareClient.refreshToken(
        refreshToken: refreshToken
    );

    print (response);
    expect(response, isNotNull);

  });
}
