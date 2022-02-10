import 'package:another_square/square_models.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:another_square/another_square.dart';

void main() {
  const String applicationId = "sandbox-sq0idb-BOZshuZ7XTKLKpBk73rJtQ";
  const String clientId = "sandbox-sq0idb-BOZshuZ7XTKLKpBk73rJtQ";
  const String clientSecret = "sandbox-sq0csb-JFyKEpzTvo2Sp_TXf8yZ20FAaOycuokBeQR0Fj3KXaQ";
  const String refreshToken = "EQAAENfNieufQblDRPhuWTDJicWLTlgoPTFJctN_OfokyNLve9fxD6yWOmuY1QWf";
  const String authToken = "EAAAENJpx8oLhXucYIZdKo_TuwoPaQi7CS6T117xS3wWCLoLID4CD5HIBWZivvUV";


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
        //scopes: [Scope.CustomerWrite,Scope.CustomerRead,],
        scopes: Scope.getScopes(),//.sublist(0, 3),//[Scope.PaymentRead,Scope.PaymentRead, Scope.PaymentWriteAdditionalRecipients, Scope.PaymentWriteInPerson],
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
      code: "sandbox-sq0cgb-g-AjFOCFJtBmtIUIKqk8hg",
        redirectUrl: "https://localhost"
    );

    print (response);
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

  ///
  /// Test for auth token refresh
  test('test create terminal checkout ', () async {
    final squareClient = SquareClient(
        applicationId: applicationId,
        clientId: clientId,
        clientSecret: clientSecret,
        environmentType: EnvironmentType.Sandbox
    );
    await squareClient.initialize();
    expect(squareClient.isInitialized(), true);

    var result = await squareClient.createTerminalCheckout(
        authToken: authToken,
        request:
    CreateTerminalCheckoutRequest.fromJson({
      "idempotency_key": "28a0c3bc-7839-11ea-bc55-0242ac130003",
      "checkout": {
        "amount_money": {
          "amount": 2610,
          "currency": "USD"
        },
        "reference_id": "id11572",
        "device_options": {
          "device_id": "dbb5d83a-7838-11ea-bc55-0242ac130003"
        },
        "note": "A brief note"
      }
    }));


    expect(result, isNotNull);

  });

  ///
  /// Tests searching terminal checkouts
  test('test search terminal checkout ', () async {
    final squareClient = SquareClient(
        applicationId: applicationId,
        clientId: clientId,
        clientSecret: clientSecret,
        environmentType: EnvironmentType.Sandbox
    );
    await squareClient.initialize();
    expect(squareClient.isInitialized(), true);

    var result = await squareClient.searchTerminalCheckout(
        authToken: authToken,
        request:
    SearchTerminalRequest.fromJson({
      "limit": 2,
      "query": {
        "filter": {
          "status": "COMPLETED"
        }
      }
    }));


    expect(result, isNotNull);

  });

  ///
  /// Tests reading a terminal checkout
  test('test read terminal checkout ', () async {
    final squareClient = SquareClient(
        applicationId: applicationId,
        clientId: clientId,
        clientSecret: clientSecret,
        environmentType: EnvironmentType.Sandbox
    );
    await squareClient.initialize();
    expect(squareClient.isInitialized(), true);

    var result = await squareClient.readTerminalCheckout(
        authToken: authToken,
        checkoutId: "6Thw6JW8cSYqO");

    expect(result, isNotNull);

  });

  ///
  /// Test the cancel flow of a terminal checkout
  ///
  test('test cancel terminal checkout ', () async {
    final squareClient = SquareClient(
        applicationId: applicationId,
        clientId: clientId,
        clientSecret: clientSecret,
        environmentType: EnvironmentType.Sandbox
    );
    await squareClient.initialize();
    expect(squareClient.isInitialized(), true);

    var result = await squareClient.cancelTerminalCheckout(
        authToken: authToken,
        checkoutId: "6Thw6JW8cSYqO");

    expect(result, isNotNull);

  });

  ///
  /// Test for auth token refresh
  test('test create terminal refund ', () async {
    final squareClient = SquareClient(
        applicationId: applicationId,
        clientId: clientId,
        clientSecret: clientSecret,
        environmentType: EnvironmentType.Sandbox
    );
    await squareClient.initialize();
    expect(squareClient.isInitialized(), true);


    var result = await squareClient.createTerminalRefund(
        authToken: authToken,
        request:
    CreateRefundRequest.fromJson({
      "idempotency_key": "402a640b-b26f-401f-b406-46f839590c04",
      "refund": {
        "amount_money": {
          "amount": 111,
          "currency": "CAD"
        },
        "device_id": "f72dfb8e-4d65-4e56-aade-ec3fb8d33291",
        "reason": "Returning items",
        "payment_id": "5O5OvgkcNUhl7JBuINflcjKqUzXZY"
      }
    }));


    expect(result, isNotNull);

  });

  ///
  /// Tests searching terminal refund
  test('test search terminal refund ', () async {
    final squareClient = SquareClient(
        applicationId: applicationId,
        clientId: clientId,
        clientSecret: clientSecret,
        environmentType: EnvironmentType.Sandbox
    );
    await squareClient.initialize();
    expect(squareClient.isInitialized(), true);

    var result = await squareClient.searchTerminalRefund(
        authToken: authToken,
        request:
        SearchTerminalRequest.fromJson({
          "limit": 1,
          "query": {
            "filter": {
              "status": "COMPLETED"
            }
          }
        }));


    expect(result, isNotNull);

  });

  ///
  /// Tests reading a terminal refund
  ///
  test('test read terminal refund ', () async {
    final squareClient = SquareClient(
        applicationId: applicationId,
        clientId: clientId,
        clientSecret: clientSecret,
        environmentType: EnvironmentType.Sandbox
    );
    await squareClient.initialize();
    expect(squareClient.isInitialized(), true);

    var result = await squareClient.readTerminalRefund(
        authToken: authToken,
        terminalRefundId: "terminal_refund_id0");

    expect(result, isNotNull);

  });

  ///
  /// Test the cancel flow of a terminal refund
  ///
  test('test cancel terminal refund ', () async {
    final squareClient = SquareClient(
        applicationId: applicationId,
        clientId: clientId,
        clientSecret: clientSecret,
        environmentType: EnvironmentType.Sandbox
    );
    await squareClient.initialize();
    expect(squareClient.isInitialized(), true);

    var result = await squareClient.cancelTerminalRefund(
        authToken: authToken,
        terminalRefundId: "terminal_refund_id0");

    expect(result, isNotNull);

  });

  // TODO Order Test Cases
  // TODO Subscription Test Cases


}
