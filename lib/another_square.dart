library another_square;

import 'package:another_square/services/authentication_service.dart';
import 'package:another_square/services/invoice_service.dart';
import 'package:another_square/services/oder_service.dart';
import 'package:another_square/services/subscription_service.dart';
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
  late OrderService _orderService;
  late SubscriptionService _subscriptionService;
  late InvoiceService _invoiceService;

  SquareClient(
      {required this.applicationId,
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

    _terminalService = TerminalService(
        authenticationService: _authenticationService!, baseUrl: _url);

    _orderService = OrderService(
        authenticationService: _authenticationService!, baseUrl: _url);

    _subscriptionService = SubscriptionService(
        authenticationService: _authenticationService!, baseUrl: _url);

    _invoiceService = InvoiceService(
        authenticationService: _authenticationService!, baseUrl: _url);
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
      return _authenticationService!
          .getAuthorizationPageUrl(scopes: scopes, state: state);
    }
  }

  ///
  /// Gets the Authorization Token from the code.
  ///
  Future<TokenResponse> getAuthToken(
      {required String code, required String redirectUrl}) async {
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
    return _terminalService.createTerminalCheckout(
        request: request, authToken: authToken);
  }

  ///
  /// Retrieves a filtered list of Terminal checkout requests
  /// created by the account making the request.
  ///
  Future<TerminalCheckoutResponse> searchTerminalCheckout({
    required SearchTerminalRequest request,
    String? authToken,
  }) async {
    return _terminalService.searchTerminalCheckout(
        request: request, authToken: authToken);
  }

  ///
  /// Retrieves a Terminal checkout request by [checkoutId].
  ///
  Future<TerminalCheckout> readTerminalCheckout({
    required String checkoutId,
    String? authToken,
  }) async {
    return _terminalService.readTerminalCheckout(
        checkoutId: checkoutId, authToken: authToken);
  }

  ///
  /// Cancels a Terminal checkout request if the status of the request permits it.
  ///
  Future<TerminalCheckout> cancelTerminalCheckout({
    required String checkoutId,
    String? authToken,
  }) async {
    return _terminalService.cancelTerminalCheckout(
        checkoutId: checkoutId, authToken: authToken);
  }

  ///
  /// Creates a request to refund an Interac payment completed
  /// on a Square Terminal.
  ///
  Future<TerminalRefund> createTerminalRefund({
    required CreateRefundRequest request,
    String? authToken,
  }) async {
    return _terminalService.createTerminalRefund(
        request: request, authToken: authToken);
  }

  ///
  /// Retrieves a filtered list of Interac Terminal refund requests
  /// created by the seller making the request.
  ///
  Future<TerminalRefundResponse> searchTerminalRefund({
    required SearchTerminalRequest request,
    String? authToken,
  }) async {
    return _terminalService.searchTerminalRefund(
        request: request, authToken: authToken);
  }

  ///
  /// Retrieves an Interac Terminal refund object by ID.
  ///
  Future<TerminalRefund> readTerminalRefund({
    required String terminalRefundId,
    String? authToken,
  }) async {
    return _terminalService.readTerminalRefund(
        terminalRefundId: terminalRefundId, authToken: authToken);
  }

  ///
  /// Cancels a Terminal checkout request if the status of the request permits it.
  ///
  Future<TerminalRefund> cancelTerminalRefund({
    required String terminalRefundId,
    String? authToken,
  }) async {
    return _terminalService.cancelTerminalRefund(
        terminalRefundId: terminalRefundId, authToken: authToken);
  }

  // ORDER
  Future<Order> createOrder({
    required CreateOrderRequest request,
    String? authToken,
  }) async {
    return _orderService.createOrder(request: request, authToken: authToken);
  }

  ///
  /// Retrieves a set of orders by their IDs.
  /// If a given order ID does not exist, the ID is ignored
  /// instead of generating an error.
  ///
  Future<List<Order>> batchOrderRead({
    required BatchOrderRequest request,
    String? authToken,
  }) async {
    return _orderService.batchOrderRead(request: request, authToken: authToken);
  }

  ///
  /// Enables applications to preview order
  /// pricing without creating an order.
  ///
  Future<Order> calculateOrder({
    required CalculateOrderRequest request,
    String? authToken,
  }) async {
    return _orderService.calculateOrder(request: request, authToken: authToken);
  }

  /// Creates a new order, in the DRAFT state, by duplicating an existing order.
  ///
  /// The newly created order has only the core fields (such as
  /// line items, taxes, and discounts) copied from the original order.
  ///
  Future<Order> cloneOrder({
    required CloneOrderRequest request,
    String? authToken,
  }) async {
    return _orderService.cloneOrder(request: request, authToken: authToken);
  }

  ///
  /// Search all orders for one or more locations.
  //.
  /// Orders include all sales, returns, and exchanges regardless
  /// of how or when they entered the Square ecosystem
  /// (such as Point of Sale, Invoices, and Connect APIs).
  ///
  Future<OrderResponse> searchOrder({
    required SearchOrderRequest request,
    String? authToken,
  }) async {
    return _orderService.searchOrder(request: request, authToken: authToken);
  }

  ///
  /// Retrieves an Order by ID.
  ///
  Future<Order> readOrder({
    required String orderId,
    String? authToken,
  }) async {
    return _orderService.readOrder(orderId: orderId, authToken: authToken);
  }

  ///
  /// Updates an open order by adding, replacing, or deleting fields.
  ///
  /// Orders with a COMPLETED or CANCELED state cannot be updated.
  ///
  Future<Order> updateOrder({
    required int orderId,
    required UpdateOrderRequest request,
    String? authToken,
  }) async {
    return _orderService.updateOrder(
        orderId: orderId, request: request, authToken: authToken);
  }

  ///
  /// Pay for an order using one or more approved payments or
  /// settle an order with a total of 0.
  ///
  /// The total of the payment_ids listed in the request must
  /// be equal to the order total. Orders with a total amount
  /// of 0 can be marked as paid by specifying an empty array
  /// of payment_ids in the request.
  ///
  Future<Order> payOrder({
    required int orderId,
    required PayOrderRequest request,
    String? authToken,
  }) async {
    return _orderService.payOrder(
        orderId: orderId, request: request, authToken: authToken);
  }

  // Subscription
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
    return _subscriptionService.createSubscription(
        request: request, authToken: authToken);
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
    return _subscriptionService.searchSubscription(request: request, authToken: authToken);
  }

  ///
  /// Retrieves a subscription.
  ///
  Future<Subscription> readSubscription({
    required String subscriptionId,
    String? authToken,
  }) async {
    return _subscriptionService.readSubscription(subscriptionId: subscriptionId, authToken: authToken);
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
    return _subscriptionService.updateSubscription(subscriptionId: subscriptionId, request: request, authToken: authToken);
  }

  ///
  /// Deletes a scheduled action for a subscription.
  ///
  Future<Subscription> deleteSubscription({
    required int subscriptionId,
    required String actionId,
    String? authToken,
  }) async {
    return _subscriptionService.deleteSubscription(subscriptionId: subscriptionId, actionId: actionId, authToken: authToken);
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
    return _subscriptionService.cancelSubscription(subscriptionId: subscriptionId, authToken: authToken);
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
    return _subscriptionService.listSubscriptionEvents(subscriptionId: subscriptionId, cursor: cursor, limit: limit?? 200, authToken: authToken);
  }

  ///
  /// Schedules a PAUSE action to pause an active subscription.
  ///
  Future<SubscriptionResponse> pauseSubscription({
    required String subscriptionId,
    required SubscriptionStateRequest request,
    String? authToken,
  }) async {
    return _subscriptionService.pauseSubscription(subscriptionId: subscriptionId, request: request, authToken: authToken);
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
    return _subscriptionService.resumeSubscription(subscriptionId: subscriptionId, request: request, authToken: authToken);
  }

  ///
  /// Schedules a SWAP_PLAN action to swap a
  /// subscription plan in an existing subscription.
  ///
  Future<Subscription> swapPlan({
    required String subscriptionId,
    required String newPlanId,
    String? authToken,
  }) async {
    return _subscriptionService.swapPlan(subscriptionId: subscriptionId, newPlanId: newPlanId, authToken: authToken);
  }

  // Invoice

  ///
  /// Returns a list of invoices for a given location.
  ///
  /// The response is paginated. If truncated, the
  /// response includes a cursor that you
  /// use in a subsequent request to retrieve the
  /// next set of invoices.
  ///
  Future<InvoiceResponse> listInvoices({
    required String locationId,
    String? cursor,
    int limit = 200,
    String? authToken,
  }) async {
    return _invoiceService.listInvoices(locationId: locationId, cursor: cursor, authToken: authToken);
  }

  ///
  /// Creates a draft invoice for an order created using the Orders API.
  ///
  /// A draft invoice remains in your account and no action is taken.
  /// You must publish the invoice before Square can process it
  /// (send it to the customer's email address or charge the
  /// customer’s card on file).
  ///
  Future<Invoice> createInvoice({
    required CreateInvoiceRequest request,
    String? authToken,
  }) async {
    return _invoiceService.createInvoice(request: request, authToken: authToken);
  }

  ///
  /// Searches for invoices from a location specified in the filter.
  ///
  /// You can optionally specify customers in the filter for whom to
  /// retrieve invoices. In the current implementation, you can only
  /// specify one location and optionally one customer.
  ///
  /// The response is paginated. If truncated, the response includes a
  /// cursor that you use in a subsequent request to retrieve the
  /// next set of invoices.
  ///
  Future<InvoiceResponse> searchInvoice({
    required SearchInvoiceRequest request,
    String? authToken,
  }) async {
    return _invoiceService.searchInvoice(request: request, authToken: authToken);
  }

  ///
  /// Deletes the specified invoice.
  ///
  /// When an invoice is deleted, the associated order status
  /// changes to CANCELED. You can only delete a draft invoice
  /// (you cannot delete a published invoice, including one that
  /// is scheduled for processing).
  ///
  Future<bool> deleteInvoice({
    required int invoiceId,
    required int version,
    String? authToken,
  }) async {
    return _invoiceService.deleteInvoice(invoiceId: invoiceId, version: version, authToken: authToken);
  }

  ///
  /// Retrieves an invoice by invoice ID.
  ///
  Future<Invoice> readInvoice({
    required String invoiceId,
    String? authToken,
  }) async {
    return _invoiceService.readInvoice(invoiceId: invoiceId, authToken: authToken);
  }

  ///
  /// Updates an invoice by modifying fields, clearing fields, or both.
  ///
  /// For most updates, you can use a sparse Invoice object to add fields
  /// or change values and use the fields_to_clear field to specify fields
  /// to clear. However, some restrictions apply. For example, you cannot
  /// change the order_id or location_id field and you must provide the
  /// complete custom_fields list to update a custom field. Published
  /// invoices have additional restrictions.
  ///
  Future<Invoice> updateInvoice({
    required int invoiceId,
    required UpdateInvoiceRequest request,
    String? authToken,
  }) async {
    return _invoiceService.updateInvoice(invoiceId: invoiceId, request: request, authToken: authToken);
  }

  ///
  /// Cancels an invoice.
  ///
  /// The seller cannot collect payments for the canceled invoice.
  ///
  /// You cannot cancel an invoice in the DRAFT state or in a
  /// terminal state: PAID, REFUNDED, CANCELED, or FAILED.
  ///
  Future<Invoice> cancelInvoice({
    required int invoiceId,
    required int version,
    String? authToken,
  }) async {
    return _invoiceService.cancelInvoice(invoiceId: invoiceId, version: version, authToken: authToken);
  }

  ///
  /// Publishes the specified draft invoice.
  ///
  /// After an invoice is published, Square follows up based
  /// on the invoice configuration. For example, Square sends
  /// the invoice to the customer's email address, charges the
  /// customer's card on file, or does nothing. Square also
  /// makes the invoice available on a Square-hosted invoice page.
  ///
  Future<Invoice> publishInvoice({
    required String invoiceId,
    required PublishInvoiceRequest request,
    String? authToken,
  }) async {
    return _invoiceService.publishInvoice(invoiceId: invoiceId, request: request, authToken: authToken);
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
