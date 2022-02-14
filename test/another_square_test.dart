import 'package:another_square/square_models.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:another_square/another_square.dart';

void main() {
  const String applicationId = "sandbox-sq0idb-BOZshuZ7XTKLKpBk73rJtQ";
  const String clientId = "sandbox-sq0idb-BOZshuZ7XTKLKpBk73rJtQ";
  const String clientSecret = "sandbox-sq0csb-JFyKEpzTvo2Sp_TXf8yZ20FAaOycuokBeQR0Fj3KXaQ";
  const String refreshToken = "EQAAENfNieufQblDRPhuWTDJicWLTlgoPTFJctN_OfokyNLve9fxD6yWOmuY1QWf";
  const String authToken = "EAAAENBS3PLg1fNJoLZ72y3g-uwtloX3Lmmj5YQuskG4tcXKIKH7xGmHpfYJ7fh0";


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
  ///
  /// Tests order create
  test('test create order ', () async {
    final squareClient = SquareClient(
        applicationId: applicationId,
        clientId: clientId,
        clientSecret: clientSecret,
        environmentType: EnvironmentType.Sandbox
    );
    await squareClient.initialize();
    expect(squareClient.isInitialized(), true);

    var result = await squareClient.createOrder(
        authToken: authToken,
        request: CreateOrderRequest.fromJson({
          "idempotency_key": "8193148c-9586-11e6-99f9-28cfe92138cf",
          "order": {
            "reference_id": "my-order-001",
            "location_id": "LPYKKD4HSCRGP",
            "line_items": [
              {
                "name": "New York Strip Steak",
                "quantity": "1",
                "base_price_money": {
                  "amount": 1599,
                  "currency": "USD"
                }
              },
            ],
            "taxes": [
              {
                "uid": "state-sales-tax",
                "name": "State Sales Tax",
                "percentage": "9",
                "scope": "ORDER"
              }
            ],
          }
        }));

    expect(result, isNotNull);

  });

  test('test batch read order ', () async {
    final squareClient = SquareClient(
        applicationId: applicationId,
        clientId: clientId,
        clientSecret: clientSecret,
        environmentType: EnvironmentType.Sandbox
    );
    await squareClient.initialize();
    expect(squareClient.isInitialized(), true);

    var result = await squareClient.batchOrderRead(
        authToken: authToken,
        request: BatchOrderRequest.fromJson({
          "location_id": "LPYKKD4HSCRGP",
          "order_ids": [
            "oTuVRPmTDfXBSLbyzdyynm7MYc4F",
          ]
        }));

    expect(result, isNotNull);

  });

  test('test read order ', () async {
    final squareClient = SquareClient(
        applicationId: applicationId,
        clientId: clientId,
        clientSecret: clientSecret,
        environmentType: EnvironmentType.Sandbox
    );
    await squareClient.initialize();
    expect(squareClient.isInitialized(), true);

    var result = await squareClient.readOrder(
        authToken: authToken,
      orderId: "oTuVRPmTDfXBSLbyzdyynm7MYc4F"
        );

    expect(result, isNotNull);

  });
  
  // TODO Subscription Test Cases
  // TODO Invoice Test Cases
  // TODO Catalog Test Cases
  test('test batch upsert catalog ', () async {
    final squareClient = SquareClient(
        applicationId: applicationId,
        clientId: clientId,
        clientSecret: clientSecret,
        environmentType: EnvironmentType.Sandbox
    );
    await squareClient.initialize();
    expect(squareClient.isInitialized(), true);

    var result = await squareClient.batchUpsertCatalog(
        authToken: authToken,
        request: BatchUpsertCatalogRequest.fromJson({
          "idempotency_key": "789ff020-f723-43a9-b4b5-43b5dc1fa3dc",
          "batches": [
            {
              "objects": [
                {
                  "type": "ITEM",
                  "id": "#Tea",
                  "present_at_all_locations": true,
                  "item_data": {
                    "name": "Tea",
                    "description": "Hot Leaf Juice",
                    "category_id": "#Beverages",
                    "tax_ids": [
                      "#SalesTax"
                    ],
                    "variations": [
                      {
                        "type": "ITEM_VARIATION",
                        "id": "#Tea_Mug",
                        "present_at_all_locations": true,
                        "item_variation_data": {
                          "item_id": "#Tea",
                          "name": "Mug",
                          "pricing_type": "FIXED_PRICING",
                          "price_money": {
                            "amount": 150,
                            "currency": "USD"
                          }
                        }
                      }
                    ]
                  }
                },
                {
                  "type": "ITEM",
                  "id": "#Coffee",
                  "present_at_all_locations": true,
                  "item_data": {
                    "name": "Coffee",
                    "description": "Hot Bean Juice",
                    "category_id": "#Beverages",
                    "tax_ids": [
                      "#SalesTax"
                    ],
                    "variations": [
                      {
                        "type": "ITEM_VARIATION",
                        "id": "#Coffee_Regular",
                        "present_at_all_locations": true,
                        "item_variation_data": {
                          "item_id": "#Coffee",
                          "name": "Regular",
                          "pricing_type": "FIXED_PRICING",
                          "price_money": {
                            "amount": 250,
                            "currency": "USD"
                          }
                        }
                      },
                      {
                        "type": "ITEM_VARIATION",
                        "id": "#Coffee_Large",
                        "present_at_all_locations": true,
                        "item_variation_data": {
                          "item_id": "#Coffee",
                          "name": "Large",
                          "pricing_type": "FIXED_PRICING",
                          "price_money": {
                            "amount": 350,
                            "currency": "USD"
                          }
                        }
                      }
                    ]
                  }
                },
                {
                  "type": "CATEGORY",
                  "id": "#Beverages",
                  "present_at_all_locations": true,
                  "category_data": {
                    "name": "Beverages"
                  }
                },
                {
                  "type": "TAX",
                  "id": "#SalesTax",
                  "present_at_all_locations": true,
                  "tax_data": {
                    "name": "Sales Tax",
                    "calculation_phase": "TAX_SUBTOTAL_PHASE",
                    "inclusion_type": "ADDITIVE",
                    "percentage": "5.0",
                    "applies_to_custom_amounts": true,
                    "enabled": true
                  }
                }
              ]
            }
          ]
        }));

    expect(result, isNotNull);

  });

  test('test list catalog ', () async {
    final squareClient = SquareClient(
        applicationId: applicationId,
        clientId: clientId,
        clientSecret: clientSecret,
        environmentType: EnvironmentType.Sandbox
    );
    await squareClient.initialize();
    expect(squareClient.isInitialized(), true);

    var result = await squareClient.listCatalog(
        authToken: authToken,
        request: ListCatalogRequest());

    expect(result, isNotNull);

  });

  test('test batch retrieve catalog ', () async {
    final squareClient = SquareClient(
        applicationId: applicationId,
        clientId: clientId,
        clientSecret: clientSecret,
        environmentType: EnvironmentType.Sandbox
    );
    await squareClient.initialize();
    expect(squareClient.isInitialized(), true);

    var result = await squareClient.batchRetrieveCatalog(
        authToken: authToken,
        request: RetrieveCatalogRequest.fromJson({
          "object_ids": [
            "W62UWFY35CWMYGVWK6TWJDNI",
            "AA27W3M2GGTF3H6AVPNB77CK"
          ],
          "include_related_objects": true
        }));

    expect(result, isNotNull);

  });

  // TODO Inventory Test Cases
  // TODO Customer Test Cases
  // TODO Loyalty Test Cases
  // TODO GiftCard Test Cases
  // TODO Bookings Test Cases
  // TODO Merchant Test Cases
  // TODO Team Test Cases
  // TODO Bank Account Test Cases
  // TODO Online Test Cases
}
