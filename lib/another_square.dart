library another_square;

import 'package:another_square/services/authentication_service.dart';
import 'package:another_square/services/bank_account_service.dart';
import 'package:another_square/services/bookings_service.dart';
import 'package:another_square/services/catalog_service.dart';
import 'package:another_square/services/customer_service.dart';
import 'package:another_square/services/giftcard_service.dart';
import 'package:another_square/services/inventory_service.dart';
import 'package:another_square/services/invoice_service.dart';
import 'package:another_square/services/loyalty_service.dart';
import 'package:another_square/services/merchant_service.dart';
import 'package:another_square/services/oder_service.dart';
import 'package:another_square/services/online_service.dart';
import 'package:another_square/services/subscription_service.dart';
import 'package:another_square/services/team_service.dart';
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
  late CatalogService _catalogService;
  late InventoryService _inventoryService;
  late CustomerService _customerService;
  late LoyaltyService _loyaltyService;
  late GiftCardService _giftCardService;
  late BookingsService _bookingsService;
  late MerchantService _merchantService;
  late TeamService _teamService;
  late BankAccountService _bankAccountService;
  late OnlineService _onlineService;

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
        tokenEndpoint: "https://$_url/oauth2/token",
        revocationEndpoint: "https://$_url/oauth2/token");

    _terminalService = TerminalService(
        authenticationService: _authenticationService!, baseUrl: _url);

    _orderService = OrderService(
        authenticationService: _authenticationService!, baseUrl: _url);

    _subscriptionService = SubscriptionService(
        authenticationService: _authenticationService!, baseUrl: _url);

    _invoiceService = InvoiceService(
        authenticationService: _authenticationService!, baseUrl: _url);

    _catalogService = CatalogService(
        authenticationService: _authenticationService!, baseUrl: _url);

    _inventoryService = InventoryService(
        authenticationService: _authenticationService!, baseUrl: _url);

    _customerService = CustomerService(
        authenticationService: _authenticationService!, baseUrl: _url);

    _loyaltyService = LoyaltyService(
        authenticationService: _authenticationService!, baseUrl: _url);

    _giftCardService = GiftCardService(
        authenticationService: _authenticationService!, baseUrl: _url);

    _bookingsService = BookingsService(
        authenticationService: _authenticationService!, baseUrl: _url);

    _merchantService = MerchantService(
        authenticationService: _authenticationService!, baseUrl: _url);

    _teamService = TeamService(
        authenticationService: _authenticationService!, baseUrl: _url);

    _bankAccountService = BankAccountService(
        authenticationService: _authenticationService!, baseUrl: _url);

    _onlineService = OnlineService(
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


  // CATALOG
  ///
  /// Deletes a set of CatalogItems based on the provided list of
  /// target IDs and returns a set of successfully deleted IDs in the response.
  ///
  /// Deletion is a cascading event such that all children of the
  /// targeted object are also deleted. For example, deleting a
  /// CatalogItem will also delete all of its CatalogItemVariation children.
  ///
  /// BatchDeleteCatalogObjects succeeds even if only a portion of
  /// the targeted IDs can be deleted. The response will only include
  /// IDs that were actually deleted.
  ///
  Future<CatalogDeleteResponse> batchDeleteCatalog({
    required List<String> objectIds,
    String? authToken,
  }) async {
    return _catalogService.batchDeleteCatalog(objectIds: objectIds, authToken: authToken);
  }

  ///
  /// Returns a set of objects based on the provided ID.
  ///
  /// Each CatalogItem returned in the set includes all of its
  /// child information including: all of its CatalogItemVariation
  /// objects, references to its CatalogModifierList objects, and
  /// the ids of any CatalogTax objects that apply to it.
  ///
  Future<CatalogResponse> batchRetrieveCatalog({
    required RetrieveCatalogRequest request,
    String? authToken,
  }) async {
    return _catalogService.batchRetrieveCatalog(request: request, authToken: authToken);
  }

  ///
  /// Creates or updates up to 10,000 target objects based
  /// on the provided list of objects.
  ///
  /// The target objects are grouped into batches and each
  /// batch is inserted/updated in an all-or-nothing manner.
  /// If an object within a batch is malformed in some way,
  /// or violates a database constraint, the entire batch containing
  /// that item will be disregarded. However, other batches in the
  /// same request may still succeed. Each batch may contain up to
  /// 1,000 objects, and batches will be processed in order as long
  /// as the total object count for the request (items, variations,
  /// modifier lists, discounts, and taxes) is no more than 10,000.
  ///
  Future<CatalogResponse> batchUpsertCatalog({
    required BatchUpsertCatalogRequest request,
    String? authToken,
  }) async {
    return _catalogService.batchUpsertCatalog(request: request, authToken: authToken);
  }

  ///
  /// Uploads an image file to be represented by a CatalogImage
  /// object that can be linked to an existing CatalogObject instance.
  ///
  /// The resulting CatalogImage is unattached to any CatalogObject
  /// if the object_id is not specified.
  ///
  /// This CreateCatalogImage endpoint accepts HTTP multipart/form-data
  /// requests with a JSON part and an image file part in JPEG, PJPEG,
  /// PNG, or GIF format. The maximum file size is 15MB.
  ///
  Future<CatalogObject> createCatalogImage({
    required CreateCatalogImageRequest request,
    String? authToken,
  }) async {
    return _catalogService.createCatalogImage(request: request, authToken: authToken);
  }

  ///
  /// Uploads a new image file to replace the existing one in the specified CatalogImage object.
  ///
  /// This UpdateCatalogImage endpoint accepts HTTP multipart/form-data
  /// requests with a JSON part and an image file part in JPEG, PJPEG, PNG, or
  /// GIF format. The maximum file size is 15MB.
  ///
  Future<CatalogObject> updateCatalogImage({
    required UpdateCatalogImageRequest request,
    required String imageId,
    String? authToken,
  }) async {
    return _catalogService.updateCatalogImage(request: request, imageId: imageId, authToken: authToken);
  }

  ///
  /// Retrieves information about the Square Catalog API,
  /// such as batch size limits that can be used by the
  /// BatchUpsertCatalogObjects endpoint
  ///
  Future<CatalogInfoResponse> readCatalogInfo({
    required UpdateCatalogImageRequest request,
    required String imageId,
    String? authToken,
  }) async {
    return _catalogService.readCatalogInfo(request: request, imageId: imageId, authToken: authToken);
  }

  ///
  /// Returns a list of all CatalogObjects of the specified types in the catalog.
  ///
  /// The types parameter is specified as a comma-separated list of
  /// the CatalogObjectType values, for example, "ITEM, ITEM_VARIATION,
  /// MODIFIER, MODIFIER_LIST, CATEGORY, DISCOUNT, TAX, IMAGE".
  ///
  /// Important: ListCatalog does not return deleted catalog items.
  /// To retrieve deleted catalog items, use SearchCatalogObjects and
  /// set the include_deleted_objects attribute value to true.
  ///
  Future<CatalogResponse> listCatalog({
    required ListCatalogRequest request,
    String? authToken,
  }) async {
    return _catalogService.listCatalog(request: request, authToken: authToken);
  }

  ///
  /// Creates or updates the target CatalogObject.
  ///
  Future<CatalogResponse> upsertCatalog({
    required UpsertCatalogRequest request,
    String? authToken,
  }) async {
    return _catalogService.upsertCatalog(request: request, authToken: authToken);
  }

  ///
  /// Deletes a single CatalogObject based on the provided ID and
  /// returns the set of successfully deleted IDs in the response.
  ///
  /// Deletion is a cascading event such that all children of the
  /// targeted object are also deleted. For example, deleting a
  /// CatalogItem will also delete all of its CatalogItemVariation children.
  ///
  Future<CatalogDeleteResponse> deleteCatalog({
    required String objectId,
    String? authToken,
  }) async {
    return _catalogService.deleteCatalog(objectId: objectId, authToken: authToken);
  }

  ///
  /// Returns a single CatalogItem as a CatalogObject based on the provided ID.
  ///
  /// The returned object includes all of the relevant CatalogItem
  /// information including: CatalogItemVariation children, references
  /// to its CatalogModifierList objects, and the ids of any CatalogTax
  /// objects that apply to it
  ///
  Future<CatalogResponse> readCatalog({
    required String objectId,
    String? authToken,
  }) async {
    return _catalogService.readCatalog(objectId: objectId, authToken: authToken);
  }

  ///
  /// Searches for CatalogObject of any type by matching supported
  /// search attribute values, excluding custom attribute values
  /// on items or item variations, against one or more of the specified
  /// query filters.
  ///
  Future<CatalogResponse> searchCatalog({
    required String objectId,
    required CatalogSearchRequest request,
    String? authToken,
  }) async {
    return _catalogService.searchCatalog(objectId: objectId, request: request, authToken: authToken);
  }

  ///
  /// Searches for catalog items or item variations by matching
  /// supported search attribute values, including custom attribute
  /// values, against one or more of the specified query filters.
  ///
  Future<CatalogItemsResponse> searchCatalogItems({
    required String objectId,
    required CatalogItemsSearchRequest request,
    String? authToken,
  }) async {
    return _catalogService.searchCatalogItems(objectId: objectId, request: request, authToken: authToken);
  }

  ///
  /// Updates the CatalogModifierList objects that apply to the
  /// targeted CatalogItem without having to perform an upsert
  /// on the entire item.
  ///
  Future<String> updateCatalogItemsModifiers({
    required String objectId,
    required UpdateCatalogItemsModifier request,
    String? authToken,
  }) async {
    return _catalogService.updateCatalogItemsModifiers(objectId: objectId, request: request, authToken: authToken);
  }

  // INVENTORY

  ///
  /// Returns the InventoryAdjustment object with the provided adjustment_id.
  ///
  Future<InventoryAdjustment> readInventoryAdjustment({
    required String adjustmentId,
    String? authToken,
  }) async {
    return _inventoryService.readInventoryAdjustment(adjustmentId: adjustmentId, authToken: authToken);
  }

  ///
  /// Applies adjustments and counts to the provided item quantities.
  ///
  /// On success: returns the current calculated counts for all objects
  /// referenced in the request. On failure: returns a list of related errors.
  ///
  Future<InventoryResponse> batchInventoryChange({
    required BatchInventoryChangeRequest request,
    String? authToken,
  }) async {
    return _inventoryService.batchInventoryChange(request: request, authToken: authToken);
  }

  ///
  /// Returns historical physical counts and adjustments
  /// based on the provided filter criteria.
  ///
  /// Results are paginated and sorted in ascending order according
  /// their occurred_at timestamp (oldest first).
  ///
  Future<InventoryResponse> batchInventoryRead({
    required BatchInventoryReadRequest request,
    String? authToken,
  }) async {
    return _inventoryService.batchInventoryRead(request: request, authToken: authToken);
  }

  ///
  /// Returns current counts for the provided
  /// CatalogObjects at the requested Locations.
  ///
  /// Results are paginated and sorted in descending order according to
  /// their calculated_at timestamp (newest first).
  ///
  Future<InventoryResponse> batchInventoryReadCounts({
    required BatchInventoryReadCountRequest request,
    String? authToken,
  }) async {
    return _inventoryService.batchInventoryReadCounts(request: request, authToken: authToken);
  }

  ///
  /// Returns the InventoryPhysicalCount object with the
  /// provided [physicalCountId].
  ///
  Future<InventoryPhysicalCount> readInventoryPhysicalCount({
    required String physicalCountId,
    String? authToken,
  }) async {
    return _inventoryService.readInventoryPhysicalCount(physicalCountId: physicalCountId, authToken: authToken);
  }

  ///
  /// Returns the InventoryTransfer object with the provided transfer_id.
  ///
  Future<InventoryTransfer> readInventoryTransfer({
    required String transferId,
    String? authToken,
  }) async {
    return _inventoryService.readInventoryTransfer(transferId: transferId, authToken: authToken);
  }

  ///
  /// Retrieves the current calculated stock count for a
  /// given CatalogObject at a given set of Locations.
  ///
  /// Responses are paginated and unsorted. For more sophisticated
  /// queries, use a batch endpoint.
  ///
  Future<InventoryResponse> readInventoryCount({
    required String catalogObjectId,
    InventoryCountRequest? request,
    String? authToken,
  }) async {
    return _inventoryService.readInventoryCount(catalogObjectId: catalogObjectId, request: request, authToken: authToken);
  }

  ///
  /// Lists customer profiles associated with a Square account.
  ///
  /// Under normal operating conditions, newly created or
  /// updated customer profiles become available for the listing
  /// operation in well under 30 seconds. Occasionally, propagation
  /// of the new or updated profiles can take closer to one minute
  /// or longer, especially during network incidents and outages.
  ///
  Future<List<Customer>> listCustomer({
    required ListCustomerRequest request,
    String? authToken,
  }) async {
    return _customerService.listCustomer(request: request, authToken: authToken);
  }

  ///
  /// Creates a new customer for a business.
  ///
  /// You must provide at least one of the following values in
  /// your request to this
  ///
  Future<Customer> createCustomer({
    required CustomerUpsertRequest request,
    String? authToken,
  }) async {
    return _customerService.createCustomer(request: request, authToken: authToken);
  }

  ///
  /// Searches the customer profiles associated with a Square account
  /// using a supported query filter.
  ///
  /// Calling SearchCustomers without any explicit query filter
  /// returns all customer profiles ordered alphabetically based
  /// on given_name and family_name.
  ///
  Future<CustomerResponse> searchCustomer({
    required SearchCustomerRequest request,
    String? authToken,
  }) async {
    return _customerService.searchCustomer(request: request, authToken: authToken);
  }

  ///
  /// Deletes a customer profile from a business.
  ///
  /// This operation also unlinks any associated cards on file.
  ///
  Future<bool> deleteCustomer({
    required String customerId,
    String? authToken,
  }) async {
    return _customerService.deleteCustomer(customerId: customerId, authToken: authToken);
  }

  ///
  /// Returns details for a single customer.
  ///
  Future<Customer> readCustomer({
    required String customerId,
    String? authToken,
  }) async {
    return _customerService.readCustomer(customerId: customerId, authToken: authToken);
  }

  ///
  /// Updates a customer profile.
  ///
  /// To change an attribute, specify the new value. To remove an
  /// attribute, specify the value as an empty string or empty object.
  ///
  Future<Customer> updateCustomer({
    required String customerId,
    required CustomerUpsertRequest request,
    String? authToken,
  }) async {
    return _customerService.updateCustomer(customerId: customerId, request: request, authToken: authToken);
  }

  ///
  /// Removes a group membership from a customer.
  ///
  /// The customer is identified by the customer_id value and the
  /// customer group is identified by the group_id value.
  ///
  Future<bool> removeCustomerFromGroup({
    required String customerId,
    required String groupId,
    String? authToken,
  }) async {
    return _customerService.removeCustomerFromGroup(customerId: customerId, groupId: groupId, authToken: authToken);
  }

  ///
  /// Adds a group membership to a customer.
  ///
  /// The customer is identified by the customer_id value
  /// and the customer group is identified by the group_id value.
  ///
  Future<bool> addCustomerToGroup({
    required String customerId,
    required String groupId,
    String? authToken,
  }) async {
    return _customerService.addCustomerToGroup(customerId: customerId, groupId: groupId, authToken: authToken);
  }


  ///
  /// Retrieves the list of customer groups of a business.
  ///
  Future<CustomerGroupResponse> listCustomerGroup({
    required SearchRequest request,
    String? authToken,
  }) async {
    return _customerService.listCustomerGroup(request: request, authToken: authToken);
  }

  ///
  /// Creates a new customer group for a business.
  ///
  /// The request must include the name value of the group.
  ///
  Future<CustomerGroup> createCustomerGroup({
    required CreateCustomerGroup request,
    String? authToken,
  }) async {
    return _customerService.createCustomerGroup(request: request, authToken: authToken);
  }

  ///
  /// Deletes a customer group as identified by the group_id value.
  ///
  Future<bool> deleteCustomerGroup({
    required String groupId,
    String? authToken,
  }) async {
    return _customerService.deleteCustomerGroup(groupId: groupId, authToken: authToken);
  }

  ///
  /// Retrieves a specific customer group as identified by the group_id value.
  ///
  Future<CustomerGroup> readCustomerGroup({
    required String groupId,
    String? authToken,
  }) async {
    return _customerService.readCustomerGroup(groupId: groupId, authToken: authToken);
  }

  ///
  /// Updates a customer group as identified by the group_id value.
  ///
  Future<CustomerGroup> updateCustomerGroup({
    required String groupId,
    required CustomerGroup group,
    String? authToken,
  }) async {
    return _customerService.updateCustomerGroup(groupId: groupId, group: group, authToken: authToken);
  }

  ///
  /// Retrieves the list of customer segments of a business.
  ///
  Future<CustomerSegmentResponse> listCustomerSegments({
    required SearchRequest request,
    String? authToken,
  }) async {
    return _customerService.listCustomerSegments(request: request, authToken: authToken);
  }

  ///
  /// Retrieves a specific customer segment as identified by the
  /// segment_id value.
  ///
  Future<CustomerSegment> readCustomerSegments({
    required String segmentId,
    String? authToken,
  }) async {
    return _customerService.readCustomerSegments(segmentId: segmentId, authToken: authToken);
  }

  // LOYALTY
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
    return _loyaltyService.createLoyalty(request: request, authToken: authToken);
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
    return _loyaltyService.searchLoyalty(request: request, authToken: authToken);
  }

  ///
  /// Retrieves a loyalty account.
  ///
  Future<LoyaltyAccount> readLoyalty({
    required String accountId,
    String? authToken,
  }) async {
    return _loyaltyService.readLoyalty(accountId: accountId, authToken: authToken);
  }

  ///
  /// Adds points to a loyalty account.
  ///
  Future<LoyaltyEvent> accumulateLoyaltyPoints({
    required String accountId,
    required AccumulateLoyaltyPointRequest request,
    String? authToken,
  }) async {
    return _loyaltyService.accumulateLoyaltyPoints(accountId: accountId, request: request, authToken: authToken);
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
    return _loyaltyService.adjustLoyaltyPoints(accountId: accountId, request: request, authToken: authToken);
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
    return _loyaltyService.searchLoyaltyEvents(request: request, authToken: authToken);
  }

  ///
  /// Retrieves the loyalty program in a seller's account,
  /// specified by the program ID or the keyword main.
  ///
  Future<LoyaltyProgram> readLoyaltyProgram({
    required String programId,
    String? authToken,
  }) async {
    return _loyaltyService.readLoyaltyProgram(programId: programId, authToken: authToken);
  }

  ///
  /// Calculates the points a purchase earns.
  ///
  Future<int> calculateLoyaltyPoints({
    required String programId,
    required CalculateLoyaltyPointsRequest request,
    String? authToken,
  }) async {
    return _loyaltyService.calculateLoyaltyPoints(programId: programId, request: request, authToken: authToken);
  }

  ///
  /// Creates a loyalty reward.
  ///
  Future<LoyaltyReward> calculateLoyaltyReward({
    required UpsertLoyaltyRewardRequest request,
    String? authToken,
  }) async {
    return _loyaltyService.calculateLoyaltyReward(request: request, authToken: authToken);
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
    return _loyaltyService.searchLoyaltyReward(request: request, authToken: authToken);
  }

  ///
  /// Deletes a loyalty reward
  ///
  Future<bool> deleteLoyaltyReward({
    required String rewardId,
    String? authToken,
  }) async {
    return _loyaltyService.deleteLoyaltyReward(rewardId: rewardId, authToken: authToken);
  }

  ///
  /// Retrieves a loyalty reward.
  ///
  Future<LoyaltyReward> readLoyaltyReward({
    required String rewardId,
    String? authToken,
  }) async {
    return _loyaltyService.readLoyaltyReward(rewardId: rewardId, authToken: authToken);
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
    return _loyaltyService.redeemLoyaltyReward(rewardId: rewardId, request: request, authToken: authToken);
  }

  // GIFTCARD


  ///
  /// Lists all gift cards.
  ///
  /// You can specify optional filters to retrieve a subset of
  /// the gift cards.
  ///
  Future<GiftCardResponse> listGiftCards({
    required ListGiftCardRequest request,
    String? authToken,
  }) async {
    return _giftCardService.listGiftCards(request: request, authToken: authToken);
  }

  ///
  /// Creates a digital gift card or registers a physical (plastic) gift card.
  ///
  /// You must activate the gift card before it can be used for payment.
  /// For more information, see Selling gift cards.
  ///
  Future<GiftCard> createGiftCard({
    required CreateGiftCardRequest request,
    String? authToken,
  }) async {
    return _giftCardService.createGiftCard(request: request, authToken: authToken);
  }

  ///
  /// Retrieves a gift card using the gift card account number (GAN).
  ///
  Future<GiftCard> readGiftCardFromGan({
    required String gan,
    String? authToken,
  }) async {
    return _giftCardService.readGiftCardFromGan(gan: gan, authToken: authToken);
  }

  ///
  /// Retrieves a gift card using a secure payment
  /// token that represents the gift card.
  ///
  Future<GiftCard> readGiftCardFromNonce({
    required String nonce,
    String? authToken,
  }) async {
    return _giftCardService.readGiftCardFromNonce(nonce: nonce, authToken: authToken);
  }

  ///
  /// Links a customer to a gift card, which is also
  /// referred to as adding a card on file.
  ///
  Future<GiftCard> linkGiftCardToCustomer({
    required String giftCardId,
    required String customerId,
    String? authToken,
  }) async {
    return _giftCardService.linkGiftCardToCustomer(giftCardId: giftCardId, customerId: customerId, authToken: authToken);
  }

  ///
  /// Unlinks a customer from a gift card, which is also
  /// referred to as removing a card on file.
  ///
  Future<GiftCard> unlinkGiftCardToCustomer({
    required String giftCardId,
    required String customerId,
    String? authToken,
  }) async {
    return _giftCardService.unlinkGiftCardToCustomer(giftCardId: giftCardId, customerId: customerId, authToken: authToken);
  }

  ///
  /// Retrieves a gift card using its ID.
  ///
  Future<GiftCard> readGiftCard({
    required String giftCardId,
    String? authToken,
  }) async {
    return _giftCardService.readGiftCard(giftCardId: giftCardId, authToken: authToken);
  }

  ///
  /// Lists gift card activities.
  ///
  /// By default, you get gift card activities for all
  /// gift cards in the seller's account. You can optionally
  /// specify query parameters to filter the list. For example,
  /// you can get a list of gift card activities for a gift card,
  /// for all gift cards in a specific region, or for activities within
  /// a time window.
  ///
  Future<GiftCardActivityResponse> listGiftCardActivities({
    required ListGiftCardActivityRequest request,
    String? authToken,
  }) async {
    return _giftCardService.listGiftCardActivities(request: request, authToken: authToken);
  }

  ///
  /// Creates a gift card activity.
  ///
  /// For more information, see GiftCardActivity and Using
  /// activated gift cards.
  ///
  Future<GiftCardActivity> createGiftCardActivities({
    required CreateGiftCardActivityRequest request,
    String? authToken,
  }) async {
    return _giftCardService.createGiftCardActivities(request: request, authToken: authToken);
  }


  // BOOKINGS
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
    return _bookingsService.listBookings(request: request, authToken: authToken);
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
    return _bookingsService.createBooking(request: request, authToken: authToken);
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
    return _bookingsService.searchBookingAvailability(query: query, authToken: authToken);
  }

  ///
  /// Retrieves a seller's booking profile.
  ///
  Future<BusinessBookingProfile> readBusinessBooking({
    String? authToken,
  }) async {
    return _bookingsService.readBusinessBooking(authToken: authToken);
  }

  ///
  /// Lists booking profiles for team members.
  ///
  Future<TeamMemberBookingProfileResponse> listTeamMemberBookingProfile({
    required ReadTeamMemberBookingProfileRequest request,
    String? authToken,
  }) async {
    return _bookingsService.listTeamMemberBookingProfile(request: request, authToken: authToken);
  }

  ///
  /// Retrieves a team member's booking profile.
  ///
  Future<TeamMemberBookingProfile> readTeamMemberBookingProfile({
    required String teamMemberId,
    String? authToken,
  }) async {
    return _bookingsService.readTeamMemberBookingProfile(teamMemberId: teamMemberId, authToken: authToken);
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
    return _bookingsService.readBooking(bookingId: bookingId, authToken: authToken);
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
    return _bookingsService.updateBooking(bookingId: bookingId, request: request, authToken: authToken);
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
    return _bookingsService.cancelBooking(bookingId: bookingId, request: request, authToken: authToken);
  }

  // MERCHANT

  ///
  /// Returns Merchant information for a given access token.
  ///
  /// If you don't know a Merchant ID, you can use this endpoint
  /// to retrieve the merchant ID for an access token. You can specify
  /// your personal access token to get your own merchant information or
  /// specify an OAuth token to get the information for the merchant that
  /// granted you access.
  ///
  /// If you know the merchant ID, you can also use the RetrieveMerchant
  /// endpoint to get the merchant information.
  ///
  Future<MerchantResponse> listMerchants({
    String? cursor,
    String? authToken,
  }) async {
    return _merchantService.listMerchants(cursor: cursor, authToken: authToken);
  }

  ///
  /// Retrieve a Merchant object for the given merchant_id.
  ///
  Future<Merchant> readMerchant({
    required String merchantId,
    String? authToken,
  }) async {
    return _merchantService.readMerchant(merchantId: merchantId, authToken: authToken);
  }

  ///
  /// Provides details about all of the seller's
  /// locations, including those with an inactive status.
  ///
  Future<List<Location>> listLocation({
    required String merchantId,
    String? authToken,
  }) async {
    return _merchantService.listLocation(merchantId: merchantId, authToken: authToken);
  }

  ///
  /// Creates a location.
  ///
  /// Creating new locations allows for separate configuration
  /// of receipt layouts, item prices, and sales reports. Developers
  /// can use locations to separate sales activity via applications
  /// that integrate with Square from sales activity elsewhere in a
  /// seller's account. Locations created programmatically with the
  /// Locations API will last forever and are visible to the seller
  /// for their own management, so ensure that each location has a
  /// sensible and unique name.
  ///
  Future<Location> createLocation({
    required Location location,
    String? authToken,
  }) async {
    return _merchantService.createLocation(location: location, authToken: authToken);
  }

  ///
  /// Retrieves details of a single location.
  ///
  /// Specify "main" as the location ID to retrieve details
  /// of the main location.
  ///
  Future<Location> readLocation({
    required String locationId,
    String? authToken,
  }) async {
    return _merchantService.readLocation(locationId: locationId, authToken: authToken);
  }

  ///
  /// Updates a location.
  ///
  Future<Location> updateLocation({
    required Location location,
    String? authToken,
  }) async {
    return _merchantService.updateLocation(location: location, authToken: authToken);
  }

  // TEAM

  ///
  /// Creates a single TeamMember object.
  ///
  /// The TeamMember object is returned on successful creates.
  ///
  Future<TeamMember> createTeamMember({
    required TeamMemberUpsertRequest request,
    String? authToken,
  }) async {
    return _teamService.createTeamMember(request: request, authToken: authToken);
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
    return _teamService.batchCreateTeamMember(request: request, authToken: authToken);
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
    return _teamService.batchUpdateTeamMember(request: request, authToken: authToken);
  }

  ///
  /// Returns a paginated list of TeamMember objects for a business.
  ///
  Future<TeamMemberResponse> searchTeamMember({
    required TeamMemberSearchRequest request,
    String? authToken,
  }) async {
    return _teamService.searchTeamMember(request: request, authToken: authToken);
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
    return _teamService.readTeamMember(teamMemberId: teamMemberId, authToken: authToken);
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
    return _teamService.updateTeamMember(teamMember: teamMember, authToken: authToken);
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
    return _teamService.readWageSetting(teamMemberId: teamMemberId, authToken: authToken);
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
    return _teamService.updateWageSetting(wageSetting: wageSetting, authToken: authToken);
  }

  ///
  /// Returns a paginated list of BreakType instances for a business.
  ///
  Future<BreakTypeResponse> listBreakTypes({
    required ListBreakTypesRequest request,
    String? authToken,
  }) async {
    return _teamService.listBreakTypes(request: request, authToken: authToken);
  }

  ///
  /// Creates a new BreakType.
  ///
  Future<BreakType> createBreakTypes({
    required CreateBreakTypeRequest request,
    String? authToken,
  }) async {
    return _teamService.createBreakTypes(request: request, authToken: authToken);
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
    return _teamService.deleteBreakTypes(breakTypeId: breakTypeId, authToken: authToken);
  }

  ///
  /// Returns a single BreakType specified by id.
  ///
  Future<BreakType> readBreakTypes({
    required String breakTypeId,
    String? authToken,
  }) async {
    return _teamService.readBreakTypes(breakTypeId: breakTypeId, authToken: authToken);
  }

  ///
  /// Updates an existing BreakType.
  ///
  Future<BreakType> updateBreakTypes({
    required BreakType breakType,
    String? authToken,
  }) async {
    return _teamService.updateBreakTypes(breakType: breakType, authToken: authToken);
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
    return _teamService.createShift(request: request, authToken: authToken);
  }

  ///
  /// Returns a paginated list of Shift records for a business.
  ///
  Future<ShiftResponse> searchShift({
    required SearchShiftRequest request,
    String? authToken,
  }) async {
    return _teamService.searchShift(request: request, authToken: authToken);
  }

  ///
  /// Deletes a Shift.
  ///
  Future<bool> deleteShift({
    required String shiftId,
    String? authToken,
  }) async {
    return _teamService.deleteShift(shiftId: shiftId, authToken: authToken);
  }

  ///
  /// Returns a single Shift specified by id.
  ///
  Future<Shift> readShift({
    required String shiftId,
    String? authToken,
  }) async {
    return _teamService.readShift(shiftId: shiftId, authToken: authToken);
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
    return _teamService.updateShift(shift: shift, authToken: authToken);
  }

  ///
  /// Returns a paginated list of TeamMemberWage instances for a business.
  ///
  Future<TeamMemberWageResponse> listTeamMemberWages({
    required ListTeamMemberWageRequest request,
    String? authToken,
  }) async {
    return _teamService.listTeamMemberWages(request: request, authToken: authToken);
  }

  ///
  /// Returns a single TeamMemberWage specified by id.
  ///
  Future<TeamMemberWage> getTeamMemberWages({
    required String teamMemberId,
    String? authToken,
  }) async {
    return _teamService.getTeamMemberWages(teamMemberId: teamMemberId, authToken: authToken);
  }

  ///
  /// Returns a list of WorkweekConfig instances for a business.
  ///
  Future<WorkWeekConfigResponse> listWorkWeekConfigs({
    required SearchWorkWeekConfigRequest request,
    String? authToken,
  }) async {
    return _teamService.listWorkWeekConfigs(request: request, authToken: authToken);
  }

  ///
  /// Updates a WorkweekConfig.
  ///
  Future<WorkweekConfig> updateWorkWeekConfigs({
    required WorkweekConfig config,
    String? authToken,
  }) async {
    return _teamService.updateWorkWeekConfigs(config: config, authToken: authToken);
  }


  // Financial/Bank Account
  ///
  /// Returns a list of BankAccount objects linked to a Square account.
  ///
  Future<BankAccountResponse> listBankAccounts({
    required ListBankAccountsRequest request,
    String? authToken,
  }) async {
    return _bankAccountService.listBankAccounts(request: request, authToken: authToken);
  }

  ///
  /// Returns details of a BankAccount identified by V1 bank account ID.
  ///
  Future<BankAccount> readBankAccountByV1Id({
    required String v1BankAccountId,
    String? authToken,
  }) async {
    return _bankAccountService.readBankAccountByV1Id(v1BankAccountId: v1BankAccountId, authToken: authToken);
  }

  ///
  /// Returns details of a BankAccount linked to a Square account.
  ///
  Future<BankAccount> readBankAccountById({
    required String bankAccountId,
    String? authToken,
  }) async {
    return _bankAccountService.readBankAccountById(bankAccountId: bankAccountId, authToken: authToken);
  }

  // ONLINE
  ///
  /// Lists the Square Online sites that belong to a seller.
  ///
  /// Sites are listed in descending order by the created_at date.
  ///
  Future<List<Site>> listSites({
    String? authToken,
  }) async {
    return _onlineService.listSites(authToken: authToken);
  }

  ///
  /// Removes your snippet from a Square Online site.
  ///
  /// You can call ListSites to get the IDs of the sites that
  /// belong to a seller.
  ///
  Future<bool> deleteSnippet({
    required String siteId,
    String? authToken,
  }) async {
    return _onlineService.deleteSnippet(siteId: siteId, authToken: authToken);
  }

  ///
  /// Retrieves your snippet from a Square Online site.
  ///
  /// A site can contain snippets from multiple snippet applications,
  /// but you can retrieve only the snippet that was added by your application.
  ///
  Future<Snippet> readSnippet({
    required String siteId,
    String? authToken,
  }) async {
    return _onlineService.readSnippet(siteId: siteId, authToken: authToken);
  }

  ///
  /// Adds a snippet to a Square Online site or updates the existing
  /// snippet on the site.
  ///
  /// The snippet code is appended to the end of the head element on
  /// every page of the site, except checkout pages. A snippet application
  /// can add one snippet to a given site.
  ///
  /// You can call ListSites to get the IDs of the sites that belong
  /// to a seller.
  ///
  Future<Snippet> upsertSnippet({
    required Snippet snippet,
    String? authToken,
  }) async {
    return _onlineService.upsertSnippet(snippet: snippet, authToken: authToken);
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
