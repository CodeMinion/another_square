
import 'dart:convert';
import 'package:another_square/services/authentication_service.dart';
import 'package:another_square/square_models.dart';
import 'package:http/http.dart' as http;

///
/// URL: https://developer.squareup.com/reference/square/payments-api
///
///
class PaymentService {
  final String baseUrl;
  final AuthenticationService authenticationService;

  PaymentService(
      {required this.baseUrl, required this.authenticationService});



  ///
  /// Retrieves a list of payments taken by the account making the request.
  ///
  /// Results are eventually consistent, and new payments or
  /// changes to payments might take several seconds to appear.
  ///
  /// The maximum results per page is 100.
  ///
  Future<SquarePaymentResponse> listPayments({
    required ListPaymentRequest request,
    String? authToken,
  }) async {

    authToken ??= authenticationService.getCachedToken()?.accessToken;

    Map<String, String> headers = {
      "Authorization": "Bearer ${authToken ?? ""}",
      'Content-Type': 'application/json; charset=UTF-8',
      'Accept': 'application/json',

    };

    Uri endpoint = Uri.https(
        baseUrl, "/v2/payments", request.toJson());

    //print (endpoint.toString());

    var response = await
    http.get(endpoint,  headers: headers);

    if (response.statusCode == 200) {
      print (jsonDecode(response.body));
      return SquarePaymentResponse.fromJson(jsonDecode(response.body));
    }
    else {
      print (response.body);
      throw PaymentException(statusCode: response.statusCode, message: SquarePaymentResponse.fromJson(jsonDecode(response.body)).errors?[0].detail?.toString());
    }
  }

  ///
  /// Creates a payment using the provided source.
  ///
  /// You can use this endpoint to charge a card (credit/debit card or
  /// Square gift card) or record a payment that the seller
  /// received outside of Square (cash payment from a buyer or a
  /// payment that an external entity processed on behalf of the seller).
  ///
  Future<Payment> createPayment({
    required CreatePaymentRequest request,
    String? authToken,
  }) async {

    authToken ??= authenticationService.getCachedToken()?.accessToken;

    Map<String, String> headers = {
      "Authorization": "Bearer ${authToken ?? ""}",
      'Content-Type': 'application/json; charset=UTF-8',
      'Accept': 'application/json',

    };

    Uri endpoint = Uri.https(
        baseUrl, "/v2/payments");

    //print (endpoint.toString());

    var response = await
    http.post(endpoint, body: request.toJson(), headers: headers);

    if (response.statusCode == 200) {
      print (jsonDecode(response.body));
      return SquarePaymentResponse.fromJson(jsonDecode(response.body)).payment!;
    }
    else {
      print (response.body);
      throw PaymentException(statusCode: response.statusCode, message: SquarePaymentResponse.fromJson(jsonDecode(response.body)).errors?[0].detail?.toString());
    }
  }

  ///
  /// Cancels (voids) a payment identified by the idempotency key
  /// that is specified in the request.
  ///
  /// Use this method when the status of a CreatePayment request
  /// is unknown (for example, after you send a CreatePayment
  /// request, a network error occurs and you do not get a response).
  /// In this case, you can direct Square to cancel the payment using
  /// this endpoint. In the request, you provide the same idempotency
  /// key that you provided in your CreatePayment request that you want
  /// to cancel. After canceling the payment, you can submit your
  /// CreatePayment request again.
  ///
  /// Note that if no payment with the specified idempotency key is found,
  /// no action is taken and the endpoint returns successful
  ///
  Future<bool> cancelPaymentByIdempotencyKey({
    required String idempotencyKey,
    String? authToken,
  }) async {

    authToken ??= authenticationService.getCachedToken()?.accessToken;

    Map<String, String> headers = {
      "Authorization": "Bearer ${authToken ?? ""}",
      'Content-Type': 'application/json; charset=UTF-8',
      'Accept': 'application/json',

    };

    Uri endpoint = Uri.https(
        baseUrl, "/v2/payments/cancel");

    //print (endpoint.toString());

    var request = {
      "idempotency_key": idempotencyKey
    };
    var response = await
    http.post(endpoint, body: jsonEncode(request), headers: headers);

    if (response.statusCode == 200) {
      print (jsonDecode(response.body));
      return true;
    }
    else {
      print (response.body);
      throw PaymentException(statusCode: response.statusCode, message: SquarePaymentResponse.fromJson(jsonDecode(response.body)).errors?[0].detail?.toString());
    }
  }

  ///
  /// Retrieves details for a specific payment.
  ///
  Future<Payment> readPayment({
    required String paymentId,
    String? authToken,
  }) async {

    authToken ??= authenticationService.getCachedToken()?.accessToken;

    Map<String, String> headers = {
      "Authorization": "Bearer ${authToken ?? ""}",
      'Content-Type': 'application/json; charset=UTF-8',
      'Accept': 'application/json',

    };

    Uri endpoint = Uri.https(
        baseUrl, "/v2/payments/$paymentId");

    //print (endpoint.toString());

    var response = await
    http.get(endpoint, headers: headers);

    if (response.statusCode == 200) {
      print (jsonDecode(response.body));
      return SquarePaymentResponse.fromJson(jsonDecode(response.body)).payment!;
    }
    else {
      print (response.body);
      throw PaymentException(statusCode: response.statusCode, message: SquarePaymentResponse.fromJson(jsonDecode(response.body)).errors?[0].detail?.toString());
    }
  }

  ///
  /// Updates a payment with the APPROVED status.
  ///
  /// You can update the amount_money and tip_money using this endpoint.
  ///
  Future<Payment> updatePayment({
    required String paymentId,
    required UpdatePaymentRequest request,
    String? authToken,
  }) async {

    authToken ??= authenticationService.getCachedToken()?.accessToken;

    Map<String, String> headers = {
      "Authorization": "Bearer ${authToken ?? ""}",
      'Content-Type': 'application/json; charset=UTF-8',
      'Accept': 'application/json',

    };

    Uri endpoint = Uri.https(
        baseUrl, "/v2/payments/$paymentId");

    //print (endpoint.toString());

    var response = await
    http.put(endpoint, body:request.toJson(), headers: headers);

    if (response.statusCode == 200) {
      print (jsonDecode(response.body));
      return SquarePaymentResponse.fromJson(jsonDecode(response.body)).payment!;
    }
    else {
      print (response.body);
      throw PaymentException(statusCode: response.statusCode, message: SquarePaymentResponse.fromJson(jsonDecode(response.body)).errors?[0].detail?.toString());
    }
  }

  ///
  /// Cancels (voids) a payment.
  ///
  /// You can use this endpoint to cancel a payment with the APPROVED status.
  ///
  Future<bool> cancelPayment({
    required String paymentId,
    String? authToken,
  }) async {

    authToken ??= authenticationService.getCachedToken()?.accessToken;

    Map<String, String> headers = {
      "Authorization": "Bearer ${authToken ?? ""}",
      'Content-Type': 'application/json; charset=UTF-8',
      'Accept': 'application/json',

    };

    Uri endpoint = Uri.https(
        baseUrl, "/v2/payments/$paymentId/cancel");

    //print (endpoint.toString());

    var response = await
    http.post(endpoint, headers: headers);

    if (response.statusCode == 200) {
      print (jsonDecode(response.body));
      return true;
    }
    else {
      print (response.body);
      throw PaymentException(statusCode: response.statusCode, message: SquarePaymentResponse.fromJson(jsonDecode(response.body)).errors?[0].detail?.toString());
    }
  }

  ///
  /// Completes (captures) a payment.
  ///
  /// By default, payments are set to complete immediately
  /// after they are created.
  ///
  /// You can use this endpoint to complete a payment with the
  /// APPROVED status.
  ///
  Future<Payment> completePayment({
    required String paymentId,
    required CompletePaymentRequest request,
    String? authToken,
  }) async {

    authToken ??= authenticationService.getCachedToken()?.accessToken;

    Map<String, String> headers = {
      "Authorization": "Bearer ${authToken ?? ""}",
      'Content-Type': 'application/json; charset=UTF-8',
      'Accept': 'application/json',

    };

    Uri endpoint = Uri.https(
        baseUrl, "/v2/payments/$paymentId/complete");

    //print (endpoint.toString());

    var response = await
    http.post(endpoint, body:request.toJson(), headers: headers);

    if (response.statusCode == 200) {
      print (jsonDecode(response.body));
      return SquarePaymentResponse.fromJson(jsonDecode(response.body)).payment!;
    }
    else {
      print (response.body);
      throw PaymentException(statusCode: response.statusCode, message: SquarePaymentResponse.fromJson(jsonDecode(response.body)).errors?[0].detail?.toString());
    }
  }

  ///
  /// Retrieves a list of refunds for the account making the request.
  ///
  /// Results are eventually consistent, and new refunds or changes
  /// to refunds might take several seconds to appear.
  ///
  Future<SquareRefundResponse> listRefunds({
    required ListRefundsRequest request,
    String? authToken,
  }) async {

    authToken ??= authenticationService.getCachedToken()?.accessToken;

    Map<String, String> headers = {
      "Authorization": "Bearer ${authToken ?? ""}",
      'Content-Type': 'application/json; charset=UTF-8',
      'Accept': 'application/json',

    };

    Uri endpoint = Uri.https(
        baseUrl, "/v2/refunds", request.toJson());

    //print (endpoint.toString());

    var response = await
    http.get(endpoint,  headers: headers);

    if (response.statusCode == 200) {
      print (jsonDecode(response.body));
      return SquareRefundResponse.fromJson(jsonDecode(response.body));
    }
    else {
      print (response.body);
      throw PaymentException(statusCode: response.statusCode, message: SquareRefundResponse.fromJson(jsonDecode(response.body)).errors?[0].detail?.toString());
    }
  }

  ///
  /// Refunds a payment.
  ///
  /// You can refund the entire payment amount or a portion of it.
  /// You can use this endpoint to refund a card payment or record a
  /// refund of a cash or external payment. For more information, see
  /// Refund Payment.
  ///
  Future<Refund> refundPayment({
    required RefundPaymentRequest request,
    String? authToken,
  }) async {

    authToken ??= authenticationService.getCachedToken()?.accessToken;

    Map<String, String> headers = {
      "Authorization": "Bearer ${authToken ?? ""}",
      'Content-Type': 'application/json; charset=UTF-8',
      'Accept': 'application/json',

    };

    Uri endpoint = Uri.https(
        baseUrl, "/v2/refunds");

    //print (endpoint.toString());

    var response = await
    http.post(endpoint, body:request.toJson(), headers: headers);

    if (response.statusCode == 200) {
      print (jsonDecode(response.body));
      return SquareRefundResponse.fromJson(jsonDecode(response.body)).refund!;
    }
    else {
      print (response.body);
      throw PaymentException(statusCode: response.statusCode, message: SquareRefundResponse.fromJson(jsonDecode(response.body)).errors?[0].detail?.toString());
    }
  }

  ///
  /// Retrieves a specific refund using the refund_id
  ///
  Future<Refund> readPaymentRefund({
    required String refundId,
    String? authToken,
  }) async {

    authToken ??= authenticationService.getCachedToken()?.accessToken;

    Map<String, String> headers = {
      "Authorization": "Bearer ${authToken ?? ""}",
      'Content-Type': 'application/json; charset=UTF-8',
      'Accept': 'application/json',

    };

    Uri endpoint = Uri.https(
        baseUrl, "/v2/refunds/$refundId");

    //print (endpoint.toString());

    var response = await
    http.get(endpoint, headers: headers);

    if (response.statusCode == 200) {
      print (jsonDecode(response.body));
      return SquareRefundResponse.fromJson(jsonDecode(response.body)).refund!;
    }
    else {
      print (response.body);
      throw PaymentException(statusCode: response.statusCode, message: SquareRefundResponse.fromJson(jsonDecode(response.body)).errors?[0].detail?.toString());
    }
  }

  ///
  /// Returns a list of disputes associated with a particular account.
  ///
  Future<DisputeResponse> listDisputes({
    required ListDisputesRequest request,
    String? authToken,
  }) async {

    authToken ??= authenticationService.getCachedToken()?.accessToken;

    Map<String, String> headers = {
      "Authorization": "Bearer ${authToken ?? ""}",
      'Content-Type': 'application/json; charset=UTF-8',
      'Accept': 'application/json',

    };

    Uri endpoint = Uri.https(
        baseUrl, "/v2/disputes", request.toJson());

    //print (endpoint.toString());

    var response = await
    http.get(endpoint, headers: headers);

    if (response.statusCode == 200) {
      print (jsonDecode(response.body));
      return DisputeResponse.fromJson(jsonDecode(response.body));
    }
    else {
      print (response.body);
      throw PaymentException(statusCode: response.statusCode, message: DisputeResponse.fromJson(jsonDecode(response.body)).errors?[0].detail?.toString());
    }
  }

  ///
  /// Returns details about a specific dispute.
  ///
  Future<Dispute> readDispute({
    required String disputeId,
    String? authToken,
  }) async {

    authToken ??= authenticationService.getCachedToken()?.accessToken;

    Map<String, String> headers = {
      "Authorization": "Bearer ${authToken ?? ""}",
      'Content-Type': 'application/json; charset=UTF-8',
      'Accept': 'application/json',

    };

    Uri endpoint = Uri.https(
        baseUrl, "/v2/disputes/$disputeId");

    //print (endpoint.toString());

    var response = await
    http.get(endpoint, headers: headers);

    if (response.statusCode == 200) {
      print (jsonDecode(response.body));
      return DisputeResponse.fromJson(jsonDecode(response.body)).dispute!;
    }
    else {
      print (response.body);
      throw PaymentException(statusCode: response.statusCode, message: DisputeResponse.fromJson(jsonDecode(response.body)).errors?[0].detail?.toString());
    }
  }

  ///
  /// Accepts the loss on a dispute.
  ///
  /// Square returns the disputed amount to the cardholder and
  /// updates the dispute state to ACCEPTED.
  ///
  /// Square debits the disputed amount from the seller’s Square account.
  /// If the Square account does not have sufficient funds, Square debits
  /// the associated bank account.
  ///
  Future<Dispute> acceptDispute({
    required String disputeId,
    String? authToken,
  }) async {

    authToken ??= authenticationService.getCachedToken()?.accessToken;

    Map<String, String> headers = {
      "Authorization": "Bearer ${authToken ?? ""}",
      'Content-Type': 'application/json; charset=UTF-8',
      'Accept': 'application/json',

    };

    Uri endpoint = Uri.https(
        baseUrl, "/v2/disputes/$disputeId/accept");

    //print (endpoint.toString());

    var response = await
    http.post(endpoint, headers: headers);

    if (response.statusCode == 200) {
      print (jsonDecode(response.body));
      return DisputeResponse.fromJson(jsonDecode(response.body)).dispute!;
    }
    else {
      print (response.body);
      throw PaymentException(statusCode: response.statusCode, message: DisputeResponse.fromJson(jsonDecode(response.body)).errors?[0].detail?.toString());
    }
  }

  ///
  /// Returns a list of evidence associated with a dispute.
  ///
  Future<DisputeEvidenceListResponse> listDisputeEvidence({
    required String disputeId,
    String? cursor,
    String? authToken,
  }) async {

    authToken ??= authenticationService.getCachedToken()?.accessToken;

    Map<String, String> headers = {
      "Authorization": "Bearer ${authToken ?? ""}",
      'Content-Type': 'application/json; charset=UTF-8',
      'Accept': 'application/json',

    };

    Map<String, dynamic>? request;

    if (cursor != null) {
      request = {
        "cursor": cursor
      };
    }

    Uri endpoint = Uri.https(
        baseUrl, "/v2/disputes/$disputeId/evidence", request);

    //print (endpoint.toString());

    var response = await
    http.get(endpoint, headers: headers);

    if (response.statusCode == 200) {
      print (jsonDecode(response.body));
      return DisputeEvidenceListResponse.fromJson(jsonDecode(response.body));
    }
    else {
      print (response.body);
      throw PaymentException(statusCode: response.statusCode, message: DisputeEvidenceListResponse.fromJson(jsonDecode(response.body)).errors?[0].detail?.toString());
    }
  }

  ///
  /// Uploads a file to use as evidence in a dispute challenge.
  ///
  /// The endpoint accepts HTTP multipart/form-data file uploads in
  /// HEIC, HEIF, JPEG, PDF, PNG, and TIFF formats.
  ///
  Future<DisputeEvidence> createDisputeEvidenceFile({
    required String disputeId,
    required CreateDisputeEvidenceFileRequest request,
    String? authToken,
  }) async {

    authToken ??= authenticationService.getCachedToken()?.accessToken;

    Map<String, String> headers = {
      "Authorization": "Bearer ${authToken ?? ""}",
      'Content-Type': 'application/json; charset=UTF-8',
      'Accept': 'application/json',

    };

    Uri endpoint = Uri.https(
        baseUrl, "/v2/disputes/$disputeId/evidence-files");

    //print (endpoint.toString());

    var response = await
    http.post(endpoint, body: request.toJson(), headers: headers);

    if (response.statusCode == 200) {
      print (jsonDecode(response.body));
      return DisputeEvidenceResponse.fromJson(jsonDecode(response.body)).evidence!;
    }
    else {
    print (response.body);
    throw PaymentException(statusCode: response.statusCode, message: DisputeEvidenceResponse.fromJson(jsonDecode(response.body)).errors?[0].detail?.toString());
    }
  }

  ///
  /// Uploads text to use as evidence for a dispute challenge.
  ///
  Future<DisputeEvidence> createDisputeEvidenceText({
    required String disputeId,
    required CreateDisputeEvidenceTextRequest request,
    String? authToken,
  }) async {

    authToken ??= authenticationService.getCachedToken()?.accessToken;

    Map<String, String> headers = {
      "Authorization": "Bearer ${authToken ?? ""}",
      'Content-Type': 'application/json; charset=UTF-8',
      'Accept': 'application/json',

    };

    Uri endpoint = Uri.https(
        baseUrl, "/v2/disputes/$disputeId/evidence-files");

    //print (endpoint.toString());

    var response = await
    http.post(endpoint, body: request.toJson(), headers: headers);

    if (response.statusCode == 200) {
      print (jsonDecode(response.body));
      return DisputeEvidenceResponse.fromJson(jsonDecode(response.body)).evidence!;
    }
    else {
      print (response.body);
      throw PaymentException(statusCode: response.statusCode, message: DisputeEvidenceResponse.fromJson(jsonDecode(response.body)).errors?[0].detail?.toString());
    }
  }

  ///
  /// Removes specified evidence from a dispute.
  ///
  /// Square does not send the bank any evidence that is removed. Also,
  /// you cannot remove evidence after submitting it to the bank using
  /// SubmitEvidence
  ///
  Future<bool> deleteDisputeEvidence({
    required String disputeId,
    required String evidenceId,
    String? authToken,
  }) async {

    authToken ??= authenticationService.getCachedToken()?.accessToken;

    Map<String, String> headers = {
      "Authorization": "Bearer ${authToken ?? ""}",
      'Content-Type': 'application/json; charset=UTF-8',
      'Accept': 'application/json',

    };

    Uri endpoint = Uri.https(
        baseUrl, "/v2/disputes/$disputeId/evidence/$evidenceId");

    //print (endpoint.toString());

    var response = await
    http.delete(endpoint, headers: headers);

    if (response.statusCode == 200) {
      print (jsonDecode(response.body));
      return true;
    }
    else {
      print (response.body);
      throw PaymentException(statusCode: response.statusCode, message: DisputeEvidenceResponse.fromJson(jsonDecode(response.body)).errors?[0].detail?.toString());
    }
  }

  ///
  /// Returns the evidence metadata specified by the evidence ID
  /// in the request URL path
  ///
  Future<DisputeEvidence> readDisputeEvidence({
    required String disputeId,
    required String evidenceId,
    String? authToken,
  }) async {

    authToken ??= authenticationService.getCachedToken()?.accessToken;

    Map<String, String> headers = {
      "Authorization": "Bearer ${authToken ?? ""}",
      'Content-Type': 'application/json; charset=UTF-8',
      'Accept': 'application/json',

    };

    Uri endpoint = Uri.https(
        baseUrl, "/v2/disputes/$disputeId/evidence/$evidenceId");

    //print (endpoint.toString());

    var response = await
    http.get(endpoint, headers: headers);

    if (response.statusCode == 200) {
      print (jsonDecode(response.body));
      return DisputeEvidenceResponse.fromJson(jsonDecode(response.body)).evidence!;
    }
    else {
      print (response.body);
      throw PaymentException(statusCode: response.statusCode, message: DisputeEvidenceResponse.fromJson(jsonDecode(response.body)).errors?[0].detail?.toString());
    }
  }

  ///
  /// Submits evidence to the cardholder's bank.
  ///
  /// Before submitting evidence, Square compiles all available evidence.
  /// This includes evidence uploaded using the CreateDisputeEvidenceFile
  /// and CreateDisputeEvidenceText endpoints and evidence automatically
  /// provided by Square, when available.
  ///
  Future<DisputeEvidence> submitDisputeEvidence({
    required String disputeId,
    String? authToken,
  }) async {

    authToken ??= authenticationService.getCachedToken()?.accessToken;

    Map<String, String> headers = {
      "Authorization": "Bearer ${authToken ?? ""}",
      'Content-Type': 'application/json; charset=UTF-8',
      'Accept': 'application/json',

    };

    Uri endpoint = Uri.https(
        baseUrl, "/v2/disputes/$disputeId/submit-evidence");

    //print (endpoint.toString());

    var response = await
    http.post(endpoint, headers: headers);

    if (response.statusCode == 200) {
      print (jsonDecode(response.body));
      return DisputeEvidenceResponse.fromJson(jsonDecode(response.body)).evidence!;
    }
    else {
      print (response.body);
      throw PaymentException(statusCode: response.statusCode, message: DisputeEvidenceResponse.fromJson(jsonDecode(response.body)).errors?[0].detail?.toString());
    }
  }

  ///
  /// Links a checkoutId to a checkout_page_url that
  /// customers are directed to in order to provide their
  /// payment information using a payment processing workflow
  /// hosted on connect.squareup.com.
  ///
  Future<Checkout> createCheckout({
    required String locationId,
    required CreateCheckoutRequest request,
    String? authToken,
  }) async {

    authToken ??= authenticationService.getCachedToken()?.accessToken;

    Map<String, String> headers = {
      "Authorization": "Bearer ${authToken ?? ""}",
      'Content-Type': 'application/json; charset=UTF-8',
      'Accept': 'application/json',

    };

    Uri endpoint = Uri.https(
        baseUrl, "/v2/locations/$locationId/checkouts");

    //print (endpoint.toString());

    var response = await
    http.post(endpoint, body: request.toJson(), headers: headers);

    if (response.statusCode == 200) {
      print (jsonDecode(response.body));
      return CheckoutResponse.fromJson(jsonDecode(response.body)).checkout!;
    }
    else {
      print (response.body);
      throw PaymentException(statusCode: response.statusCode, message: CheckoutResponse.fromJson(jsonDecode(response.body)).errors?[0].detail?.toString());
    }
  }

  ///
  /// Activates a domain for use with Apple Pay on the Web and Square.
  ///
  /// A validation is performed on this domain by Apple to ensure that
  /// it is properly set up as an Apple Pay enabled domain.
  ///
  /// This endpoint provides an easy way for platform developers to bulk
  /// activate Apple Pay on the Web with Square for merchants using
  /// their platform.
  ///
  /// To learn more about Web Apple Pay, see Add the Apple Pay on
  /// the Web Button.
  ///
  Future<RegisterDomainResponseStatus> registerApplePayDomain({
    required String domainName,
    String? authToken,
  }) async {

    authToken ??= authenticationService.getCachedToken()?.accessToken;

    Map<String, String> headers = {
      "Authorization": "Bearer ${authToken ?? ""}",
      'Content-Type': 'application/json; charset=UTF-8',
      'Accept': 'application/json',

    };

    Uri endpoint = Uri.https(
        baseUrl, "/v2/apple-pay/domains");

    //print (endpoint.toString());

    var request = {
      "domain_name": domainName
    };
    var response = await
    http.post(endpoint, body: request, headers: headers);

    if (response.statusCode == 200) {
      print (jsonDecode(response.body));
      return RegisterDomainResponse.fromJson(jsonDecode(response.body)).status!;
    }
    else {
      print (response.body);
      throw PaymentException(statusCode: response.statusCode, message: RegisterDomainResponse.fromJson(jsonDecode(response.body)).errors?[0].detail?.toString());
    }
  }


  ///
  /// Retrieves a list of cards owned by the account making the request.
  ///
  /// A max of 25 cards will be returned.
  ///
  Future<CardResponse> listCards({
    required ListCardRequest request,
    String? authToken,
  }) async {

    authToken ??= authenticationService.getCachedToken()?.accessToken;

    Map<String, String> headers = {
      "Authorization": "Bearer ${authToken ?? ""}",
      'Content-Type': 'application/json; charset=UTF-8',
      'Accept': 'application/json',

    };

    Uri endpoint = Uri.https(
        baseUrl, "/v2/cards", request.toJson());

    //print (endpoint.toString());


    var response = await
    http.get(endpoint, headers: headers);

    if (response.statusCode == 200) {
      print (jsonDecode(response.body));
      return CardResponse.fromJson(jsonDecode(response.body));
    }
    else {
      print (response.body);
      throw PaymentException(statusCode: response.statusCode, message: CardResponse.fromJson(jsonDecode(response.body)).errors?[0].detail?.toString());
    }
  }

  ///
  /// Adds a card on file to an existing merchant.
  ///
  Future<Card> createCard({
    required CreateCardRequest request,
    String? authToken,
  }) async {

    authToken ??= authenticationService.getCachedToken()?.accessToken;

    Map<String, String> headers = {
      "Authorization": "Bearer ${authToken ?? ""}",
      'Content-Type': 'application/json; charset=UTF-8',
      'Accept': 'application/json',

    };

    Uri endpoint = Uri.https(
        baseUrl, "/v2/cards");

    //print (endpoint.toString());


    var response = await
    http.post(endpoint, body:request.toJson(), headers: headers);

    if (response.statusCode == 200) {
      print (jsonDecode(response.body));
      return CardResponse.fromJson(jsonDecode(response.body)).card!;
    }
    else {
      print (response.body);
      throw PaymentException(statusCode: response.statusCode, message: CardResponse.fromJson(jsonDecode(response.body)).errors?[0].detail?.toString());
    }
  }

  ///
  /// Retrieves details for a specific Card.
  ///
  Future<Card> readCard({
    required String cardId,
    String? authToken,
  }) async {

    authToken ??= authenticationService.getCachedToken()?.accessToken;

    Map<String, String> headers = {
      "Authorization": "Bearer ${authToken ?? ""}",
      'Content-Type': 'application/json; charset=UTF-8',
      'Accept': 'application/json',

    };

    Uri endpoint = Uri.https(
        baseUrl, "/v2/cards/$cardId");

    //print (endpoint.toString());


    var response = await
    http.get(endpoint, headers: headers);

    if (response.statusCode == 200) {
      print (jsonDecode(response.body));
      return CardResponse.fromJson(jsonDecode(response.body)).card!;
    }
    else {
      print (response.body);
      throw PaymentException(statusCode: response.statusCode, message: CardResponse.fromJson(jsonDecode(response.body)).errors?[0].detail?.toString());
    }
  }

  ///
  /// Disables the card, preventing any further updates or charges.
  ///
  /// Disabling an already disabled card is allowed but has no effect.
  ///
  Future<Card> disableCard({
    required String cardId,
    String? authToken,
  }) async {

    authToken ??= authenticationService.getCachedToken()?.accessToken;

    Map<String, String> headers = {
      "Authorization": "Bearer ${authToken ?? ""}",
      'Content-Type': 'application/json; charset=UTF-8',
      'Accept': 'application/json',

    };

    Uri endpoint = Uri.https(
        baseUrl, "/v2/cards/$cardId/disable");

    //print (endpoint.toString());

    var response = await
    http.post(endpoint, headers: headers);

    if (response.statusCode == 200) {
      print (jsonDecode(response.body));
      return CardResponse.fromJson(jsonDecode(response.body)).card!;
    }
    else {
      print (response.body);
      throw PaymentException(statusCode: response.statusCode, message: CardResponse.fromJson(jsonDecode(response.body)).errors?[0].detail?.toString());
    }
  }


}

class PaymentException implements Exception {
  final String? message;
  final int statusCode;

  PaymentException({required this.statusCode, this.message});

  @override
  String toString() {
    return "PaymentException: $statusCode - $message";
  }
}

