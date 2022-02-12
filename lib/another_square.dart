library another_square;

import 'package:another_square/services/authentication_service.dart';
import 'package:another_square/services/catalog_service.dart';
import 'package:another_square/services/customer_service.dart';
import 'package:another_square/services/inventory_service.dart';
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
  late CatalogService _catalogService;
  late InventoryService _inventoryService;
  late CustomerService _customerService;

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

    _catalogService = CatalogService(
        authenticationService: _authenticationService!, baseUrl: _url);

    _inventoryService = InventoryService(
        authenticationService: _authenticationService!, baseUrl: _url);

    _customerService = CustomerService(
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
    required CatalogRetrieveRequest request,
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
    required CatalogBatchUpsertRequest request,
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
    required ListCatalogImageRequest request,
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
