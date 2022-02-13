import 'package:json_annotation/json_annotation.dart';

part "square_models.g.dart";

///
/// Responst for the OAuth request
@JsonSerializable(includeIfNull: false)
class TokenResponse {
  @JsonKey(name: "refresh_token")
  final String? refreshToken;

  @JsonKey(name: "access_token")
  final String? accessToken;

  @JsonKey(name: "expires_in")
  final int? expiresIn;

  @JsonKey(name: "merchant_id")
  final String? merchantId;

  @JsonKey(name: "short_lived")
  final bool? isShortLived;

  TokenResponse(
      {this.refreshToken,
      this.accessToken,
      this.expiresIn,
      this.isShortLived,
      this.merchantId});

  factory TokenResponse.fromJson(Map<String, dynamic> json) =>
      _$TokenResponseFromJson(json);

  Map<String, dynamic> toJson() => _$TokenResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

class Scope {
  final _id;
  final scope;

  Scope._(this._id, this.scope);

  static final Invalid = Scope._("invalid", "");
  static final BankAccountRead =
      Scope._("BankAccountRead", "BANK_ACCOUNTS_READ");

  static final AppointmentsRead =
      Scope._("AppointmentsRead", "APPOINTMENTS_READ");
  static final AppointmentsWrite =
      Scope._("AppointmentsWrite", "APPOINTMENTS_WRITE");
  static final AppointmentReadAll =
      Scope._("AppointmentReadAll", "APPOINTEMTNS_ALL_READ");
  static final AppointmentWriteAll =
      Scope._("AppointmenWriteAll", "APPOINTMETNS_ALL_WRITE");

  static final AppointmentBusinessSettingsRead = Scope._(
      "AppointmentBusinessSettingsRead", "APPOINTMENTS_BUSINESS_SETTINGS_READ");

  static final CashDrawerRead = Scope._("CashDrawerRead", "CASH_DRAWER_READ");

  static final CustomerRead = Scope._("CustomerRead", "CUSTOMERS_READ");
  static final CustomerWrite = Scope._("CustomerWrite", "CUSTOMERS_WRITE");

  static final DeviceCredentialManagement =
      Scope._("DeviceCredentialManagement", "DEVICE_CREDENTIAL_MANAGEMENT");

  static final DisputesRead = Scope._("DisputesRead", "DISPUTES_READ");
  static final DisputesWrite = Scope._("DisputesWrite", "DISPUTES_WRITE");

  static final EmployeesRead = Scope._("EmployeesRead", "EMPLOYEES_READ");
  static final EmployeesWrite = Scope._("DisputesWrite", "EMPLOYEES_WRITE");

  static final GiftcardRead = Scope._("GiftcardRead", "GIFTCARDS_READ");
  static final GiftcardsWrite = Scope._("GiftcardsWrite", "GIFTCARDS_WRITE");

  static final ItemsRead = Scope._("ItemsRead", "ITEMS_READ");
  static final ItemsWrite = Scope._("ItemsWrite", "ITEMS_WRITE");

  static final InventoryRead = Scope._("InventoryRead", "INVENTORY_READ");
  static final InventoryWrite = Scope._("ItemsWrite", "INVENTORY_WRITE");

  static final InvoicesRead = Scope._("InvoiceRead", "INVOICES_READ");
  static final InvoicesWrite = Scope._("InvoiceWrite", "INVOICES_WRITE");

  static final LoyaltyRead = Scope._("LoyaltyRead", "LOYALTY_READ");
  static final LoyaltyWrite = Scope._("LoyaltyWrite", "LOYALTY_WRITE");

  static final MerchantProfileRead =
      Scope._("MerchantProfileRead", "MERCHANT_PROFILE_READ");
  static final MerchantProfileWrite =
      Scope._("MerchantProfileWrite", "MERCHANT_PROFILE_WRITE");

  static final OnlineStoreSiteRead =
      Scope._("OnlineStoreSiteRead", "ONLINE_STORE_SITE_READ");

  static final OnlineStoreSnippetsRead =
      Scope._("OnlineStoreSnippetsRead", "ONLINE_STORE_SNIPPETS_READ");
  static final OnlineStoreSnippetsWrite =
      Scope._("OnlineStoreSnippetsWrite", "ONLINE_STORE_SNIPPETS_WRITE");

  static final OrdersRead = Scope._("OrdersRead", "ORDERS_READ");
  static final OrdersWrite = Scope._("OrdersWrite", "ORDERS_WRITE");

  static final PaymentRead = Scope._("PaymentRead", "PAYMENTS_READ");
  static final PaymentWrite = Scope._("PaymentWrite", "PAYMENTS_WRITE");
  static final PaymentWriteInPerson =
      Scope._("PaymentWriteInPerson", "PAYMENTS_WRITE_IN_PERSON");
  static final PaymentWriteAdditionalRecipients = Scope._(
      "PaymentWriteAdditionalRecipients",
      "PAYMENTS_WRITE_ADDITIONAL_RECIPIENTS");

  static final SubscriptionsRead =
      Scope._("SubscriptionsRead", "SUBSCRIPTIONS_READ");
  static final SubscriptionsWrite =
      Scope._("SubscriptionsWrite", "SUBSCRIPTIONS_WRITE");

  static final TimeCardsRead = Scope._("TimeCardsRead", "TIMECARDS_READ");
  static final TimeCardsWrite = Scope._("TimeCardsWrite", "TIMECARDS_WRITE");

  static final TimeCardsSettingsRead =
      Scope._("TimeCardsSettingsRead", "TIMECARDS_SETTINGS_READ");
  static final TimeCardsSettingsWrite =
      Scope._("TimeCardsSettingsWrite", "TIMECARDS_SETTINGS_WRITE");

  static final _values = [
    BankAccountRead,
    AppointmentsRead,
    AppointmentsWrite,
    //AppointmentReadAll,
    //AppointmentWriteAll,
    AppointmentBusinessSettingsRead,
    CashDrawerRead,
    CustomerRead,
    CustomerWrite,
    DeviceCredentialManagement,
    DisputesRead,
    DisputesWrite,
    EmployeesRead,
    EmployeesWrite,
    GiftcardRead,
    GiftcardsWrite,
    ItemsRead,
    ItemsWrite,
    InventoryRead,
    InventoryWrite,
    InvoicesRead,
    InvoicesWrite,
    LoyaltyRead,
    LoyaltyWrite,
    MerchantProfileRead,
    MerchantProfileWrite,
    OnlineStoreSiteRead,
    OnlineStoreSnippetsRead,
    OnlineStoreSnippetsWrite,
    OrdersRead,
    OrdersWrite,
    PaymentRead,
    PaymentWrite,
    PaymentWriteInPerson,
    PaymentWriteAdditionalRecipients,
    SubscriptionsRead,
    SubscriptionsWrite,
    TimeCardsRead,
    TimeCardsWrite,
    TimeCardsSettingsRead,
    TimeCardsSettingsWrite,
    Invalid,
  ];

  static List<Scope> getScopes() {

    List<Scope> outScopes = List<Scope>.empty(growable: true);
    _values.forEach((element) {
      if (element != Scope.Invalid) {
        outScopes.add(element);
      }
    });
    return outScopes;
  }

  static Scope findById(String id) {
    Scope found = Invalid;

    for (var scope in _values) {
      if (scope._id == id) {
        return scope;
      }
    }
    return found;
  }
}

@JsonSerializable(includeIfNull: false)
class Order {
  final String? id;

  @JsonKey(name: "location_id")
  final String? locationId;

  @JsonKey(name: "closed_at")
  final String? closedAt;

  @JsonKey(name: "created_at")
  final String? createdAt;

  @JsonKey(name: "customer_id")
  final String? customerId;

  final List<OrderLineItemDiscount>? discounts;

  final List<OrderFulfillment>? fulfillments;

  @JsonKey(name: "line_items")
  final List<OrderLineItem>? lineItems;

  final Map<String, String>? metadata;

  @JsonKey(name: "net_amounts")
  final OrderMoneyAmounts? netAmounts;

  @JsonKey(name: "pricing_options")
  final OrderPricingOptions? pricingOptions;

  @JsonKey(name: "reference_id")
  final String? referenceId;

  final List<Refund>? refunds;

  @JsonKey(name: "return_amounts")
  final OrderMoneyAmounts? returnAmounts;

  final List<OrderReturn>? returns;

  final List<OrderReward>? rewards;

  @JsonKey(name: "rounding_adjustment")
  final OrderRoundingAdjustment? roundingAdjustment;

  @JsonKey(name: "service_charges")
  final List<OrderServiceCharge>? serviceCharges;

  final OrderSource? source;

  final String? state;

  final List<OrderLineItemTax>? taxes;

  final List<Tender>? tenders;

  @JsonKey(name: "ticket_name")
  final String? ticketName;

  @JsonKey(name: "total_discount_money")
  final Money? totalDiscountMoney;

  @JsonKey(name: "total_money")
  final Money? totalMoney;

  @JsonKey(name: "total_service_charge_money")
  final Money? totalServiceChargeMoney;

  @JsonKey(name: "total_tax_money")
  final Money? totalTaxMoney;

  @JsonKey(name: "total_tip_money")
  final Money? totalTipMoney;

  @JsonKey(name: "updated_at")
  final String? updatedAt;

  final int? version;

  Order(
      {this.id,
      this.customerId,
      this.state,
      this.source,
      this.closedAt,
      this.createdAt,
      this.discounts,
      this.fulfillments,
      this.lineItems,
      this.locationId,
      this.metadata,
      this.netAmounts,
      this.pricingOptions,
      this.referenceId,
      this.refunds,
      this.returnAmounts,
      this.returns,
      this.rewards,
      this.roundingAdjustment,
      this.serviceCharges,
      this.taxes,
      this.tenders,
      this.ticketName,
      this.totalDiscountMoney,
      this.totalMoney,
      this.totalServiceChargeMoney,
      this.totalTaxMoney,
      this.totalTipMoney,
      this.updatedAt,
      this.version});

  factory Order.fromJson(Map<String, dynamic> json) => _$OrderFromJson(json);

  Map<String, dynamic> toJson() => _$OrderToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class OrderLineItem {
  final String? quantity;

  @JsonKey(name: "applied_discounts")
  final List<OrderLineItemAppliedDiscount>? appliedDiscounts;

  @JsonKey(name: "applied_taxes")
  final List<OrderLineItemAppliedTax>? appliedTaxes;

  @JsonKey(name: "base_price_money")
  final List<Money>? basePriceMoney;

  @JsonKey(name: "catalog_object_id")
  final String? catalogObjectId;

  @JsonKey(name: "catalog_version")
  final int? catalogVersion;

  @JsonKey(name: "gross_sales_money")
  final Money? grossSalesMoney;

  @JsonKey(name: "item_type")
  final String? itemType;

  final Map<String, String>? metadata;

  final List<OrderLineItemModifier>? modifiers;

  final String? name;

  final String? note;

  @JsonKey(name: "pricing_blocklists")
  final OrderLineItemPricingBlocklists? pricingBlocklists;

  @JsonKey(name: "quantity_unit")
  final OrderQuantityUnit? quantityUnit;

  @JsonKey(name: "total_discount_money")
  final Money? totalDiscountMoney;

  @JsonKey(name: "total_money")
  final Money? totalMoney;

  @JsonKey(name: "total_tax_money")
  final Money? totalTaxMoney;

  final String? uid;

  @JsonKey(name: "variation_name")
  final String? variationName;

  @JsonKey(name: "variation_total_price_money")
  final Money? variationTotalPriceMoney;

  OrderLineItem(
      {this.totalTaxMoney,
      this.totalMoney,
      this.totalDiscountMoney,
      this.metadata,
      this.uid,
      this.name,
      this.quantity,
      this.appliedDiscounts,
      this.appliedTaxes,
      this.basePriceMoney,
      this.catalogObjectId,
      this.catalogVersion,
      this.grossSalesMoney,
      this.itemType,
      this.modifiers,
      this.note,
      this.pricingBlocklists,
      this.quantityUnit,
      this.variationName,
      this.variationTotalPriceMoney});

  factory OrderLineItem.fromJson(Map<String, dynamic> json) =>
      _$OrderLineItemFromJson(json);

  Map<String, dynamic> toJson() => _$OrderLineItemToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class OrderLineItemModifier {
  @JsonKey(name: "base_price_money")
  final Money? basePriceMoney;

  @JsonKey(name: "catalog_object_id")
  final String? catalogObjectId;

  @JsonKey(name: "catalog_version")
  final int? catalogVersion;

  final String? name;

  @JsonKey(name: "total_price_money")
  final Money? totalPriceMoney;

  final String? uid;

  OrderLineItemModifier(
      {this.name,
      this.catalogVersion,
      this.catalogObjectId,
      this.uid,
      this.basePriceMoney,
      this.totalPriceMoney});

  factory OrderLineItemModifier.fromJson(Map<String, dynamic> json) =>
      _$OrderLineItemModifierFromJson(json);

  Map<String, dynamic> toJson() => _$OrderLineItemModifierToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class OrderLineItemDiscount {
  @JsonKey(name: "amount_money")
  final Money? amountMoney;

  @JsonKey(name: "applied_money")
  final Money? appliedMoney;

  @JsonKey(name: "catalog_object_id")
  final String? catalogObjectId;

  @JsonKey(name: "catalog_version")
  final int? catalogVersion;

  final Map<String, String>? metadata;

  final String? name;

  final String? percentage;

  @JsonKey(name: "pricing_rule_id")
  final String? pricingRuleId;

  @JsonKey(name: "reward_ids")
  final List<String>? rewardIds;

  final OrderLineItemDiscountScope? scope;

  final String? type;

  final String? uid;

  OrderLineItemDiscount(
      {this.catalogVersion,
      this.catalogObjectId,
      this.name,
      this.uid,
      this.metadata,
      this.scope,
      this.type,
      this.amountMoney,
      this.appliedMoney,
      this.percentage,
      this.pricingRuleId,
      this.rewardIds});

  factory OrderLineItemDiscount.fromJson(Map<String, dynamic> json) =>
      _$OrderLineItemDiscountFromJson(json);

  Map<String, dynamic> toJson() => _$OrderLineItemDiscountToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class OrderLineItemTax {
  @JsonKey(name: "applied_money")
  final Money? appliedMoney;

  @JsonKey(name: "auto_applied")
  final bool? autoApplied;

  @JsonKey(name: "catalog_object_id")
  final String? catalogObjectId;

  @JsonKey(name: "catalog_version")
  final int? catalogVersion;

  final Map<String, String>? metadata;

  final String? name;

  final String? percentage;

  final OrderLineItemTaxScope? scope;

  final String? type;

  final String? uid;

  OrderLineItemTax(
      {this.percentage,
      this.appliedMoney,
      this.type,
      this.scope,
      this.metadata,
      this.uid,
      this.name,
      this.catalogObjectId,
      this.catalogVersion,
      this.autoApplied});

  factory OrderLineItemTax.fromJson(Map<String, dynamic> json) =>
      _$OrderLineItemTaxFromJson(json);

  Map<String, dynamic> toJson() => _$OrderLineItemTaxToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class OrderFulfillment {
  final Map<String, String>? metadata;

  @JsonKey(name: "pickup_details")
  final OrderFulfillmentPickupDetails? pickupDetails;

  @JsonKey(name: "shipment_details")
  final OrderFulfillmentShipmentDetails? shipmentDetails;

  final String? state;

  final String? type;

  final String? uid;

  OrderFulfillment(
      {this.uid,
      this.metadata,
      this.type,
      this.state,
      this.pickupDetails,
      this.shipmentDetails});

  factory OrderFulfillment.fromJson(Map<String, dynamic> json) =>
      _$OrderFulfillmentFromJson(json);

  Map<String, dynamic> toJson() => _$OrderFulfillmentToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class OrderSource {
  final String? name;

  OrderSource({this.name});

  factory OrderSource.fromJson(Map<String, dynamic> json) =>
      _$OrderSourceFromJson(json);

  Map<String, dynamic> toJson() => _$OrderSourceToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class OrderMoneyAmounts {
  @JsonKey(name: "discount_money")
  final Money? discountMoney;

  @JsonKey(name: "service_charge_money")
  final Money? serviceChargeMoney;

  @JsonKey(name: "tax_money")
  final Money? taxMoney;

  @JsonKey(name: "tip_money")
  final Money? tipMoney;

  @JsonKey(name: "total_money")
  final Money? totalMoney;

  OrderMoneyAmounts(
      {this.totalMoney,
      this.discountMoney,
      this.serviceChargeMoney,
      this.taxMoney,
      this.tipMoney});

  factory OrderMoneyAmounts.fromJson(Map<String, dynamic> json) =>
      _$OrderMoneyAmountsFromJson(json);

  Map<String, dynamic> toJson() => _$OrderMoneyAmountsToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class OrderPricingOptions {
  @JsonKey(name: "auto_apply_discounts")
  final bool? autoApplyDiscounts;

  @JsonKey(name: "auto_apply_taxes")
  final bool? autoApplyTaxes;

  OrderPricingOptions({this.autoApplyDiscounts, this.autoApplyTaxes});

  factory OrderPricingOptions.fromJson(Map<String, dynamic> json) =>
      _$OrderPricingOptionsFromJson(json);

  Map<String, dynamic> toJson() => _$OrderPricingOptionsToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class OrderEntry {
  @JsonKey(name: "location_id")
  final String? locationId;

  @JsonKey(name: "order_id")
  final String? orderId;

  final int? version;

  OrderEntry({this.locationId, this.version, this.orderId});

  factory OrderEntry.fromJson(Map<String, dynamic> json) =>
      _$OrderEntryFromJson(json);

  Map<String, dynamic> toJson() => _$OrderEntryToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class Refund {
  final String? id;

  @JsonKey(name: "amount_money")
  final Money? amountMoney;

  @JsonKey(name: "location_id")
  final String? locationId;

  final String? reason;

  final RefundStatus? status;

  @JsonKey(name: "tender_id")
  final String? tenderId;

  @JsonKey(name: "transaction_id")
  final String? transactionId;

  @JsonKey(name: "created_at")
  final String? createdAt;

  @JsonKey(name: "processing_fee_money")
  final Money? processingFeeMoney;

  @JsonKey(name: "additional_recipients")
  final List<AdditionalRecipient>? additionalRecipients;

  Refund(
      {this.amountMoney,
      this.locationId,
      this.createdAt,
      this.id,
      this.status,
      this.transactionId,
      this.additionalRecipients,
      this.processingFeeMoney,
      this.reason,
      this.tenderId});

  factory Refund.fromJson(Map<String, dynamic> json) => _$RefundFromJson(json);

  Map<String, dynamic> toJson() => _$RefundToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class OrderReturn {
  @JsonKey(name: "return_amounts")
  final OrderMoneyAmounts? returnAmounts;

  @JsonKey(name: "return_discounts")
  final List<OrderReturnDiscount>? returnDiscounts;

  @JsonKey(name: "return_line_items")
  final List<OrderReturnLineItem>? returnLineItems;

  @JsonKey(name: "return_service_charges")
  final List<OrderReturnServiceCharge>? returnServiceCharges;

  @JsonKey(name: "return_taxes")
  final List<OrderReturnTax>? returnTaxes;

  @JsonKey(name: "rounding_adjustment")
  final OrderRoundingAdjustment? roundingAdjustment;

  @JsonKey(name: "source_order_id")
  final String? sourceOrderId;

  final String? uid;

  OrderReturn(
      {this.roundingAdjustment,
      this.returnAmounts,
      this.returnDiscounts,
      this.returnLineItems,
      this.returnServiceCharges,
      this.returnTaxes,
      this.sourceOrderId,
      this.uid});

  factory OrderReturn.fromJson(Map<String, dynamic> json) =>
      _$OrderReturnFromJson(json);

  Map<String, dynamic> toJson() => _$OrderReturnToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class OrderReward {
  final String? id;

  @JsonKey(name: "reward_tier_id")
  final String? rewardTierId;

  OrderReward({this.id, this.rewardTierId});

  factory OrderReward.fromJson(Map<String, dynamic> json) =>
      _$OrderRewardFromJson(json);

  Map<String, dynamic> toJson() => _$OrderRewardToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class OrderRoundingAdjustment {
  @JsonKey(name: "amount_money")
  final Money? amountMoney;

  final String? name;

  final String? uid;

  OrderRoundingAdjustment({this.uid, this.amountMoney, this.name});

  factory OrderRoundingAdjustment.fromJson(Map<String, dynamic> json) =>
      _$OrderRoundingAdjustmentFromJson(json);

  Map<String, dynamic> toJson() => _$OrderRoundingAdjustmentToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class OrderServiceCharge {
  @JsonKey(name: "amount_money")
  final Money? amountMoney;

  @JsonKey(name: "applied_money")
  final String? appliedMoney;

  @JsonKey(name: "applied_taxes")
  final List<OrderLineItemAppliedTax>? appliedTaxes;

  @JsonKey(name: "calculation_phase")
  final String? calculationPhase;

  @JsonKey(name: "catalog_object_id")
  final String? catalogObjectId;

  @JsonKey(name: "catalog_version")
  final int? catalogVersion;

  final Map<String, String>? metadata;

  final String? name;

  final String? percentage;

  final bool? taxable;

  @JsonKey(name: "total_money")
  final Money? totalMoney;

  @JsonKey(name: "total_tax_money")
  final Money? totalTaxMoney;

  final String? type;

  final String? uid;

  OrderServiceCharge(
      {this.name,
      this.amountMoney,
      this.uid,
      this.totalMoney,
      this.type,
      this.metadata,
      this.catalogVersion,
      this.catalogObjectId,
      this.appliedMoney,
      this.percentage,
      this.appliedTaxes,
      this.totalTaxMoney,
      this.taxable,
      this.calculationPhase});

  factory OrderServiceCharge.fromJson(Map<String, dynamic> json) =>
      _$OrderServiceChargeFromJson(json);

  Map<String, dynamic> toJson() => _$OrderServiceChargeToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class Tender {
  final String? id;

  final String? type;

  @JsonKey(name: "amount_money")
  final Money? amountMoney;

  @JsonKey(name: "card_details")
  final TenderCardDetails? cardDetails;

  @JsonKey(name: "cash_details")
  final TenderCardDetails? cashDetails;

  @JsonKey(name: "created_at")
  final String? createdAt;

  @JsonKey(name: "customer_id")
  final String? customerId;

  @JsonKey(name: "location_id")
  final String? locationId;

  final String? note;

  @JsonKey(name: "payment_id")
  final String? paymentId;

  @JsonKey(name: "processing_fee_money")
  final Money? processingFeeMoney;

  @JsonKey(name: "tip_money")
  final Money? tipMoney;

  @JsonKey(name: "transaction_id")
  final String? transactionId;

  @JsonKey(name: "additional_recipients")
  final List<AdditionalRecipient>? additionalRecipients;

  Tender(
      {this.type,
      this.amountMoney,
      this.id,
      this.processingFeeMoney,
      this.additionalRecipients,
      this.transactionId,
      this.createdAt,
      this.locationId,
      this.tipMoney,
      this.note,
      this.customerId,
      this.paymentId,
      this.cardDetails,
      this.cashDetails});

  factory Tender.fromJson(Map<String, dynamic> json) => _$TenderFromJson(json);

  Map<String, dynamic> toJson() => _$TenderToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class Money {
  final int? amount;
  final String? currency;

  Money({this.amount, this.currency});

  factory Money.fromJson(Map<String, dynamic> json) => _$MoneyFromJson(json);

  Map<String, dynamic> toJson() => _$MoneyToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class OrderLineItemAppliedDiscount {
  @JsonKey(name: "discount_uid")
  final String? discountUid;

  @JsonKey(name: "applied_money")
  final Money? appliedMoney;

  final String? uid;

  OrderLineItemAppliedDiscount({this.appliedMoney, this.uid, this.discountUid});

  factory OrderLineItemAppliedDiscount.fromJson(Map<String, dynamic> json) =>
      _$OrderLineItemAppliedDiscountFromJson(json);

  Map<String, dynamic> toJson() => _$OrderLineItemAppliedDiscountToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class OrderLineItemAppliedTax {
  @JsonKey(name: "tax_uid")
  final String? taxUid;

  @JsonKey(name: "applied_money")
  final Money? appliedMoney;

  final String? uid;

  OrderLineItemAppliedTax({this.uid, this.appliedMoney, this.taxUid});

  factory OrderLineItemAppliedTax.fromJson(Map<String, dynamic> json) =>
      _$OrderLineItemAppliedTaxFromJson(json);

  Map<String, dynamic> toJson() => _$OrderLineItemAppliedTaxToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class OrderLineItemPricingBlocklists {
  @JsonKey(name: "blocked_discounts")
  final List<OrderLineItemPricingBlocklistsBlockedDiscount>? blockedDiscounts;

  @JsonKey(name: "blocked_taxes")
  final List<OrderLineItemPricingBlocklistsBlockedTax>? blockedTaxes;

  OrderLineItemPricingBlocklists({this.blockedDiscounts, this.blockedTaxes});

  factory OrderLineItemPricingBlocklists.fromJson(Map<String, dynamic> json) =>
      _$OrderLineItemPricingBlocklistsFromJson(json);

  Map<String, dynamic> toJson() => _$OrderLineItemPricingBlocklistsToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class OrderLineItemPricingBlocklistsBlockedDiscount {
  @JsonKey(name: "discount_catalog_object_id")
  final String? discountCatalogObjectId;

  @JsonKey(name: "discount_uid")
  final String? discountUid;

  final String? uid;

  OrderLineItemPricingBlocklistsBlockedDiscount(
      {this.uid, this.discountUid, this.discountCatalogObjectId});

  factory OrderLineItemPricingBlocklistsBlockedDiscount.fromJson(
          Map<String, dynamic> json) =>
      _$OrderLineItemPricingBlocklistsBlockedDiscountFromJson(json);

  Map<String, dynamic> toJson() =>
      _$OrderLineItemPricingBlocklistsBlockedDiscountToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class OrderLineItemPricingBlocklistsBlockedTax {
  @JsonKey(name: "tax_catalog_object_id")
  final String? taxCatalogObjectId;

  @JsonKey(name: "tax_uid")
  final String? taxUid;

  final String? uid;

  OrderLineItemPricingBlocklistsBlockedTax(
      {this.uid, this.taxUid, this.taxCatalogObjectId});

  factory OrderLineItemPricingBlocklistsBlockedTax.fromJson(
          Map<String, dynamic> json) =>
      _$OrderLineItemPricingBlocklistsBlockedTaxFromJson(json);

  Map<String, dynamic> toJson() =>
      _$OrderLineItemPricingBlocklistsBlockedTaxToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class OrderQuantityUnit {
  @JsonKey(name: "catalog_object_id")
  final String? catalogObjectId;

  @JsonKey(name: "catalog_version")
  final int? catalogVersion;

  @JsonKey(name: "measurement_unit")
  final MeasurementUnit? measurementUnit;

  final int? precision;

  OrderQuantityUnit(
      {this.catalogObjectId,
      this.catalogVersion,
      this.measurementUnit,
      this.precision});

  factory OrderQuantityUnit.fromJson(Map<String, dynamic> json) =>
      _$OrderQuantityUnitFromJson(json);

  Map<String, dynamic> toJson() => _$OrderQuantityUnitToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class MeasurementUnit {
  @JsonKey(name: "area_unit")
  final MeasurementUnitArea? areaUnit;

  @JsonKey(name: "custom_unit")
  final MeasurementUnitCustom? customUnit;

  @JsonKey(name: "generic_unit")
  final MeasurementUnitGeneric? genericUnit;

  @JsonKey(name: "length_unit")
  final MeasurementUnitLength? lengthUnit;

  @JsonKey(name: "time_unit")
  final MeasurementUnitTime? timeUnit;

  final MeasurementUnitUnitType? type;

  @JsonKey(name: "volume_unit")
  final MeasurementUnitVolume? volumeUnit;

  @JsonKey(name: "weight_unit")
  final MeasurementUnitWeight? weightUnit;

  MeasurementUnit(
      {this.type,
      this.areaUnit,
      this.customUnit,
      this.genericUnit,
      this.lengthUnit,
      this.timeUnit,
      this.volumeUnit,
      this.weightUnit});

  factory MeasurementUnit.fromJson(Map<String, dynamic> json) =>
      _$MeasurementUnitFromJson(json);

  Map<String, dynamic> toJson() => _$MeasurementUnitToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class MeasurementUnitCustom {
  final String? abbreviation;

  final String? name;

  MeasurementUnitCustom({this.name, this.abbreviation});

  factory MeasurementUnitCustom.fromJson(Map<String, dynamic> json) =>
      _$MeasurementUnitCustomFromJson(json);

  Map<String, dynamic> toJson() => _$MeasurementUnitCustomToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class OrderFulfillmentPickupDetails {
  @JsonKey(name: "accepted_at")
  final String? acceptedAt;

  @JsonKey(name: "auto_complete_duration")
  final String? autoCompleteDuration;

  @JsonKey(name: "cancel_reason")
  final String? cancelReason;

  @JsonKey(name: "canceled_at")
  final String? canceledAt;

  @JsonKey(name: "curbside_pickup_details")
  final OrderFulfillmentPickupDetailsCurbsidePickupDetails?
      curbsidePickupDetails;

  @JsonKey(name: "expired_at")
  final String? expiredAt;

  @JsonKey(name: "expires_at")
  final String? expiresAt;

  @JsonKey(name: "is_curbside_pickup")
  final bool? isCurbsidePickup;

  final String? note;

  @JsonKey(name: "picked_up_at")
  final String? pickedUpAt;

  @JsonKey(name: "pickup_at")
  final String? pickupAt;

  @JsonKey(name: "pickup_window_duration")
  final String? pickupWindowDuration;

  @JsonKey(name: "placed_at")
  final String? placedAt;

  @JsonKey(name: "prep_time_duration")
  final String? prepTimeDuration;

  @JsonKey(name: "ready_at")
  final String? readyAt;

  final OrderFulfillmentRecipient? recipient;

  @JsonKey(name: "rejected_at")
  final String? rejectedAt;

  @JsonKey(name: "schedule_type")
  final OrderFulfillmentPickupDetailsScheduleType? scheduleType;

  OrderFulfillmentPickupDetails(
      {this.note,
      this.acceptedAt,
      this.autoCompleteDuration,
      this.canceledAt,
      this.cancelReason,
      this.curbsidePickupDetails,
      this.expiredAt,
      this.expiresAt,
      this.isCurbsidePickup,
      this.pickedUpAt,
      this.pickupAt,
      this.pickupWindowDuration,
      this.placedAt,
      this.prepTimeDuration,
      this.readyAt,
      this.recipient,
      this.rejectedAt,
      this.scheduleType});

  factory OrderFulfillmentPickupDetails.fromJson(Map<String, dynamic> json) =>
      _$OrderFulfillmentPickupDetailsFromJson(json);

  Map<String, dynamic> toJson() => _$OrderFulfillmentPickupDetailsToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class OrderFulfillmentRecipient {
  final Address? address;

  @JsonKey(name: "customer_id")
  final String? customerId;

  @JsonKey(name: "display_name")
  final String? displayName;

  @JsonKey(name: "email_address")
  final String? emailAddress;

  @JsonKey(name: "phone_number")
  final String? phoneNumber;

  OrderFulfillmentRecipient(
      {this.customerId,
      this.phoneNumber,
      this.address,
      this.displayName,
      this.emailAddress});

  factory OrderFulfillmentRecipient.fromJson(Map<String, dynamic> json) =>
      _$OrderFulfillmentRecipientFromJson(json);

  Map<String, dynamic> toJson() => _$OrderFulfillmentRecipientToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class Address {
  @JsonKey(name: "address_line_1")
  final String? addressLine1;

  @JsonKey(name: "address_line_2")
  final String? addressLine2;

  @JsonKey(name: "address_line_3")
  final String? addressLine3;

  @JsonKey(name: "administrative_district_level_1")
  final String? administrativeDistrictLevel1;

  final String? country;

  final String? locality;

  @JsonKey(name: "postal_code")
  final String? postalCode;

  final String? sublocality;

  Address(
      {this.country,
      this.postalCode,
      this.addressLine1,
      this.addressLine2,
      this.addressLine3,
      this.administrativeDistrictLevel1,
      this.locality,
      this.sublocality});

  factory Address.fromJson(Map<String, dynamic> json) =>
      _$AddressFromJson(json);

  Map<String, dynamic> toJson() => _$AddressToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class OrderFulfillmentPickupDetailsCurbsidePickupDetails {
  @JsonKey(name: "buyer_arrived_at")
  final String? buyerArrivedAt;

  @JsonKey(name: "curbside_details")
  final String? curbsideDetails;

  OrderFulfillmentPickupDetailsCurbsidePickupDetails(
      {this.buyerArrivedAt, this.curbsideDetails});

  factory OrderFulfillmentPickupDetailsCurbsidePickupDetails.fromJson(
          Map<String, dynamic> json) =>
      _$OrderFulfillmentPickupDetailsCurbsidePickupDetailsFromJson(json);

  Map<String, dynamic> toJson() =>
      _$OrderFulfillmentPickupDetailsCurbsidePickupDetailsToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class OrderFulfillmentShipmentDetails {
  @JsonKey(name: "cancel_reason")
  final String? cancelReason;

  @JsonKey(name: "canceled_at")
  final String? canceledAt;

  final String? carrier;

  @JsonKey(name: "expected_shipped_at")
  final String? expectedShippedAt;

  @JsonKey(name: "failed_at")
  final String? failedAt;

  @JsonKey(name: "failure_reason")
  final String? failureReason;

  @JsonKey(name: "in_progress_at")
  final String? inProgressAt;

  @JsonKey(name: "packaged_at")
  final String? packagedAt;

  @JsonKey(name: "placed_at")
  final String? placedAt;

  final OrderFulfillmentRecipient? recipient;

  @JsonKey(name: "shipped_at")
  final String? shippedAt;

  @JsonKey(name: "shipping_note")
  final String? shippingNote;

  @JsonKey(name: "shipping_type")
  final String? shippingType;

  @JsonKey(name: "tracking_number")
  final String? trackingNumber;

  @JsonKey(name: "tracking_url")
  final String? trackingUrl;

  OrderFulfillmentShipmentDetails(
      {this.recipient,
      this.placedAt,
      this.cancelReason,
      this.canceledAt,
      this.carrier,
      this.expectedShippedAt,
      this.failedAt,
      this.failureReason,
      this.inProgressAt,
      this.packagedAt,
      this.shippedAt,
      this.shippingNote,
      this.shippingType,
      this.trackingNumber,
      this.trackingUrl});

  factory OrderFulfillmentShipmentDetails.fromJson(Map<String, dynamic> json) =>
      _$OrderFulfillmentShipmentDetailsFromJson(json);

  Map<String, dynamic> toJson() =>
      _$OrderFulfillmentShipmentDetailsToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class AdditionalRecipient {
  @JsonKey(name: "amount_money")
  final Money? amountMoney;

  @JsonKey(name: "location_id")
  final String? locationId;

  final String? description;

  @JsonKey(name: "receivable_id")
  final String? receivableId;

  AdditionalRecipient(
      {this.locationId, this.amountMoney, this.description, this.receivableId});

  factory AdditionalRecipient.fromJson(Map<String, dynamic> json) =>
      _$AdditionalRecipientFromJson(json);

  Map<String, dynamic> toJson() => _$AdditionalRecipientToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class OrderReturnDiscount {
  @JsonKey(name: "amount_money")
  final Money? amountMoney;

  @JsonKey(name: "applied_money")
  final Money? appliedMoney;

  @JsonKey(name: "catalog_object_id")
  final String? catalogObjectId;

  @JsonKey(name: "catalog_version")
  final int? catalogVersion;

  final String? name;

  final String? percentage;

  final OrderLineItemDiscountScope? scope;

  @JsonKey(name: "source_discount_uid")
  final String? sourceDiscountUid;

  final OrderLineItemDiscountType? type;

  final String? uid;

  OrderReturnDiscount(
      {this.amountMoney,
      this.name,
      this.type,
      this.catalogVersion,
      this.catalogObjectId,
      this.uid,
      this.appliedMoney,
      this.percentage,
      this.scope,
      this.sourceDiscountUid});

  factory OrderReturnDiscount.fromJson(Map<String, dynamic> json) =>
      _$OrderReturnDiscountFromJson(json);

  Map<String, dynamic> toJson() => _$OrderReturnDiscountToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class OrderReturnLineItem {
  final String? quantity;

  @JsonKey(name: "applied_discounts")
  final List<OrderLineItemAppliedDiscount>? appliedDiscounts;

  @JsonKey(name: "applied_taxes")
  final List<OrderLineItemAppliedTax>? appliedTaxes;

  @JsonKey(name: "base_price_money")
  final Money? basePriceMoney;

  @JsonKey(name: "catalog_object_id")
  final String? catalogObjectId;

  @JsonKey(name: "catalog_version")
  final int? catalogVersion;

  @JsonKey(name: "gross_return_money")
  final Money? grossReturnMoney;

  @JsonKey(name: "item_type")
  final OrderLineItemItemType? itemType;

  final String? name;

  final String? note;

  @JsonKey(name: "quantity_unit")
  final OrderQuantityUnit? quantityUnit;

  @JsonKey(name: "return_modifiers")
  final List<OrderLineItemModifier>? returnModifiers;

  @JsonKey(name: "source_line_item_uid")
  final String? sourceLineItemUid;

  @JsonKey(name: "total_discount_money")
  final Money? totalDiscountMoney;

  @JsonKey(name: "total_money")
  final Money? totalMoney;

  @JsonKey(name: "total_tax_money")
  final Money? totalTaxMoney;

  final String? uid;

  @JsonKey(name: "variation_name")
  final String? variationName;

  @JsonKey(name: "variation_total_price_money")
  final Money? variationTotalPriceMoney;

  OrderReturnLineItem(
      {this.uid,
      this.catalogObjectId,
      this.catalogVersion,
      this.name,
      this.note,
      this.totalTaxMoney,
      this.appliedTaxes,
      this.totalMoney,
      this.variationTotalPriceMoney,
      this.variationName,
      this.quantityUnit,
      this.itemType,
      this.basePriceMoney,
      this.appliedDiscounts,
      this.quantity,
      this.totalDiscountMoney,
      this.grossReturnMoney,
      this.returnModifiers,
      this.sourceLineItemUid});

  factory OrderReturnLineItem.fromJson(Map<String, dynamic> json) =>
      _$OrderReturnLineItemFromJson(json);

  Map<String, dynamic> toJson() => _$OrderReturnLineItemToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class OrderReturnServiceCharge {
  @JsonKey(name: "amount_money")
  final Money? amountMoney;

  @JsonKey(name: "applied_money")
  final Money? appliedMoney;

  @JsonKey(name: "applied_taxes")
  final Money? appliedTaxes;

  @JsonKey(name: "calculation_phase")
  final String? calculationPhase;

  @JsonKey(name: "catalog_object_id")
  final String? catalogObjectId;

  @JsonKey(name: "catalog_version")
  final int? catalogVersion;

  final String? name;

  final String? percentage;

  @JsonKey(name: "source_service_charge_uid")
  final String? sourceServiceChargeUid;

  final bool? taxable;

  @JsonKey(name: "total_money")
  final Money? totalMoney;

  @JsonKey(name: "total_tax_money")
  final Money? totalTaxMoney;

  final String? uid;

  OrderReturnServiceCharge(
      {this.totalMoney,
      this.appliedTaxes,
      this.totalTaxMoney,
      this.name,
      this.catalogVersion,
      this.catalogObjectId,
      this.uid,
      this.percentage,
      this.appliedMoney,
      this.amountMoney,
      this.calculationPhase,
      this.taxable,
      this.sourceServiceChargeUid});

  factory OrderReturnServiceCharge.fromJson(Map<String, dynamic> json) =>
      _$OrderReturnServiceChargeFromJson(json);

  Map<String, dynamic> toJson() => _$OrderReturnServiceChargeToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class OrderReturnTax {
  @JsonKey(name: "applied_money")
  final Money? appliedMoney;

  @JsonKey(name: "catalog_object_id")
  final String? catalogObjectId;

  @JsonKey(name: "catalog_version")
  final int? catalogVersion;

  final String? name;

  final String? percentage;

  final OrderLineItemTaxScope? scope;

  @JsonKey(name: "source_tax_uid")
  final String? sourceTaxUid;

  final OrderLineItemTaxType? type;

  final String? uid;

  OrderReturnTax(
      {this.appliedMoney,
      this.percentage,
      this.uid,
      this.catalogObjectId,
      this.catalogVersion,
      this.name,
      this.scope,
      this.type,
      this.sourceTaxUid});

  factory OrderReturnTax.fromJson(Map<String, dynamic> json) =>
      _$OrderReturnTaxFromJson(json);

  Map<String, dynamic> toJson() => _$OrderReturnTaxToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class TenderCardDetails {
  final Card? card;

  @JsonKey(name: "entry_method")
  final TenderCardDetailsEntryMethod? entryMethod;

  final TenderCardDetailsStatus? status;

  TenderCardDetails({this.status, this.card, this.entryMethod});

  factory TenderCardDetails.fromJson(Map<String, dynamic> json) =>
      _$TenderCardDetailsFromJson(json);

  Map<String, dynamic> toJson() => _$TenderCardDetailsToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class Card {
  final String? id;

  @JsonKey(name: "billing_address")
  final Address? billingAddress;

  final String? bin;

  @JsonKey(name: "card_brand")
  final CardBrand? cardBrand;

  @JsonKey(name: "card_type")
  final CardType? cardType;

  @JsonKey(name: "cardholder_name")
  final String? cardholderName;

  @JsonKey(name: "customer_id")
  final String? customerId;

  final bool? enabled;

  @JsonKey(name: "exp_month")
  final int? expMonth;

  @JsonKey(name: "exp_year")
  final int? expYear;

  final String? fingerprint;

  @JsonKey(name: "last_4")
  final String? last4;

  @JsonKey(name: "merchant_id")
  final String? merchantId;

  @JsonKey(name: "prepaid_type")
  final CardPrepaidType? prepaidType;

  @JsonKey(name: "reference_id")
  final String? referenceId;

  final int? version;

  Card(
      {this.customerId,
      this.id,
      this.version,
      this.referenceId,
      this.merchantId,
      this.expYear,
      this.expMonth,
      this.cardType,
      this.billingAddress,
      this.bin,
      this.cardBrand,
      this.cardholderName,
      this.enabled,
      this.fingerprint,
      this.last4,
      this.prepaidType});

  factory Card.fromJson(Map<String, dynamic> json) => _$CardFromJson(json);

  Map<String, dynamic> toJson() => _$CardToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class Subscription {
  final String? id;

  final List<SubscriptionAction>? actions;

  @JsonKey(name: "canceled_date")
  final String? canceledDate;

  @JsonKey(name: "cardId")
  final String? cardId;

  @JsonKey(name: "charged_through_date")
  final String? chargedThroughDate;

  @JsonKey(name: "created_at")
  final String? createdAt;

  @JsonKey(name: "customer_id")
  final String? customerId;

  @JsonKey(name: "invoice_ids")
  final List<String>? invoiceIds;

  @JsonKey(name: "location_id")
  final String? locationId;

  @JsonKey(name: "plan_id")
  final String? planId;

  @JsonKey(name: "price_override_money")
  final Money? priceOverrideMoney;

  final SubscriptionSource? source;

  @JsonKey(name: "start_date")
  final String? startDate;

  final SubscriptionStatus? status;

  @JsonKey(name: "tax_percentage")
  final String? taxPercentage;

  final String? timezone;

  final int? version;

  Subscription(
      {this.version,
      this.id,
      this.customerId,
      this.status,
      this.locationId,
      this.createdAt,
      this.source,
      this.cardId,
      this.actions,
      this.canceledDate,
      this.chargedThroughDate,
      this.invoiceIds,
      this.planId,
      this.priceOverrideMoney,
      this.startDate,
      this.taxPercentage,
      this.timezone});

  factory Subscription.fromJson(Map<String, dynamic> json) =>
      _$SubscriptionFromJson(json);

  Map<String, dynamic> toJson() => _$SubscriptionToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class SubscriptionAction {
  final String? id;

  @JsonKey(name: "effective_date")
  final String? effectiveDate;

  @JsonKey(name: "new_plan_id")
  final String? newPlanId;

  final SubscriptionActionType? type;

  SubscriptionAction({this.id, this.type, this.effectiveDate, this.newPlanId});

  factory SubscriptionAction.fromJson(Map<String, dynamic> json) =>
      _$SubscriptionActionFromJson(json);

  Map<String, dynamic> toJson() => _$SubscriptionActionToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class SubscriptionSource {
  final String? name;

  SubscriptionSource({this.name});

  factory SubscriptionSource.fromJson(Map<String, dynamic> json) =>
      _$SubscriptionSourceFromJson(json);

  Map<String, dynamic> toJson() => _$SubscriptionSourceToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}


@JsonSerializable(includeIfNull: false)
class SquareError {
  final String? category;
  final SquareErrorCode? code;
  final String? detail;
  final String? field;

  SquareError({this.category, this.code, this.detail, this.field});

  factory SquareError.fromJson(Map<String, dynamic> json) =>
      _$SquareErrorFromJson(json);

  Map<String, dynamic> toJson() => _$SquareErrorToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class SearchSubscriptionsQuery {
  final SearchSubscriptionsFilter? filter;

  SearchSubscriptionsQuery({this.filter});

  factory SearchSubscriptionsQuery.fromJson(Map<String, dynamic> json) =>
      _$SearchSubscriptionsQueryFromJson(json);

  Map<String, dynamic> toJson() => _$SearchSubscriptionsQueryToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class SearchSubscriptionsFilter {
  @JsonKey(name: "customer_ids")
  final List<String>? customerIds;

  @JsonKey(name: "location_ids")
  final List<String>? locationIds;

  @JsonKey(name: "source_names")
  final List<String>? sourceNames;

  SearchSubscriptionsFilter(
      {this.customerIds, this.locationIds, this.sourceNames});

  factory SearchSubscriptionsFilter.fromJson(Map<String, dynamic> json) =>
      _$SearchSubscriptionsFilterFromJson(json);

  Map<String, dynamic> toJson() => _$SearchSubscriptionsFilterToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: true)
class SubscriptionEvent {
  final String? id;

  @JsonKey(name: "effective_date")
  final String? effectiveDate;

  @JsonKey(name: "plan_id")
  final String? planId;

  @JsonKey(name: "subscription_event_type")
  final SubscriptionEventSubscriptionEventType? subscriptionEventType;

  final SubscriptionEventInfo? info;

  SubscriptionEvent(
      {this.effectiveDate,
      this.id,
      this.planId,
      this.info,
      this.subscriptionEventType});

  factory SubscriptionEvent.fromJson(Map<String, dynamic> json) =>
      _$SubscriptionEventFromJson(json);

  Map<String, dynamic> toJson() => _$SubscriptionEventToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class SubscriptionEventInfo {
  final String? code;
  final String? detail;

  SubscriptionEventInfo({this.detail, this.code});

  factory SubscriptionEventInfo.fromJson(Map<String, dynamic> json) =>
      _$SubscriptionEventInfoFromJson(json);

  Map<String, dynamic> toJson() => _$SubscriptionEventInfoToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class Invoice {
  final String? id;

  @JsonKey(name: "accepted_payment_methods")
  final InvoiceAcceptedPaymentMethods? acceptedPaymentMethods;

  @JsonKey(name: "created_at")
  final String? createdAt;

  @JsonKey(name: "custom_fields")
  final List<InvoiceCustomField>? customFields;

  @JsonKey(name: "delivery_method")
  final String? deliveryMethod;

  final String? description;

  @JsonKey(name: "invoice_number")
  final String? invoiceNumber;

  @JsonKey(name: "location_id")
  final String? locationId;

  @JsonKey(name: "next_payment_amount_money")
  final Money? nextPaymentAmountMoney;

  @JsonKey(name: "order_id")
  final String? orderId;

  @JsonKey(name: "payment_conditions")
  final String? paymentConditions;

  @JsonKey(name: "payment_requests")
  final List<InvoicePaymentRequest>? paymentRequests;

  @JsonKey(name: "primary_recipient")
  final InvoiceRecipient? primaryRecipient;

  @JsonKey(name: "public_url")
  final String? publicUrl;

  @JsonKey(name: "sale_or_service_date")
  final String? saleOrServiceDate;

  @JsonKey(name: "scheduled_at")
  final String? scheduledAt;

  final InvoiceStatus? status;

  @JsonKey(name: "subscription_id")
  final String? subscriptionId;

  final String? timezone;

  final String? title;

  @JsonKey(name: "updated_at")
  final String? updatedAt;

  final int? version;

  Invoice(
      {this.orderId,
      this.version,
      this.locationId,
      this.id,
      this.timezone,
      this.createdAt,
      this.status,
      this.description,
      this.updatedAt,
      this.title,
      this.acceptedPaymentMethods,
      this.customFields,
      this.deliveryMethod,
      this.invoiceNumber,
      this.nextPaymentAmountMoney,
      this.paymentConditions,
      this.paymentRequests,
      this.primaryRecipient,
      this.publicUrl,
      this.saleOrServiceDate,
      this.scheduledAt,
      this.subscriptionId});

  factory Invoice.fromJson(Map<String, dynamic> json) =>
      _$InvoiceFromJson(json);

  Map<String, dynamic> toJson() => _$InvoiceToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class InvoiceRecipient {
  final Address? address;

  @JsonKey(name: "company_name")
  final String? companyName;

  @JsonKey(name: "customer_id")
  final String? customerId;

  @JsonKey(name: "email_address")
  final String? emailAddress;

  @JsonKey(name: "family_name")
  final String? familyName;

  @JsonKey(name: "given_name")
  final String? givenName;

  @JsonKey(name: "phone_number")
  final String? phoneNumber;

  @JsonKey(name: "tax_ids")
  final InvoiceRecipientTaxIds? taxIds;

  InvoiceRecipient(
      {this.customerId,
      this.emailAddress,
      this.address,
      this.phoneNumber,
      this.companyName,
      this.givenName,
      this.familyName,
      this.taxIds});

  factory InvoiceRecipient.fromJson(Map<String, dynamic> json) =>
      _$InvoiceRecipientFromJson(json);

  Map<String, dynamic> toJson() => _$InvoiceRecipientToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class InvoiceRecipientTaxIds {
  @JsonKey(name: "eu_vat")
  final String? euVat;

  InvoiceRecipientTaxIds({this.euVat});

  factory InvoiceRecipientTaxIds.fromJson(Map<String, dynamic> json) =>
      _$InvoiceRecipientTaxIdsFromJson(json);

  Map<String, dynamic> toJson() => _$InvoiceRecipientTaxIdsToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class InvoicePaymentRequest {
  @JsonKey(name: "automatic_payment_source")
  final InvoiceAutomaticPaymentSource? automaticPaymentSource;

  @JsonKey(name: "card_id")
  final String? cardId;

  @JsonKey(name: "computed_amount_money")
  final Money? computedAmountMoney;

  @JsonKey(name: "due_date")
  final String? dueDate;

  @JsonKey(name: "fixed_amount_requested_money")
  final Money? fixedAmountRequestedMoney;

  @JsonKey(name: "percentage_requested")
  final String? percentageRequested;

  final List<InvoicePaymentReminder>? reminders;

  @JsonKey(name: "request_type")
  final InvoiceRequestType? requestType;

  @JsonKey(name: "rounding_adjustment_included_money")
  final Money? roundingAdjustmentIncludedMoney;

  @JsonKey(name: "tipping_enabled")
  final bool? tippingEnabled;

  @JsonKey(name: "total_completed_amount_money")
  final Money? totalCompletedAmountMoney;

  final String? uid;

  @JsonKey(name: "request_method")
  final InvoiceRequestMethod? requestMethod;

  InvoicePaymentRequest(
      {this.cardId,
      this.uid,
      this.dueDate,
      this.automaticPaymentSource,
      this.computedAmountMoney,
      this.fixedAmountRequestedMoney,
      this.percentageRequested,
      this.reminders,
      this.requestMethod,
      this.requestType,
      this.roundingAdjustmentIncludedMoney,
      this.tippingEnabled,
      this.totalCompletedAmountMoney});

  factory InvoicePaymentRequest.fromJson(Map<String, dynamic> json) =>
      _$InvoicePaymentRequestFromJson(json);

  Map<String, dynamic> toJson() => _$InvoicePaymentRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class InvoicePaymentReminder {
  final String? message;

  @JsonKey(name: "relative_scheduled_days")
  final int? relativeScheduledDays;

  @JsonKey(name: "sent_at")
  final String? sentAt;

  final InvoicePaymentReminderStatus? status;

  final String? uid;

  InvoicePaymentReminder(
      {this.uid,
      this.status,
      this.message,
      this.relativeScheduledDays,
      this.sentAt});

  factory InvoicePaymentReminder.fromJson(Map<String, dynamic> json) =>
      _$InvoicePaymentReminderFromJson(json);

  Map<String, dynamic> toJson() => _$InvoicePaymentReminderToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class InvoiceCustomField {
  final String? label;

  final InvoiceCustomFieldPlacement? placement;

  final String? value;

  InvoiceCustomField({
    this.value, this.label, this.placement
      });

  factory InvoiceCustomField.fromJson(Map<String, dynamic> json) =>
      _$InvoiceCustomFieldFromJson(json);

  Map<String, dynamic> toJson() => _$InvoiceCustomFieldToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class InvoiceAcceptedPaymentMethods {

  @JsonKey(name: "bank_account")
  final bool? bankAccount;

  final bool? card;

  @JsonKey(name: "square_gift_card")
  final bool? squareGiftCard;

  InvoiceAcceptedPaymentMethods({
    this.card, this.bankAccount, this.squareGiftCard
  });

  factory InvoiceAcceptedPaymentMethods.fromJson(Map<String, dynamic> json) =>
      _$InvoiceAcceptedPaymentMethodsFromJson(json);

  Map<String, dynamic> toJson() => _$InvoiceAcceptedPaymentMethodsToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class InvoiceQuery{

  final InvoiceFilter? filter;

  final InvoiceSort? sort;

  InvoiceQuery({
  this.filter, this.sort
  });

  factory InvoiceQuery.fromJson(Map<String, dynamic> json) =>
      _$InvoiceQueryFromJson(json);

  Map<String, dynamic> toJson() => _$InvoiceQueryToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

@JsonSerializable(includeIfNull: false)
class InvoiceFilter {

  @JsonKey(name: "location_ids")
  final List<String>? locationIds;

  @JsonKey(name: "customer_ids")
  final List<String>? customerIds;

  InvoiceFilter({
  this.locationIds, this.customerIds
  });

  factory InvoiceFilter.fromJson(Map<String, dynamic> json) =>
      _$InvoiceFilterFromJson(json);

  Map<String, dynamic> toJson() => _$InvoiceFilterToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class InvoiceSort {

  final InvoiceSortField? field;

  final SortOrder? order;

  InvoiceSort({
    this.field, this.order
  });

  factory InvoiceSort.fromJson(Map<String, dynamic> json) =>
      _$InvoiceSortFromJson(json);

  Map<String, dynamic> toJson() => _$InvoiceSortToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class CatalogObject {
  final String? id;

  final CatalogObjectType? type;

  @JsonKey(name: "absent_at_location_ids")
  final List<String>? absentAtLocationIds;

  @JsonKey(name: "catalog_v1_ids")
  final List<CatalogV1Id>? catalogV1Ids;

  @JsonKey(name: "category_data")
  final CatalogCategory? categoryData;

  @JsonKey(name: "custom_attribute_definition_data")
  final CatalogCustomAttributeDefinition? customAttributeDefinitionData;

  @JsonKey(name: "custom_attribute_values")
  final Map<String, CatalogCustomAttributeValue>? customAttributeValues;

  @JsonKey(name: "discount_data")
  final CatalogDiscount? discountData;

  @JsonKey(name: "image_data")
  final CatalogImage? imageData;

  @JsonKey(name: "is_deleted")
  final bool? isDeleted;

  @JsonKey(name: "item_data")
  final CatalogItem? itemData;

  @JsonKey(name: "item_option_data")
  final CatalogItemOption? itemOptionData;

  @JsonKey(name: "item_option_value_data")
  final CatalogItemOptionValue? itemOptionValueData;

  @JsonKey(name: "item_variation_data")
  final CatalogItemVariation? itemVariationData;

  @JsonKey(name:"measurement_unit_data")
  final CatalogMeasurementUnit? measurementUnitData;

  @JsonKey(name: "modifier_data")
  final CatalogModifier? modifierData;

  @JsonKey(name: "modifier_list_data")
  final CatalogModifierList? modifierListData;

  @JsonKey(name: "present_at_all_locations")
  final bool? presentAtAllLocations;

  @JsonKey(name: "present_at_location_ids")
  final List<String>? presentAtLocationIds;

  @JsonKey(name: "pricing_rule_data")
  final CatalogPricingRule? pricingRuleData;

  @JsonKey(name: "product_set_data")
  final CatalogProductSet? productSetData;

  @JsonKey(name: "quick_amounts_settings_data")
  final CatalogQuickAmountsSettings? quickAmountsSettingsData;

  @JsonKey(name: "subscription_plan_data")
  final CatalogSubscriptionPlan? subscriptionPlanData;

  @JsonKey(name: "tax_data")
  final CatalogTax? taxData;

  @JsonKey(name: "time_period_data")
  final CatalogTimePeriod? timePeriodData;

  @JsonKey(name: "updated_at")
  final String? updatedAt;

  final int? version;

  CatalogObject({
    this.updatedAt, this.id, this.version, this.type, this.absentAtLocationIds,
    this.catalogV1Ids, this.categoryData, this.customAttributeDefinitionData,
    this.customAttributeValues, this.discountData, this.imageData,
    this.isDeleted, this.itemData, this.itemOptionData, this.itemOptionValueData,
    this.itemVariationData, this.measurementUnitData, this.modifierData,
    this.modifierListData, this.presentAtAllLocations, this.presentAtLocationIds,
    this.pricingRuleData, this.productSetData, this.quickAmountsSettingsData,
    this.subscriptionPlanData, this.taxData, this.timePeriodData
  });

  factory CatalogObject.fromJson(Map<String, dynamic> json) =>
      _$CatalogObjectFromJson(json);

  Map<String, dynamic> toJson() => _$CatalogObjectToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}


@JsonSerializable(includeIfNull: false)
class CatalogTimePeriod {

  final String? event;

  CatalogTimePeriod({
    this.event
  });

  factory CatalogTimePeriod.fromJson(Map<String, dynamic> json) =>
      _$CatalogTimePeriodFromJson(json);

  Map<String, dynamic> toJson() => _$CatalogTimePeriodToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class CatalogTax{

  @JsonKey(name: "applies_to_custom_amounts")
  final String? appliesToCustomAmounts;

  @JsonKey(name: "calculation_phase")
  final TaxCalculationPhase? calculationPhase;

  final bool? enabled;

  @JsonKey(name: "inclusion_type")
  final TaxInclusionType? inclusionType;

  final String? name;

  final String? percentage;

  CatalogTax({
    this.name, this.enabled, this.percentage, this.calculationPhase,
    this.appliesToCustomAmounts, this.inclusionType
  });

  factory CatalogTax.fromJson(Map<String, dynamic> json) =>
      _$CatalogTaxFromJson(json);

  Map<String, dynamic> toJson() => _$CatalogTaxToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class CatalogSubscriptionPlan {

  final String? name;

  final List<SubscriptionPhase>? phases;

  CatalogSubscriptionPlan({
    this.name, this.phases
  });

  factory CatalogSubscriptionPlan.fromJson(Map<String, dynamic> json) =>
      _$CatalogSubscriptionPlanFromJson(json);

  Map<String, dynamic> toJson() => _$CatalogSubscriptionPlanToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class SubscriptionPhase {

  final SubscriptionCadence? cadence;

  @JsonKey(name: "recurring_price_money")
  final Money? recurringPriceMoney;

  final int? ordinal;

  final int? periods;

  final String? uid;

  SubscriptionPhase({
    this.uid, this.cadence, this.ordinal, this.periods, this.recurringPriceMoney
  });

  factory SubscriptionPhase.fromJson(Map<String, dynamic> json) =>
      _$SubscriptionPhaseFromJson(json);

  Map<String, dynamic> toJson() => _$SubscriptionPhaseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

@JsonSerializable(includeIfNull: false)
class CatalogQuickAmountsSettings {

  final CatalogQuickAmountsSettingsOption? option;

  final List<CatalogQuickAmount>? amounts;

  @JsonKey(name: "eligible_for_auto_amounts")
  final bool? eligibleForAutoAmounts;

  CatalogQuickAmountsSettings({
    this.option, this.amounts, this.eligibleForAutoAmounts
  });

  factory CatalogQuickAmountsSettings.fromJson(Map<String, dynamic> json) =>
      _$CatalogQuickAmountsSettingsFromJson(json);

  Map<String, dynamic> toJson() => _$CatalogQuickAmountsSettingsToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class CatalogQuickAmount {

  final Money? amount;

  final CatalogQuickAmountType? type;

  final int? ordinal;

  final int? score;

  CatalogQuickAmount({
    this.ordinal, this.type, this.amount, this.score
  });

  factory CatalogQuickAmount.fromJson(Map<String, dynamic> json) =>
      _$CatalogQuickAmountFromJson(json);

  Map<String, dynamic> toJson() => _$CatalogQuickAmountToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class CatalogProductSet {

  @JsonKey(name: "all_products")
  final bool? allProducts;

  final String? name;

  @JsonKey(name: "product_ids_all")
  final List<String>? productIdsAll;

  @JsonKey(name: "product_ids_any")
  final List<String>? productIdsAny;

  @JsonKey(name: "quantity_exact")
  final int? quantityExact;

  @JsonKey(name: "quantity_max")
  final int? quantityMax;

  @JsonKey(name:"quantity_min")
  final int? quantityMin;

  CatalogProductSet({
    this.name, this.allProducts, this.productIdsAll, this.productIdsAny,
    this.quantityExact, this.quantityMax, this.quantityMin
  });

  factory CatalogProductSet.fromJson(Map<String, dynamic> json) =>
      _$CatalogProductSetFromJson(json);

  Map<String, dynamic> toJson() => _$CatalogProductSetToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class CatalogPricingRule {

  @JsonKey(name: "customer_group_ids_any")
  final List<String>? customerGroupIdsAny;

  @JsonKey(name: "discount_id")
  final String? discountId;

  @JsonKey(name: "exclude_products_id")
  final String? excludeProductsId;

  @JsonKey(name: "exclude_strategy")
  final ExcludeStrategy? excludeStrategy;

  @JsonKey(name: "match_products_id")
  final String? matchProductsId;

  @JsonKey(name: "minimum_order_subtotal_money")
  final Money? minimumOrderSubtotalMoney;

  final String? name;

  @JsonKey(name: "time_period_ids")
  final List<String>? timePeriodIds;

  @JsonKey(name: "valid_from_date")
  final String? validFromDate;

  @JsonKey(name: "valid_from_local_time")
  final String? validFromLocalTime;

  @JsonKey(name:"valid_until_date")
  final String? validUntilDate;

  @JsonKey(name: "valid_until_local_time")
  final String? validUntilLocalTime;

  @JsonKey(name: "apply_products_id")
  final String? applyProductsId;

  CatalogPricingRule({
    this.name, this.applyProductsId, this.customerGroupIdsAny, this.discountId,
    this.excludeProductsId, this.excludeStrategy, this.matchProductsId,
    this.minimumOrderSubtotalMoney, this.timePeriodIds, this.validFromDate,
    this.validFromLocalTime, this.validUntilDate, this.validUntilLocalTime
  });

  factory CatalogPricingRule.fromJson(Map<String, dynamic> json) =>
      _$CatalogPricingRuleFromJson(json);

  Map<String, dynamic> toJson() => _$CatalogPricingRuleToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class CatalogModifierList {

  @JsonKey(name:"image_ids")
  final List<String>? imageIds;

  final List<CatalogObject>? modifiers;

  final String? name;

  final int? ordinal;

  @JsonKey(name: "selection_type")
  final CatalogModifierListSelectionType? selectionType;

  CatalogModifierList({
    this.name, this.ordinal, this.modifiers, this.imageIds, this.selectionType
  });

  factory CatalogModifierList.fromJson(Map<String, dynamic> json) =>
      _$CatalogModifierListFromJson(json);

  Map<String, dynamic> toJson() => _$CatalogModifierListToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class CatalogModifier {

  @JsonKey(name: "modifier_list_id")
  final String? modifierListId;

  final String? name;
  
  final int? ordinal;

  @JsonKey(name: "price_money")
  final Money? priceMoney;

  CatalogModifier({
    this.ordinal, this.name, this.modifierListId, this.priceMoney
  });

  factory CatalogModifier.fromJson(Map<String, dynamic> json) =>
      _$CatalogModifierFromJson(json);

  Map<String, dynamic> toJson() => _$CatalogModifierToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class CatalogMeasurementUnit {

  @JsonKey(name: "measurement_unit")
  final MeasurementUnit? measurementUnit;

  final int? precision;

  CatalogMeasurementUnit({
    this.precision, this.measurementUnit
  });

  factory CatalogMeasurementUnit.fromJson(Map<String, dynamic> json) =>
      _$CatalogMeasurementUnitFromJson(json);

  Map<String, dynamic> toJson() => _$CatalogMeasurementUnitToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class CatalogItemVariation {

  @JsonKey(name: "available_for_booking")
  final bool? availableForBooking;

  @JsonKey(name: "image_ids")
  final List<String>? imageIds;

  @JsonKey(name: "inventory_alert_threshold")
  final int? inventoryAlertThreshold;

  @JsonKey(name: "inventory_alert_type")
  final InventoryAlertType? inventoryAlertType;

  @JsonKey(name: "item_id")
  final String? itemId;

  @JsonKey(name: "item_option_values")
  final List<CatalogItemOptionValueForItemVariation>? itemOptionValues;

  @JsonKey(name: "location_overrides")
  final List<ItemVariationLocationOverrides>? locationOverrides;

  @JsonKey(name: "measurement_unit_id")
  final String? measurementUnitId;

  final String? name;

  final int? ordinal;

  @JsonKey(name:"price_money")
  final Money? priceMoney;

  @JsonKey(name: "pricing_type")
  final CatalogPricingType? pricingType;

  @JsonKey(name: "service_duration")
  final int? serviceDuration;

  final String? sku;

  final bool? stockable;

  @JsonKey(name: "stockable_conversion")
  final CatalogStockConversion? stockableConversion;

  @JsonKey(name: "team_member_ids")
  final List<String>? teamMemberIds;

  @JsonKey(name: "track_inventory")
  final bool? trackInventory;

  final String? upc;

  @JsonKey(name: "user_data")
  final String? userData;

  CatalogItemVariation({
    this.priceMoney, this.name, this.ordinal, this.imageIds, this.sku,
    this.availableForBooking, this.inventoryAlertThreshold, this.inventoryAlertType,
    this.itemId, this.itemOptionValues, this.locationOverrides, this.measurementUnitId,
    this.pricingType, this.serviceDuration, this.stockable, this.stockableConversion,
    this.teamMemberIds, this.trackInventory, this.upc, this.userData
  });

  factory CatalogItemVariation.fromJson(Map<String, dynamic> json) =>
      _$CatalogItemVariationFromJson(json);

  Map<String, dynamic> toJson() => _$CatalogItemVariationToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class CatalogStockConversion {

  @JsonKey(name: "nonstockable_quantity")
  final String? nonstockableQuantity;

  @JsonKey(name: "stockable_item_variation_id")
  final String? stockableItemVariationId;

  @JsonKey(name:"stockable_quantity")
  final String? stockableQuantity;

  CatalogStockConversion({
    this.nonstockableQuantity, this.stockableItemVariationId, this.stockableQuantity
  });

  factory CatalogStockConversion.fromJson(Map<String, dynamic> json) =>
      _$CatalogStockConversionFromJson(json);

  Map<String, dynamic> toJson() => _$CatalogStockConversionToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}
@JsonSerializable(includeIfNull: false)
class ItemVariationLocationOverrides {

  @JsonKey(name: "inventory_alert_threshold")
  final int? inventoryAlertThreshold;

  @JsonKey(name: "inventory_alert_type")
  final InventoryAlertType? inventoryAlertType;

  @JsonKey(name: "location_id")
  final String? locationId;

  @JsonKey(name: "price_money")
  final Money? priceMoney;

  @JsonKey(name: "pricing_type")
  final CatalogPricingType? pricingType;

  @JsonKey(name: "track_inventory")
  final bool? trackInventory;

  ItemVariationLocationOverrides({
    this.trackInventory, this.pricingType, this.inventoryAlertType,
    this.inventoryAlertThreshold, this.priceMoney, this.locationId
  });

  factory ItemVariationLocationOverrides.fromJson(Map<String, dynamic> json) =>
      _$ItemVariationLocationOverridesFromJson(json);

  Map<String, dynamic> toJson() => _$ItemVariationLocationOverridesToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class CatalogItemOptionValueForItemVariation {

  @JsonKey(name: "item_option_id")
  final String? itemOptionId;

  @JsonKey(name: "item_option_value_id")
  final String? itemOptionValueId;

  CatalogItemOptionValueForItemVariation({
    this.itemOptionId, this.itemOptionValueId
  });

  factory CatalogItemOptionValueForItemVariation.fromJson(Map<String, dynamic> json) =>
      _$CatalogItemOptionValueForItemVariationFromJson(json);

  Map<String, dynamic> toJson() => _$CatalogItemOptionValueForItemVariationToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class CatalogItemOptionValue {

  final String? color;

  final String? description;

  @JsonKey(name: "item_option_id")
  final String? itemOptionId;

  final String? name;

  final int? ordinal;

  CatalogItemOptionValue({
    this.itemOptionId, this.ordinal, this.name, this.description, this.color
  });

  factory CatalogItemOptionValue.fromJson(Map<String, dynamic> json) =>
      _$CatalogItemOptionValueFromJson(json);

  Map<String, dynamic> toJson() => _$CatalogItemOptionValueToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class CatalogItemOption {

  final String? description;

  @JsonKey(name: "display_name")
  final String? displayName;

  final String? name;

  @JsonKey(name: "show_colors")
  final bool? showColors;

  final List<CatalogObject>? values;

  CatalogItemOption({
    this.description, this.name, this.displayName, this.showColors, this.values
  });

  factory CatalogItemOption.fromJson(Map<String, dynamic> json) =>
      _$CatalogItemOptionFromJson(json);

  Map<String, dynamic> toJson() => _$CatalogItemOptionToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class CatalogItem {

  final String? abbreviation;

  @JsonKey(name: "available_electronically")
  final bool? availableElectronically;

  @JsonKey(name: "available_for_pickup")
  final bool? availableForPickup;

  @JsonKey(name: "available_online")
  final bool? availableOnline;

  @JsonKey(name: "category_id")
  final String? categoryId;

  final String? description;

  @JsonKey(name: "image_ids")
  final List<String>? imageIds;

  @JsonKey(name:"item_options")
  final List<CatalogItemOptionForItem>? itemOptions;

  @JsonKey(name: "label_color")
  final String? labelColor;

  @JsonKey(name: "modifier_list_info")
  final List<CatalogItemModifierListInfo>? modifierListInfo;
  
  final String? name;

  @JsonKey(name: "product_type")
  final CatalogItemProductType? productType;

  @JsonKey(name: "skip_modifier_screen")
  final bool? skipModifierScreen;

  @JsonKey(name: "sort_name")
  final String? sortName;

  @JsonKey(name: "tax_ids")
  final List<String>? taxIds;

  final List<CatalogObject>? variations;

  CatalogItem({
    this.name, this.description, this.imageIds, this.taxIds,
    this.abbreviation, this.availableElectronically, this.availableForPickup,
    this.availableOnline, this.categoryId, this.itemOptions, this.labelColor,
    this.modifierListInfo, this.productType, this.skipModifierScreen,
    this.sortName, this.variations
  });

  factory CatalogItem.fromJson(Map<String, dynamic> json) =>
      _$CatalogItemFromJson(json);

  Map<String, dynamic> toJson() => _$CatalogItemToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

@JsonSerializable(includeIfNull: false)
class CatalogItemModifierListInfo {

  @JsonKey(name: "modifier_list_id")
  final String? modifierListId;

  final bool? enabled;

  @JsonKey(name: "max_selected_modifiers")
  final int? maxSelectedModifiers;

  @JsonKey(name: "min_selected_modifiers")
  final int? minSelectedModifiers;

  @JsonKey(name:"modifier_overrides")
  final List<CatalogModifierOverride>? modifierOverrides;

  CatalogItemModifierListInfo({
    this.modifierListId, this.enabled, this.maxSelectedModifiers,
    this.minSelectedModifiers, this.modifierOverrides
  });

  factory CatalogItemModifierListInfo.fromJson(Map<String, dynamic> json) =>
      _$CatalogItemModifierListInfoFromJson(json);

  Map<String, dynamic> toJson() => _$CatalogItemModifierListInfoToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

@JsonSerializable(includeIfNull: false)
class CatalogModifierOverride {

  @JsonKey(name: "modifier_id")
  final String? modifierId;

  @JsonKey(name: "on_by_default")
  final bool? onByDefault;

  CatalogModifierOverride({
   this.modifierId, this.onByDefault
  });

  factory CatalogModifierOverride.fromJson(Map<String, dynamic> json) =>
      _$CatalogModifierOverrideFromJson(json);

  Map<String, dynamic> toJson() => _$CatalogModifierOverrideToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class CatalogItemOptionForItem {

  @JsonKey(name: "item_option_id")
  final String? itemOptionId;

  CatalogItemOptionForItem({
    this.itemOptionId
  });

  factory CatalogItemOptionForItem.fromJson(Map<String, dynamic> json) =>
      _$CatalogItemOptionForItemFromJson(json);

  Map<String, dynamic> toJson() => _$CatalogItemOptionForItemToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class CatalogImage{

  final String? caption;

  final String? name;

  @JsonKey(name: "photo_studio_order_id")
  final String? photoStudioOrderId;

  final String? url;

  CatalogImage({
    this.name, this.caption, this.url, this.photoStudioOrderId
  });

  factory CatalogImage.fromJson(Map<String, dynamic> json) =>
      _$CatalogImageFromJson(json);

  Map<String, dynamic> toJson() => _$CatalogImageToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class CatalogDiscount {

  @JsonKey(name: "amount_money")
  final Money? amountMoney;

  @JsonKey(name: "discount_type")
  final CatalogDiscountType? discountType;

  @JsonKey(name: "label_color")
  final String? labelColor;

  @JsonKey(name: "maximum_amount_money")
  final Money? maximumAmountMoney;

  @JsonKey(name: "modify_tax_basis")
  final CatalogDiscountModifyTaxBasis? modifyTaxBasis;
  
  final String? name;

  final String? percentage;

  @JsonKey(name: "pin_required")
  final bool? pinRequired;

  CatalogDiscount({
    this.name, this.labelColor, this.percentage, this.amountMoney,
    this.discountType, this.maximumAmountMoney, this.modifyTaxBasis,
    this.pinRequired
  });

  factory CatalogDiscount.fromJson(Map<String, dynamic> json) =>
      _$CatalogDiscountFromJson(json);

  Map<String, dynamic> toJson() => _$CatalogDiscountToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull:false)
class CatalogCustomAttributeValue {

  @JsonKey(name: "boolean_value")
  final bool? booleanValue;

  @JsonKey(name: "custom_attribute_definition_id")
  final String? customAttributeDefinitionId;

  final String? key;

  final String? name;

  @JsonKey(name: "number_value")
  final String? numberValue;

  @JsonKey(name: "string_value")
  final String? stringValue;

  final CatalogCustomAttributeDefinitionType? type;

  CatalogCustomAttributeValue({
    this.name, this.type, this.booleanValue, this.stringValue,
    this.customAttributeDefinitionId, this.key,
    this.numberValue
  });

  factory CatalogCustomAttributeValue.fromJson(Map<String, dynamic> json) =>
      _$CatalogCustomAttributeValueFromJson(json);

  Map<String, dynamic> toJson() => _$CatalogCustomAttributeValueToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class CatalogCustomAttributeDefinition {

  @JsonKey(name: "allowed_object_types")
  final List<CatalogObjectType>? allowedObjectTypes;

  final String? name;

  final CatalogCustomAttributeDefinitionType? type;

  @JsonKey(name: "app_visibility")
  final CatalogCustomAttributeDefinitionAppVisibility? appVisibility;

  @JsonKey(name: "custom_attribute_usage_count")
  final int? customAttributeUsageCount;

  final String? description;

  final String? key;

  @JsonKey(name: "number_config")
  final CatalogCustomAttributeDefinitionNumberConfig? numberConfig;

  @JsonKey(name:"selection_config")
  final CatalogCustomAttributeDefinitionSelectionConfig? selectionConfig;

  @JsonKey(name: "seller_visibility")
  final CatalogCustomAttributeDefinitionSellerVisibility? sellerVisibility;

  @JsonKey(name: "sourceApplication")
  final SourceApplication? sourceApplication;

  @JsonKey(name:"string_config")
  final CatalogCustomAttributeDefinitionStringConfig? stringConfig;

  CatalogCustomAttributeDefinition({
    this.key, this.type, this.name, this.description, this.allowedObjectTypes,
    this.appVisibility, this.customAttributeUsageCount, this.numberConfig,
    this.selectionConfig, this.sellerVisibility, this.sourceApplication,
    this.stringConfig
  });

  factory CatalogCustomAttributeDefinition.fromJson(Map<String, dynamic> json) =>
      _$CatalogCustomAttributeDefinitionFromJson(json);

  Map<String, dynamic> toJson() => _$CatalogCustomAttributeDefinitionToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class CatalogCustomAttributeDefinitionStringConfig{

  @JsonKey(name: "enforce_uniqueness")
  final bool? enforceUniqueness;

  CatalogCustomAttributeDefinitionStringConfig({
    this.enforceUniqueness
  });

  factory CatalogCustomAttributeDefinitionStringConfig.fromJson(Map<String, dynamic> json) =>
      _$CatalogCustomAttributeDefinitionStringConfigFromJson(json);

  Map<String, dynamic> toJson() => _$CatalogCustomAttributeDefinitionStringConfigToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class SourceApplication {

  @JsonKey(name: "application_id")
  final String? applicationId;

  final String? name;

  final ProductValue? product;

  SourceApplication({
    this.name, this.applicationId, this.product
  });

  factory SourceApplication.fromJson(Map<String, dynamic> json) =>
      _$SourceApplicationFromJson(json);

  Map<String, dynamic> toJson() => _$SourceApplicationToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

@JsonSerializable(includeIfNull: false)
class CatalogCustomAttributeDefinitionSelectionConfig {

  @JsonKey(name:"allowed_selections")
  final List<CatalogCustomAttributeDefinitionSelectionConfigCustomAttributeSelection>? allowedSelections;

  @JsonKey(name: "max_allowed_selections")
  final int? maxAllowedSelections;

  CatalogCustomAttributeDefinitionSelectionConfig({
    this.allowedSelections, this.maxAllowedSelections
  });

  factory CatalogCustomAttributeDefinitionSelectionConfig.fromJson(Map<String, dynamic> json) =>
      _$CatalogCustomAttributeDefinitionSelectionConfigFromJson(json);

  Map<String, dynamic> toJson() => _$CatalogCustomAttributeDefinitionSelectionConfigToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

@JsonSerializable(includeIfNull: false)
class CatalogCustomAttributeDefinitionSelectionConfigCustomAttributeSelection {

  final String? name;

  final String? uid;

  CatalogCustomAttributeDefinitionSelectionConfigCustomAttributeSelection({
      this.name, this.uid
  });

  factory CatalogCustomAttributeDefinitionSelectionConfigCustomAttributeSelection.fromJson(Map<String, dynamic> json) =>
      _$CatalogCustomAttributeDefinitionSelectionConfigCustomAttributeSelectionFromJson(json);

  Map<String, dynamic> toJson() => _$CatalogCustomAttributeDefinitionSelectionConfigCustomAttributeSelectionToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull:false)
class CatalogCustomAttributeDefinitionNumberConfig {

  final int? precision;

  CatalogCustomAttributeDefinitionNumberConfig({
    this.precision
  });

  factory CatalogCustomAttributeDefinitionNumberConfig.fromJson(Map<String, dynamic> json) =>
      _$CatalogCustomAttributeDefinitionNumberConfigFromJson(json);

  Map<String, dynamic> toJson() => _$CatalogCustomAttributeDefinitionNumberConfigToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class CatalogCategory {

  @JsonKey(name: "image_ids")
  final List<String>? imageIds;

  final String? name;

  CatalogCategory({
    this.name, this.imageIds
  });

  factory CatalogCategory.fromJson(Map<String, dynamic> json) =>
      _$CatalogCategoryFromJson(json);

  Map<String, dynamic> toJson() => _$CatalogCategoryToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class CatalogV1Id {

  @JsonKey(name: "catalog_v1_id")
  final String? catalogV1Id;

  @JsonKey(name: "location_id")
  final String? locationId;

  CatalogV1Id({
    this.locationId, this.catalogV1Id
  });

  factory CatalogV1Id.fromJson(Map<String, dynamic> json) =>
      _$CatalogV1IdFromJson(json);

  Map<String, dynamic> toJson() => _$CatalogV1IdToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class CatalogInfoResponseLimits {

  @JsonKey(name: "batch_delete_max_object_ids")
  final int? batchDeleteMaxObjectIds;

  @JsonKey(name: "batch_retrieve_max_object_ids")
  final int? batchRetrieveMaxObjectIds;

  @JsonKey(name: "batch_upsert_max_objects_per_batch")
  final int? batchUpsertMaxObjectsPerBatch;

  @JsonKey(name: "batch_upsert_max_total_objects")
  final int? batchUpsertMaxTotalObjects;

  @JsonKey(name: "search_max_page_limit")
  final int? searchMaxPageLimit;


  @JsonKey(name: "update_item_modifier_lists_max_modifier_lists_to_disable")
  final int? updateItemModifierListsMaxModifierListsToDisable;

  @JsonKey(name: "update_item_modifier_lists_max_modifier_lists_to_enable")
  final int? updateItemModifierListsMaxModifierListsToEnable;

  @JsonKey(name:"update_item_taxes_max_taxes_to_disable")
  final int? updateItemTaxesMaxTaxesToDisable;

  @JsonKey(name: "update_item_taxes_max_taxes_to_enable")
  final int? updateItemTaxesMaxTaxesToEnable;

  CatalogInfoResponseLimits({
    this.batchDeleteMaxObjectIds, this.batchRetrieveMaxObjectIds,
    this.batchUpsertMaxObjectsPerBatch, this.batchUpsertMaxTotalObjects,
    this.searchMaxPageLimit, this.updateItemModifierListsMaxModifierListsToDisable,
    this.updateItemModifierListsMaxModifierListsToEnable,
    this.updateItemTaxesMaxTaxesToDisable, this.updateItemTaxesMaxTaxesToEnable
  });

  factory CatalogInfoResponseLimits.fromJson(Map<String, dynamic> json) =>
      _$CatalogInfoResponseLimitsFromJson(json);

  Map<String, dynamic> toJson() => _$CatalogInfoResponseLimitsToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

@JsonSerializable(includeIfNull: false)
class StandardUnitDescriptionGroup {

  @JsonKey(name: "language_code")
  final String? languageCode;

  @JsonKey(name: "standard_unit_descriptions")
  final List<StandardUnitDescription>? standardUnitDescriptions;

  StandardUnitDescriptionGroup({
    this.languageCode, this.standardUnitDescriptions
  });

  factory StandardUnitDescriptionGroup.fromJson(Map<String, dynamic> json) =>
      _$StandardUnitDescriptionGroupFromJson(json);

  Map<String, dynamic> toJson() => _$StandardUnitDescriptionGroupToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull:false)
class StandardUnitDescription{

  final String? abbreviation;

  final String? name;

  final MeasurementUnit? unit;

  StandardUnitDescription({
    this.name, this.abbreviation, this.unit
  });

  factory StandardUnitDescription.fromJson(Map<String, dynamic> json) =>
      _$StandardUnitDescriptionFromJson(json);

  Map<String, dynamic> toJson() => _$StandardUnitDescriptionToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class CatalogIdMapping {

  @JsonKey(name: "client_object_id")
  final String? clientObjectId;

  @JsonKey(name: "object_id")
  final String? objectId;

  CatalogIdMapping({
    this.clientObjectId, this.objectId
  });

  factory CatalogIdMapping.fromJson(Map<String, dynamic> json) =>
      _$CatalogIdMappingFromJson(json);

  Map<String, dynamic> toJson() => _$CatalogIdMappingToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

@JsonSerializable(includeIfNull: false)
class CatalogQuery {

  @JsonKey(name: "exact_query")
  final CatalogQueryExact? exactQuery;

  @JsonKey(name: "item_variations_for_item_option_values_query")
  final CatalogQueryItemVariationsForItemOptionValues? itemVariationsForItemOptionValuesQuery;

  @JsonKey(name: "items_for_item_options_query")
  final CatalogQueryItemsForItemOptions? itemsForItemOptionsQuery;

  @JsonKey(name: "items_for_modifier_list_query")
  final CatalogQueryItemsForModifierList? itemsForModifierListQuery;

  @JsonKey(name:"items_for_tax_query")
  final CatalogQueryItemsForTax? itemsForTaxQuery;

  @JsonKey(name: "prefix_query")
  final CatalogQueryPrefix? prefixQuery;

  @JsonKey(name: "range_query")
  final CatalogQueryRange? rangeQuery;

  @JsonKey(name: "set_query")
  final CatalogQuerySet? setQuery;

  @JsonKey(name: "sorted_attribute_query")
  final CatalogQuerySortedAttribute? sortedAttributeQuery;

  @JsonKey(name:"text_query")
  final CatalogQueryText? textQuery;

  CatalogQuery({
    this.exactQuery, this.itemsForItemOptionsQuery, this.itemsForModifierListQuery,
    this.itemsForTaxQuery, this.itemVariationsForItemOptionValuesQuery,
    this.prefixQuery, this.rangeQuery, this.setQuery,
    this.sortedAttributeQuery, this.textQuery
  });

  factory CatalogQuery.fromJson(Map<String, dynamic> json) =>
      _$CatalogQueryFromJson(json);

  Map<String, dynamic> toJson() => _$CatalogQueryToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class CatalogQueryText {

  final List<String>? keywords;

  CatalogQueryText({
    this.keywords
  });

  factory CatalogQueryText.fromJson(Map<String, dynamic> json) =>
      _$CatalogQueryTextFromJson(json);

  Map<String, dynamic> toJson() => _$CatalogQueryTextToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class CatalogQuerySortedAttribute {

  @JsonKey(name: "attribute_name")
  final String? attributeName;

  @JsonKey(name: "initial_attribute_value")
  final String? initialAttributeValue;

  @JsonKey(name: "sort_order")
  final SortOrder? sortOrder;

  CatalogQuerySortedAttribute({
    this.attributeName, this.initialAttributeValue, this.sortOrder
  });

  factory CatalogQuerySortedAttribute.fromJson(Map<String, dynamic> json) =>
      _$CatalogQuerySortedAttributeFromJson(json);

  Map<String, dynamic> toJson() => _$CatalogQuerySortedAttributeToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class CatalogQuerySet {

  @JsonKey(name: "attribute_name")
  final String? attributeName;

  @JsonKey(name: "attribute_values")
  final List<String>? attributeValues;

  CatalogQuerySet({
    this.attributeName, this.attributeValues
  });

  factory CatalogQuerySet.fromJson(Map<String, dynamic> json) =>
      _$CatalogQuerySetFromJson(json);

  Map<String, dynamic> toJson() => _$CatalogQuerySetToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class CatalogQueryRange{

  @JsonKey(name: "attribute_name")
  final String? attributeName;

  @JsonKey(name: "attribute_max_value")
  final int? attributeMaxValue;

  @JsonKey(name:"attribute_min_value")
  final int? attributeMinValue;

  CatalogQueryRange({
    this.attributeName, this.attributeMaxValue, this.attributeMinValue
  });

  factory CatalogQueryRange.fromJson(Map<String, dynamic> json) =>
      _$CatalogQueryRangeFromJson(json);

  Map<String, dynamic> toJson() => _$CatalogQueryRangeToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class CatalogQueryPrefix {

  @JsonKey(name: "attribute_name")
  final String? attributeName;

  @JsonKey(name:"attribute_prefix")
  final String? attributePrefix;

  CatalogQueryPrefix({
    this.attributeName, this.attributePrefix
  });

  factory CatalogQueryPrefix.fromJson(Map<String, dynamic> json) =>
      _$CatalogQueryPrefixFromJson(json);

  Map<String, dynamic> toJson() => _$CatalogQueryPrefixToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

@JsonSerializable(includeIfNull: false)
class CatalogQueryItemsForTax {

  @JsonKey(name: "tax_ids")
  final List<String>? taxIds;

  CatalogQueryItemsForTax({
    this.taxIds
  });

  factory CatalogQueryItemsForTax.fromJson(Map<String, dynamic> json) =>
      _$CatalogQueryItemsForTaxFromJson(json);

  Map<String, dynamic> toJson() => _$CatalogQueryItemsForTaxToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class CatalogQueryItemsForModifierList {

  @JsonKey(name: "modifier_list_ids")
  final List<String>? modifierListIds;

  CatalogQueryItemsForModifierList({
    this.modifierListIds
  });

  factory CatalogQueryItemsForModifierList.fromJson(Map<String, dynamic> json) =>
      _$CatalogQueryItemsForModifierListFromJson(json);

  Map<String, dynamic> toJson() => _$CatalogQueryItemsForModifierListToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class CatalogQueryItemsForItemOptions {

  @JsonKey(name: "item_option_ids")
  final List<String>? itemOptionIds;

  CatalogQueryItemsForItemOptions({
   this.itemOptionIds
  });

  factory CatalogQueryItemsForItemOptions.fromJson(Map<String, dynamic> json) =>
      _$CatalogQueryItemsForItemOptionsFromJson(json);

  Map<String, dynamic> toJson() => _$CatalogQueryItemsForItemOptionsToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

@JsonSerializable(includeIfNull: false)
class CatalogQueryItemVariationsForItemOptionValues {

  @JsonKey(name: "item_option_value_ids")
  final List<String>? itemOptionValueIds;

  CatalogQueryItemVariationsForItemOptionValues({
    this.itemOptionValueIds
  });

  factory CatalogQueryItemVariationsForItemOptionValues.fromJson(Map<String, dynamic> json) =>
      _$CatalogQueryItemVariationsForItemOptionValuesFromJson(json);

  Map<String, dynamic> toJson() => _$CatalogQueryItemVariationsForItemOptionValuesToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class CatalogQueryExact {

  @JsonKey(name: "attribute_name")
  final String? attributeName;

  @JsonKey(name: "attribute_value")
  final String? attributeValue;

  CatalogQueryExact({
      this.attributeName, this.attributeValue
  });

  factory CatalogQueryExact.fromJson(Map<String, dynamic> json) =>
      _$CatalogQueryExactFromJson(json);

  Map<String, dynamic> toJson() => _$CatalogQueryExactToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class CatalogResponse {

  final List<SquareError>? errors;

  final String? cursor;

  final List<CatalogObject>? objects;

  @JsonKey(name:"related_objects")
  final List<CatalogObject>? relatedObjects;

  @JsonKey(name: "latest_time")
  final String? latestTime;

  @JsonKey(name: "updated_at")
  final String? updatedAt;

  @JsonKey(name: "id_mappings")
  final List<CatalogIdMapping>? idMappings;

  final CatalogObject? image;

  final CatalogInfoResponseLimits? limits;

  @JsonKey(name: "standard_unit_description_group")
  final StandardUnitDescriptionGroup? standardUnitDescriptionGroup;


  CatalogResponse({
    this.cursor, this.errors, this.latestTime, this.objects,
    this.relatedObjects, this.updatedAt, this.idMappings, this.image, this.limits,
  this.standardUnitDescriptionGroup
  });

  factory CatalogResponse.fromJson(Map<String, dynamic> json) =>
      _$CatalogResponseFromJson(json);

  Map<String, dynamic> toJson() => _$CatalogResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class CatalogInfoResponse {

  final List<SquareError>? errors;


  final CatalogInfoResponseLimits? limits;

  @JsonKey(name: "standard_unit_description_group")
  final StandardUnitDescriptionGroup? standardUnitDescriptionGroup;


  CatalogInfoResponse({
    this.limits, this.errors,
    this.standardUnitDescriptionGroup
  });

  factory CatalogInfoResponse.fromJson(Map<String, dynamic> json) =>
      _$CatalogInfoResponseFromJson(json);

  Map<String, dynamic> toJson() => _$CatalogInfoResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class CatalogDeleteResponse {
  final List<SquareError>? errors;

  @JsonKey(name: "deleted_object_ids")
  final List<String>? deletedObjectIds;

  @JsonKey(name: "deleted_at")
  final String? deletedAt;

  CatalogDeleteResponse({
    this.errors, this.deletedObjectIds, this.deletedAt
  });

  factory CatalogDeleteResponse.fromJson(Map<String, dynamic> json) =>
      _$CatalogDeleteResponseFromJson(json);

  Map<String, dynamic> toJson() => _$CatalogDeleteResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class InventoryAdjustment
{
  final String? id;

  @JsonKey(name: "adjustment_group")
  final InventoryAdjustmentGroup? adjustmentGroup;

  @JsonKey(name:"catalog_object_id")
  final String? catalogObjectId;

  @JsonKey(name: "catalog_object_type")
  final String? catalogObjectType;

  @JsonKey(name:"created_at")
  final String? createdAt;

  @JsonKey(name: "employee_id")
  final String? employeeId;

  @JsonKey(name:"from_state")
  final String? fromState;

  @JsonKey(name: "goods_receipt_id")
  final String? goodsReceiptId;

  @JsonKey(name: "location_id")
  final String? locationId;

  @JsonKey(name: "occurred_at")
  final String? occurredAt;

  @JsonKey(name: "purchase_order_id")
  final String? purchaseOrderId;

  final String? quantity;

  @JsonKey(name: "reference_id")
  final String? referenceId;

  @JsonKey(name: "refund_id")
  final String? refundId;

  final SourceApplication? source;

  @JsonKey(name: "to_state")
  final String? toState;

  @JsonKey(name: "total_price_money")
  final Money? totalPriceMoney;

  @JsonKey(name: "transaction_id")
  final String? transactionId;

  InventoryAdjustment({
    this.locationId, this.id, this.createdAt, this.source,
    this.totalPriceMoney, this.catalogObjectId, this.referenceId,
    this.quantity, this.transactionId, this.refundId,
    this.employeeId, this.adjustmentGroup, this.catalogObjectType,
    this.fromState, this.goodsReceiptId, this.occurredAt,
    this.purchaseOrderId, this.toState
  });

  factory InventoryAdjustment.fromJson(Map<String, dynamic> json) =>
      _$InventoryAdjustmentFromJson(json);

  Map<String, dynamic> toJson() => _$InventoryAdjustmentToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class InventoryAdjustmentGroup {

  final String? id;

  @JsonKey(name: "from_state")
  final InventoryState? fromState;

  @JsonKey(name: "root_adjustment_id")
  final String? rootAdjustmentId;

  @JsonKey(name: "to_state")
  final InventoryState? toState;

  InventoryAdjustmentGroup({
    this.toState, this.fromState, this.id, this.rootAdjustmentId
  });

  factory InventoryAdjustmentGroup.fromJson(Map<String, dynamic> json) =>
      _$InventoryAdjustmentGroupFromJson(json);

  Map<String, dynamic> toJson() => _$InventoryAdjustmentGroupToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class InventoryPhysicalCount {
  final String? id;

  @JsonKey(name: "catalog_object_id")
  final String? catalogObjectId;

  @JsonKey(name: "catalog_object_type")
  final String? catalogObjectType;

  @JsonKey(name:"created_at")
  final String? createdAt;

  @JsonKey(name: "employee_id")
  final String? employeeId;

  @JsonKey(name: "location_id")
  final String? locationId;

  @JsonKey(name: "occurred_at")
  final String? occurredAt;

  final String? quantity;

  @JsonKey(name: "reference_id")
  final String? referenceId;

  final SourceApplication? source;

  final InventoryState? state;

  InventoryPhysicalCount({
    this.id, this.occurredAt, this.catalogObjectType, this.employeeId,
  this.quantity, this.referenceId, this.catalogObjectId, this.source,
  this.createdAt, this.locationId, this.state
  });

  factory InventoryPhysicalCount.fromJson(Map<String, dynamic> json) =>
      _$InventoryPhysicalCountFromJson(json);

  Map<String, dynamic> toJson() => _$InventoryPhysicalCountToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class InventoryTransfer {
  final String? id;

  @JsonKey(name: "catalog_object_id")
  final String? catalogObjectId;

  @JsonKey(name: "catalog_object_type")
  final String? catalogObjectType;

  @JsonKey(name: "created_at")
  final String? createdAt;

  @JsonKey(name: "employee_id")
  final String? employeeId;

  @JsonKey(name: "from_location_id")
  final String? fromLocationId;

  @JsonKey(name: "occurred_at")
  final String? occurredAt;

  final String? quantity;

  @JsonKey(name: "reference_id")
  final String? referenceId;

  final SourceApplication? source;

  final InventoryState? state;

  @JsonKey(name: "to_location_id")
  final String? toLocationId;

  InventoryTransfer({
    this.state, this.createdAt, this.source, this.catalogObjectId,
  this.referenceId, this.quantity, this.employeeId, this.catalogObjectType,
    this.occurredAt, this.id, this.fromLocationId, this.toLocationId
  });

  factory InventoryTransfer.fromJson(Map<String, dynamic> json) =>
      _$InventoryTransferFromJson(json);

  Map<String, dynamic> toJson() => _$InventoryTransferToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class InventoryChange {

  final InventoryAdjustment? adjustment;

  @JsonKey(name: "measurement_unit")
  final CatalogMeasurementUnit? measurementUnit;

  @JsonKey(name: "measurement_unit_id")
  final String? measurementUnitId;

  @JsonKey(name: "physical_count")
  final InventoryPhysicalCount? physicalCount;

  final InventoryTransfer? transfer;

  final InventoryChangeType? type;

  InventoryChange({
    this.type, this.measurementUnitId, this.measurementUnit,
    this.adjustment, this.physicalCount, this.transfer
  });

  factory InventoryChange.fromJson(Map<String, dynamic> json) =>
      _$InventoryChangeFromJson(json);

  Map<String, dynamic> toJson() => _$InventoryChangeToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class Customer {

  final String? id;

  final Address? address;

  final String? birthday;

  @JsonKey(name: "company_name")
  final String? companyName;

  @JsonKey(name: "created_at")
  final String? createdAt;

  @JsonKey(name: "creation_source")
  final CustomerCreationSource? creationSource;

  @JsonKey(name: "email_address")
  final String? emailAddress;

  @JsonKey(name: "family_name")
  final String? familyName;

  @JsonKey(name: "given_name")
  final String? givenName;

  @JsonKey(name: "group_ids")
  final List<String>? groupIds;

  final String? nickname;

  final String? note;

  @JsonKey(name: "phone_number")
  final String? phoneNumber;

  final CustomerPreferences? preferences;

  @JsonKey(name: "reference_id")
  final String? referenceId;

  @JsonKey(name: "segment_ids")
  final List<String>? segmentIds;

  @JsonKey(name: "tax_ids")
  final CustomerTaxIds? taxIds;

  @JsonKey(name: "updated_at")
  final String? updatedAt;

  final int? version;

  final List<Card>? cards;

  Customer({
    this.id, this.referenceId, this.createdAt, this.taxIds,
  this.version, this.updatedAt, this.familyName, this.givenName,
  this.companyName, this.phoneNumber, this.address, this.emailAddress,
    this.note, this.preferences, this.birthday, this.cards,
  this.creationSource, this.groupIds, this.nickname, this.segmentIds
  });

  factory Customer.fromJson(Map<String, dynamic> json) =>
      _$CustomerFromJson(json);

  Map<String, dynamic> toJson() => _$CustomerToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class CustomerTaxIds {

  @JsonKey(name: "eu_vat")
  final String? euVat;

  CustomerTaxIds({
    this.euVat
  });

  factory CustomerTaxIds.fromJson(Map<String, dynamic> json) =>
      _$CustomerTaxIdsFromJson(json);

  Map<String, dynamic> toJson() => _$CustomerTaxIdsToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class CustomerPreferences {

  @JsonKey(name: "email_unsubscribed")
  final bool? emailUnsubscribed;

  CustomerPreferences({
    this.emailUnsubscribed
  });

  factory CustomerPreferences.fromJson(Map<String, dynamic> json) =>
      _$CustomerPreferencesFromJson(json);

  Map<String, dynamic> toJson() => _$CustomerPreferencesToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class CustomerQuery {

  @JsonKey(name: "created_at")
  final TimeRange? createdAt;

  @JsonKey(name:" creation_source")
  final CustomerCreationSourceFilter? creationSource;

  @JsonKey(name: "email_address")
  final CustomerTextFilter? emailAddress;

  @JsonKey(name: "group_ids")
  final FilterValue? groupIds;

  @JsonKey(name: "phone_number")
  final CustomerTextFilter? phoneNumber;

  @JsonKey(name: "reference_id")
  final CustomerTextFilter? referenceId;

  @JsonKey(name: "updated_at")
  final TimeRange? updated_at;

  CustomerQuery({
    this.groupIds, this.creationSource, this.emailAddress, this.phoneNumber,
    this.createdAt, this.referenceId, this.updated_at
  });

  factory CustomerQuery.fromJson(Map<String, dynamic> json) =>
      _$CustomerQueryFromJson(json);

  Map<String, dynamic> toJson() => _$CustomerQueryToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class FilterValue {

  final List<String>? all;

  final List<String>? any;
  
  final List<String>? none;

  FilterValue({
    this.all, this.any, this.none
  });

  factory FilterValue.fromJson(Map<String, dynamic> json) =>
      _$FilterValueFromJson(json);

  Map<String, dynamic> toJson() => _$FilterValueToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class CustomerTextFilter {
  final String? exact;

  final String? fuzzy;

  CustomerTextFilter({
    this.exact, this.fuzzy
  });

  factory CustomerTextFilter.fromJson(Map<String, dynamic> json) =>
      _$CustomerTextFilterFromJson(json);

  Map<String, dynamic> toJson() => _$CustomerTextFilterToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class CustomerCreationSourceFilter {

  final CustomerInclusionExclusion? rule;

  final List<CustomerCreationSource>? values;

  CustomerCreationSourceFilter({
    this.values, this.rule
  });

  factory CustomerCreationSourceFilter.fromJson(Map<String, dynamic> json) =>
      _$CustomerCreationSourceFilterFromJson(json);

  Map<String, dynamic> toJson() => _$CustomerCreationSourceFilterToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class TimeRange {

  @JsonKey(name: "end_at")
  final String? endAt;

  @JsonKey(name: "start_at")
  final String? startAt;

  TimeRange({
    this.endAt, this.startAt
  });

  factory TimeRange.fromJson(Map<String, dynamic> json) =>
      _$TimeRangeFromJson(json);

  Map<String, dynamic> toJson() => _$TimeRangeToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class CustomerFilter {

  @JsonKey(name: "created_at")
  final TimeRange? createdAt;

  @JsonKey(name: "creation_source")
  final CustomerCreationSourceFilter? creationSource;

  @JsonKey(name: "email_address")
  final CustomerTextFilter? emailAddress;

  @JsonKey(name: "group_ids")
  final FilterValue? groupIds;

  @JsonKey(name: "phone_number")
  final CustomerTextFilter? phoneNumber;

  @JsonKey(name: "reference_id")
  final CustomerTextFilter? referenceId;

  @JsonKey(name: "updated_at")
  final TimeRange? updatedAt;

  CustomerFilter({
    this.referenceId, this.createdAt, this.phoneNumber,
    this.emailAddress, this.creationSource, this.groupIds,
  this.updatedAt
  });

  factory CustomerFilter.fromJson(Map<String, dynamic> json) =>
      _$CustomerFilterFromJson(json);

  Map<String, dynamic> toJson() => _$CustomerFilterToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }


}


@JsonSerializable(includeIfNull: false)
class CustomerSort {

  final CustomerSortField? field;

  final SortOrder? order;

  CustomerSort({
    this.order, this.field
  });

  factory CustomerSort.fromJson(Map<String, dynamic> json) =>
      _$CustomerSortFromJson(json);

  Map<String, dynamic> toJson() => _$CustomerSortToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class CustomerGroup {

  final String? id;

  final String? name;

  @JsonKey(name: "created_at")
  final String? createdAt;

  @JsonKey(name: "updated_at")
  final String? updatedAt;

  CustomerGroup({
    this.updatedAt, this.createdAt, this.id, this.name
  });

  factory CustomerGroup.fromJson(Map<String, dynamic> json) =>
      _$CustomerGroupFromJson(json);

  Map<String, dynamic> toJson() => _$CustomerGroupToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class CustomerSegment {

  final String? id;

  final String? name;

  @JsonKey(name: "created_at")
  final String? createdAt;

  @JsonKey(name: "updated_at")
  final String? updatedAt;

  CustomerSegment({
    this.name, this.id, this.createdAt, this.updatedAt
  });

  factory CustomerSegment.fromJson(Map<String, dynamic> json) =>
      _$CustomerSegmentFromJson(json);

  Map<String, dynamic> toJson() => _$CustomerSegmentToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class LoyaltyAccount {

  final String? id;

  @JsonKey(name: "program_id")
  final String? programId;

  final int? balance;

  @JsonKey(name:"created_at")
  final String? createdAt;

  @JsonKey(name: "customer_id")
  final String? customerId;

  @JsonKey(name: "enrolled_at")
  final String? enrolledAt;

  @JsonKey(name: "expiring_point_deadlines")
  final List<LoyaltyAccountExpiringPointDeadline>? expiringPointDeadlines;

  @JsonKey(name: "lifetime_points")
  final int? lifetimePoints;

  final LoyaltyAccountMapping? mapping;

  @JsonKey(name:"updated_at")
  final String? updatedAt;

  LoyaltyAccount({
    this.updatedAt, this.createdAt, this.id, this.customerId,
  this.balance, this.enrolledAt, this.expiringPointDeadlines, this.lifetimePoints,
    this.mapping, this.programId
  });

  factory LoyaltyAccount.fromJson(Map<String, dynamic> json) =>
      _$LoyaltyAccountFromJson(json);

  Map<String, dynamic> toJson() => _$LoyaltyAccountToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class LoyaltyAccountMapping {

  final String? id;

  @JsonKey(name: "created_at")
  final String? createdAt;

  @JsonKey(name: "phone_number")
  final String? phoneNumber;

  LoyaltyAccountMapping({
    this.id, this.createdAt, this.phoneNumber
  });

  factory LoyaltyAccountMapping.fromJson(Map<String, dynamic> json) =>
      _$LoyaltyAccountMappingFromJson(json);

  Map<String, dynamic> toJson() => _$LoyaltyAccountMappingToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class LoyaltyAccountExpiringPointDeadline {

  @JsonKey(name: "expires_at")
  final String? expiresAt;

  @JsonKey(name: "points")
  final int? points;

  LoyaltyAccountExpiringPointDeadline({
    this.expiresAt, this.points
  });

  factory LoyaltyAccountExpiringPointDeadline.fromJson(Map<String, dynamic> json) =>
      _$LoyaltyAccountExpiringPointDeadlineFromJson(json);

  Map<String, dynamic> toJson() => _$LoyaltyAccountExpiringPointDeadlineToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class SearchLoyaltyAccountsRequestLoyaltyAccountQuery {

  @JsonKey(name: "customer_ids")
  final List<String>? customerIds;

  final List<LoyaltyAccountMapping>? mappings;

  SearchLoyaltyAccountsRequestLoyaltyAccountQuery({
    this.customerIds, this.mappings
  });

  factory SearchLoyaltyAccountsRequestLoyaltyAccountQuery.fromJson(Map<String, dynamic> json) =>
      _$SearchLoyaltyAccountsRequestLoyaltyAccountQueryFromJson(json);

  Map<String, dynamic> toJson() => _$SearchLoyaltyAccountsRequestLoyaltyAccountQueryToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class LoyaltyProgram {

  final String? id;

  @JsonKey(name: "accrual_rules")
  final List<LoyaltyProgramAccrualRule>? accrualRules;

  @JsonKey(name: "created_at")
  final String? createdAt;

  @JsonKey(name: "location_ids")
  final List<String>? locationIds;

  @JsonKey(name: "reward_tiers")
  final List<LoyaltyProgramRewardTier>? rewardTiers;

  final LoyaltyProgramStatus? status;

  final LoyaltyProgramTerminology? terminology;

  @JsonKey(name:"updated_at")
  final String? updatedAt;

  @JsonKey(name: "expiration_policy")
  final LoyaltyProgramExpirationPolicy? expirationPolicy;

  LoyaltyProgram({
    this.createdAt, this.id, this.updatedAt, this.locationIds,
    this.status, this.accrualRules, this.expirationPolicy, 
    this.rewardTiers, this.terminology
  });

  factory LoyaltyProgram.fromJson(Map<String, dynamic> json) =>
      _$LoyaltyProgramFromJson(json);

  Map<String, dynamic> toJson() => _$LoyaltyProgramToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class LoyaltyProgramExpirationPolicy {

  @JsonKey(name: "expiration_duration")
  final String? expirationDuration;

  LoyaltyProgramExpirationPolicy({
  this.expirationDuration
  });

  factory LoyaltyProgramExpirationPolicy.fromJson(Map<String, dynamic> json) =>
      _$LoyaltyProgramExpirationPolicyFromJson(json);

  Map<String, dynamic> toJson() => _$LoyaltyProgramExpirationPolicyToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

@JsonSerializable(includeIfNull: false)
class LoyaltyProgramTerminology {

  final String? one;

  final String? other;

  LoyaltyProgramTerminology({
    this.one, this.other
  });

  factory LoyaltyProgramTerminology.fromJson(Map<String, dynamic> json) =>
      _$LoyaltyProgramTerminologyFromJson(json);

  Map<String, dynamic> toJson() => _$LoyaltyProgramTerminologyToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class LoyaltyProgramRewardTier {

  final String? id;

  @JsonKey(name: "created_at")
  final String? createdAt;

  final String? name;

  final int? points;

  @JsonKey(name: "pricing_rule_reference")
  final CatalogObjectReference? pricingRuleReference;

  final LoyaltyProgramRewardDefinition? definition;

  LoyaltyProgramRewardTier({
    this.id, this.createdAt, this.points, this.name,
    this.definition, this.pricingRuleReference
  });

  factory LoyaltyProgramRewardTier.fromJson(Map<String, dynamic> json) =>
      _$LoyaltyProgramRewardTierFromJson(json);

  Map<String, dynamic> toJson() => _$LoyaltyProgramRewardTierToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

@JsonSerializable(includeIfNull: false)
class LoyaltyProgramRewardDefinition {

  @JsonKey(name:"discount_type")
  final LoyaltyProgramRewardDefinitionType? discountType;

  final LoyaltyProgramRewardDefinitionScope? scope;

  @JsonKey(name:"catalog_object_ids")
  final List<String>? catalogObjectIds;

  @JsonKey(name: "fixed_discount_money")
  final Money? fixedDiscountMoney;

  @JsonKey(name: "max_discount_money")
  final Money? maxDiscountMoney;

  @JsonKey(name: "percentage_discount")
  final String? percentageDiscount;

  LoyaltyProgramRewardDefinition({
    this.discountType, this.scope, this.catalogObjectIds,
    this.fixedDiscountMoney, this.maxDiscountMoney, this.percentageDiscount
  });

  factory LoyaltyProgramRewardDefinition.fromJson(Map<String, dynamic> json) =>
      _$LoyaltyProgramRewardDefinitionFromJson(json);

  Map<String, dynamic> toJson() => _$LoyaltyProgramRewardDefinitionToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class CatalogObjectReference {

  @JsonKey(name: "catalog_version")
  final int? catalogVersion;

  @JsonKey(name: "object_id")
  final String? objectId;

  CatalogObjectReference({
    this.objectId, this.catalogVersion
  });

  factory CatalogObjectReference.fromJson(Map<String, dynamic> json) =>
      _$CatalogObjectReferenceFromJson(json);

  Map<String, dynamic> toJson() => _$CatalogObjectReferenceToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

@JsonSerializable(includeIfNull: false)
class LoyaltyProgramAccrualRule {

  @JsonKey(name: "accrual_type")
  final LoyaltyProgramAccrualRuleType? accrualType;

  @JsonKey(name: "category_data")
  final LoyaltyProgramAccrualRuleCategoryData? categoryData;

  @JsonKey(name:"item_variation_data")
  final LoyaltyProgramAccrualRuleItemVariationData? itemVariationData;

  final int? points;

  @JsonKey(name: "spend_data")
  final LoyaltyProgramAccrualRuleSpendData? spendData;

  @JsonKey(name: "visit_data")
  final LoyaltyProgramAccrualRuleVisitData? visitData;

  LoyaltyProgramAccrualRule({
    this.points, this.itemVariationData, this.categoryData,
    this.accrualType, this.spendData, this.visitData
  });

  factory LoyaltyProgramAccrualRule.fromJson(Map<String, dynamic> json) =>
      _$LoyaltyProgramAccrualRuleFromJson(json);

  Map<String, dynamic> toJson() => _$LoyaltyProgramAccrualRuleToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

@JsonSerializable(includeIfNull: false)
class LoyaltyProgramAccrualRuleVisitData {

  @JsonKey(name: "tax_mode")
  final LoyaltyProgramAccrualRuleTaxMode? taxMode;

  @JsonKey(name: "minimum_amount_money")
  final Money? minimumAmountMoney;

  LoyaltyProgramAccrualRuleVisitData({
    this.minimumAmountMoney, this.taxMode
  });

  factory LoyaltyProgramAccrualRuleVisitData.fromJson(Map<String, dynamic> json) =>
      _$LoyaltyProgramAccrualRuleVisitDataFromJson(json);

  Map<String, dynamic> toJson() => _$LoyaltyProgramAccrualRuleVisitDataToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull:false)
class LoyaltyProgramAccrualRuleSpendData {

  @JsonKey(name: "amount_money")
  final Money ? amountMoney;

  @JsonKey(name: "tax_mode")
  final LoyaltyProgramAccrualRuleTaxMode? taxMode;

  @JsonKey(name: "excluded_category_ids")
  final List<String>? excludedCategoryIds;

  @JsonKey(name: "excluded_item_variation_ids")
  final List<String>? excludedItemVariationIds;

  LoyaltyProgramAccrualRuleSpendData({
    this.taxMode, this.amountMoney, this.excludedCategoryIds, this.excludedItemVariationIds
  });

  factory LoyaltyProgramAccrualRuleSpendData.fromJson(Map<String, dynamic> json) =>
      _$LoyaltyProgramAccrualRuleSpendDataFromJson(json);

  Map<String, dynamic> toJson() => _$LoyaltyProgramAccrualRuleSpendDataToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class LoyaltyProgramAccrualRuleItemVariationData {

  @JsonKey(name: "item_variation_id")
  final String? itemVariationId;

  LoyaltyProgramAccrualRuleItemVariationData({
    this.itemVariationId
  });

  factory LoyaltyProgramAccrualRuleItemVariationData.fromJson(Map<String, dynamic> json) =>
      _$LoyaltyProgramAccrualRuleItemVariationDataFromJson(json);

  Map<String, dynamic> toJson() => _$LoyaltyProgramAccrualRuleItemVariationDataToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class LoyaltyProgramAccrualRuleCategoryData {

  @JsonKey(name: "category_id")
  final String? categoryId;

  LoyaltyProgramAccrualRuleCategoryData({
    this.categoryId
  });

  factory LoyaltyProgramAccrualRuleCategoryData.fromJson(Map<String, dynamic> json) =>
      _$LoyaltyProgramAccrualRuleCategoryDataFromJson(json);

  Map<String, dynamic> toJson() => _$LoyaltyProgramAccrualRuleCategoryDataToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

@JsonSerializable(includeIfNull: false)
class LoyaltyReward{
  final String? id;

  @JsonKey(name: "loyalty_account_id")
  final String? loyaltyAccountId;

  @JsonKey(name: "reward_tier_id")
  final String? rewardTierId;

  @JsonKey(name: "created_at")
  final String? createdAt;

  @JsonKey(name: "order_id")
  final String? orderId;
  
  final int? points;

  @JsonKey(name: "redeemed_at")
  final String? redeemedAt;

  final LoyaltyRewardStatus? status;

  @JsonKey(name: "updated_at")
  final String? updatedAt;

  LoyaltyReward({
    this.points, this.createdAt, this.id, this.status,
    this.updatedAt, this.orderId, this.rewardTierId, this.loyaltyAccountId,
    this.redeemedAt
  });

  factory LoyaltyReward.fromJson(Map<String, dynamic> json) =>
      _$LoyaltyRewardFromJson(json);

  Map<String, dynamic> toJson() => _$LoyaltyRewardToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class SearchLoyaltyRewardsRequestLoyaltyRewardQuery {

  @JsonKey(name: "loyalty_account_id")
  final String? loyaltyAccountId;

  final LoyaltyRewardStatus? status;

  SearchLoyaltyRewardsRequestLoyaltyRewardQuery({
    this.loyaltyAccountId, this.status
  });

  factory SearchLoyaltyRewardsRequestLoyaltyRewardQuery.fromJson(Map<String, dynamic> json) =>
      _$SearchLoyaltyRewardsRequestLoyaltyRewardQueryFromJson(json);

  Map<String, dynamic> toJson() => _$SearchLoyaltyRewardsRequestLoyaltyRewardQueryToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class GiftCard {

  final String? id;

  final GiftCardType? type;

  @JsonKey(name: "balance_money")
  final Money? balanceMoney;

  @JsonKey(name: "created_at")
  final String? createdAt;

  @JsonKey(name: "customer_ids")
  final List<String>? customerIds;

  final String? gan;

  @JsonKey(name: "gan_source")
  final GiftCardGANSource? ganSource;

  final GiftCardStatus? status;

  GiftCard({
    this.status, this.id, this.createdAt, this.customerIds,
    this.type, this.balanceMoney, this.gan, this.ganSource
  });

  factory GiftCard.fromJson(Map<String, dynamic> json) =>
      _$GiftCardFromJson(json);

  Map<String, dynamic> toJson() => _$GiftCardToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class GiftCardActivity {

  final String? id;

  @JsonKey(name: "location_id")
  final String? locationId;

  final GiftCardActivityType? type;

  @JsonKey(name: "activate_activity_details")
  final GiftCardActivityActivate? activateActivityDetails;

  @JsonKey(name: "adjust_decrement_activity_details")
  final GiftCardActivityAdjustDecrement? adjustDecrementActivityDetails;

  @JsonKey(name: "adjust_increment_activity_details")
  final GiftCardActivityAdjustIncrement? adjustIncrementActivityDetails;

  @JsonKey(name: "block_activity_details")
  final GiftCardActivityBlock? blockActivityDetails;

  @JsonKey(name: "clear_balance_activity_details")
  final GiftCardActivityClearBalance? clearBalanceActivityDetails;

  @JsonKey(name: "created_at")
  final String? createdAt;

  @JsonKey(name: "deactivate_activity_details")
  final GiftCardActivityDeactivate? deactivateActivityDetails;

  @JsonKey(name: "gift_card_balance_money")
  final Money? giftCardBalanceMoney;

  @JsonKey(name: "gift_card_gan")
  final String? giftCardGan;

  @JsonKey(name: "gift_card_id")
  final String? giftCardId;

  @JsonKey(name:"import_activity_details")
  final GiftCardActivityImport? importActivityDetails;

  @JsonKey(name: "import_reversal_activity_details")
  final GiftCardActivityImportReversal? importReversalActivityDetails;

  @JsonKey(name: "load_activity_details")
  final GiftCardActivityLoad? loadActivityDetails;

  @JsonKey(name: "redeem_activity_details")
  final GiftCardActivityRedeem? redeemActivityDetails;

  @JsonKey(name: "refund_activity_details")
  final GiftCardActivityRefund? refundActivityDetails;

  @JsonKey(name: "unblock_activity_details")
  final GiftCardActivityUnblock? unblockActivityDetails;

  @JsonKey(name: "unlinked_activity_refund_activity_details")
  final GiftCardActivityUnlinkedActivityRefund? unlinkedActivityRefundActivityDetails;



  GiftCardActivity({
    this.type, this.createdAt, this.id, this.locationId, this.activateActivityDetails,
  this.adjustDecrementActivityDetails, this.adjustIncrementActivityDetails,
  this.blockActivityDetails, this.clearBalanceActivityDetails, this.deactivateActivityDetails,
  this.giftCardBalanceMoney, this.giftCardGan, this.giftCardId,
  this.importActivityDetails, this.importReversalActivityDetails, this.loadActivityDetails,
  this.redeemActivityDetails, this.refundActivityDetails, this.unblockActivityDetails,
    this.unlinkedActivityRefundActivityDetails
  });

  factory GiftCardActivity.fromJson(Map<String, dynamic> json) =>
      _$GiftCardActivityFromJson(json);

  Map<String, dynamic> toJson() => _$GiftCardActivityToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

@JsonSerializable(includeIfNull: false)
class GiftCardActivityUnlinkedActivityRefund {

  @JsonKey(name: "amount_money")
  final Money? amountMoney;

  @JsonKey(name: "payment_id")
  final String? paymentId;

  @JsonKey(name: "reference_id")
  final String? referenceId;

  GiftCardActivityUnlinkedActivityRefund({
    this.amountMoney, this.referenceId, this.paymentId
  });

  factory GiftCardActivityUnlinkedActivityRefund.fromJson(Map<String, dynamic> json) =>
      _$GiftCardActivityUnlinkedActivityRefundFromJson(json);

  Map<String, dynamic> toJson() => _$GiftCardActivityUnlinkedActivityRefundToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

@JsonSerializable(includeIfNull: false)
class GiftCardActivityUnblock  {

  final String? reason;

  GiftCardActivityUnblock({
    this.reason
  });

  factory GiftCardActivityUnblock.fromJson(Map<String, dynamic> json) =>
      _$GiftCardActivityUnblockFromJson(json);

  Map<String, dynamic> toJson() => _$GiftCardActivityUnblockToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}


@JsonSerializable(includeIfNull: false)
class GiftCardActivityRefund {

  @JsonKey(name: "redeem_activity_id")
  final String? redeemActivityId;

  @JsonKey(name: "amount_money")
  final Money? amountMoney;

  @JsonKey(name: "payment_id")
  final String? paymentId;

  @JsonKey(name: "reference_id")
  final String? referenceId;

  GiftCardActivityRefund({
    this.paymentId, this.referenceId, this.amountMoney, this.redeemActivityId
  });

  factory GiftCardActivityRefund.fromJson(Map<String, dynamic> json) =>
      _$GiftCardActivityRefundFromJson(json);

  Map<String, dynamic> toJson() => _$GiftCardActivityRefundToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class GiftCardActivityRedeem {

  @JsonKey(name: "amount_money")
  final Money? amountMoney;

  @JsonKey(name: "payment_id")
  final String? paymentId;

  @JsonKey(name:"reference_id")
  final String? referenceId;

  GiftCardActivityRedeem({
    this.amountMoney, this.referenceId, this.paymentId
  });

  factory GiftCardActivityRedeem.fromJson(Map<String, dynamic> json) =>
      _$GiftCardActivityRedeemFromJson(json);

  Map<String, dynamic> toJson() => _$GiftCardActivityRedeemToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class GiftCardActivityLoad {

  @JsonKey(name: "amount_money")
  final Money? amountMoney;

  @JsonKey(name: "buyer_payment_instrument_ids")
  final List<String>? buyerPaymentInstrumentIds;

  @JsonKey(name: "line_item_uid")
  final String? lineItemUid;

  @JsonKey(name: "order_id")
  final String? orderId;

  @JsonKey(name: "reference_id")
  final String? referenceId;

  GiftCardActivityLoad({
    this.referenceId, this.amountMoney, this.orderId,
    this.buyerPaymentInstrumentIds, this.lineItemUid
  });

  factory GiftCardActivityLoad.fromJson(Map<String, dynamic> json) =>
      _$GiftCardActivityLoadFromJson(json);

  Map<String, dynamic> toJson() => _$GiftCardActivityLoadToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class GiftCardActivityImportReversal {

  @JsonKey(name: "amount_money")
  final Money? amountMoney;

  GiftCardActivityImportReversal({
    this.amountMoney
  });

  factory GiftCardActivityImportReversal.fromJson(Map<String, dynamic> json) =>
      _$GiftCardActivityImportReversalFromJson(json);

  Map<String, dynamic> toJson() => _$GiftCardActivityImportReversalToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class GiftCardActivityImport {
  @JsonKey(name: "amount_money")
  final Money? amountMoney;

  GiftCardActivityImport({
    this.amountMoney
  });

  factory GiftCardActivityImport.fromJson(Map<String, dynamic> json) =>
      _$GiftCardActivityImportFromJson(json);

  Map<String, dynamic> toJson() => _$GiftCardActivityImportToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class GiftCardActivityDeactivate {

  final String? reason;

  GiftCardActivityDeactivate({
    this.reason
  });

  factory GiftCardActivityDeactivate.fromJson(Map<String, dynamic> json) =>
      _$GiftCardActivityDeactivateFromJson(json);

  Map<String, dynamic> toJson() => _$GiftCardActivityDeactivateToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class GiftCardActivityClearBalance {

  final String? reason;

  GiftCardActivityClearBalance({
    this.reason
  });

  factory GiftCardActivityClearBalance.fromJson(Map<String, dynamic> json) =>
      _$GiftCardActivityClearBalanceFromJson(json);

  Map<String, dynamic> toJson() => _$GiftCardActivityClearBalanceToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class GiftCardActivityBlock {

  final String? reason;

  GiftCardActivityBlock({
    this.reason
  });

  factory GiftCardActivityBlock.fromJson(Map<String, dynamic> json) =>
      _$GiftCardActivityBlockFromJson(json);

  Map<String, dynamic> toJson() => _$GiftCardActivityBlockToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class GiftCardActivityAdjustIncrement {

  @JsonKey(name: "amount_money")
  final Money? amountMoney;

  final String? reason;

  GiftCardActivityAdjustIncrement({
  this.amountMoney,
    this.reason
  });

  factory GiftCardActivityAdjustIncrement.fromJson(Map<String, dynamic> json) =>
      _$GiftCardActivityAdjustIncrementFromJson(json);

  Map<String, dynamic> toJson() => _$GiftCardActivityAdjustIncrementToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class GiftCardActivityAdjustDecrement {

  @JsonKey(name: "amount_money")
  final Money? amountMoney;

  final String? reason;

  GiftCardActivityAdjustDecrement({
    this.amountMoney,
    this.reason
  });

  factory GiftCardActivityAdjustDecrement.fromJson(Map<String, dynamic> json) =>
      _$GiftCardActivityAdjustDecrementFromJson(json);

  Map<String, dynamic> toJson() => _$GiftCardActivityAdjustDecrementToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class GiftCardActivityActivate {

  @JsonKey(name: "amount_money")
  final Money? amountMoney;

  @JsonKey(name: "buyer_payment_instrument_ids")
  final List<String>? buyerPaymentInstrumentIds;

  @JsonKey(name: "line_item_uid")
  final String? lineItemUid;

  @JsonKey(name: "order_id")
  final String? orderId;

  @JsonKey(name: "reference_id")
  final String? referenceId;

  GiftCardActivityActivate({
    this.referenceId, this.amountMoney, this.orderId,
    this.buyerPaymentInstrumentIds, this.lineItemUid
  });

  factory GiftCardActivityActivate.fromJson(Map<String, dynamic> json) =>
      _$GiftCardActivityActivateFromJson(json);

  Map<String, dynamic> toJson() => _$GiftCardActivityActivateToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class Booking {
  
  final String? id;

  @JsonKey(name: "all_day")
  final bool? allDay;

  @JsonKey(name: "appointment_segments")
  final List<AppointmentSegment>? appointmentSegments;

  @JsonKey(name: "created_at")
  final String? createdAt;

  @JsonKey(name: "creator_details")
  final BookingCreatorDetails? creatorDetails;

  @JsonKey(name: "customer_id")
  final String? customerId;

  @JsonKey(name: "customer_note")
  final String? customerNote;

  @JsonKey(name: "location_id")
  final String? locationId;

  @JsonKey(name: "location_type")
  final BusinessAppointmentSettingsBookingLocationType? locationType;

  @JsonKey(name: "seller_note")
  final String? sellerNote;

  final BookingBookingSource? source;

  @JsonKey(name: "start_at")
  final String? startAt;

  final BookingStatus? status;

  @JsonKey(name: "transition_time_minutes")
  final int? transitionTimeMinutes;

  @JsonKey(name: "updated_at")
  final String? updatedAt;

  final int? version;

  Booking({
    this.locationId, this.id, this.createdAt, this.status,
  this.updatedAt, this.customerId, this.startAt,
  this.version, this.source, this.allDay, this.appointmentSegments,
    this.creatorDetails, this.customerNote, this.locationType,
  this.sellerNote, this.transitionTimeMinutes
  });

  factory Booking.fromJson(Map<String, dynamic> json) =>
      _$BookingFromJson(json);

  Map<String, dynamic> toJson() => _$BookingToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class BookingCreatorDetails {

  @JsonKey(name: "creator_type")
  final BookingCreatorDetailsCreatorType? creatorType;

  @JsonKey(name: "customer_id")
  final String? customerId;

  @JsonKey(name: "team_member_id")
  final String? teamMemberId;

  BookingCreatorDetails({
    this.customerId, this.creatorType, this.teamMemberId
  });

  factory BookingCreatorDetails.fromJson(Map<String, dynamic> json) =>
      _$BookingCreatorDetailsFromJson(json);

  Map<String, dynamic> toJson() => _$BookingCreatorDetailsToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class AppointmentSegment {

  @JsonKey(name: "duration_minutes")
  final int? durationMinutes;

  @JsonKey(name: "service_variation_id")
  final int? serviceVariationId;

  @JsonKey(name: "service_variation_version")
  final String? serviceVariationVersion;

  @JsonKey(name: "team_member_id")
  final String? teamMemberId;

  @JsonKey(name: "any_team_member")
  final bool? anyTeamMember;

  @JsonKey(name: "intermission_minutes")
  final int? intermissionMinutes;

  @JsonKey(name: "resource_ids")
  final List<String>? resourceIds;

  AppointmentSegment({
    this.teamMemberId, this.anyTeamMember, this.durationMinutes,
  this.intermissionMinutes, this.resourceIds, this.serviceVariationId,
  this.serviceVariationVersion
  });

  factory AppointmentSegment.fromJson(Map<String, dynamic> json) =>
      _$AppointmentSegmentFromJson(json);

  Map<String, dynamic> toJson() => _$AppointmentSegmentToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class SearchAvailabilityQuery {

  final SearchAvailabilityFilter? filter;

  SearchAvailabilityQuery({
    this.filter
  });

  factory SearchAvailabilityQuery.fromJson(Map<String, dynamic> json) =>
      _$SearchAvailabilityQueryFromJson(json);

  Map<String, dynamic> toJson() => _$SearchAvailabilityQueryToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

@JsonSerializable(includeIfNull: false)
class SearchAvailabilityFilter {

  @JsonKey(name: "start_at_range")
  final TimeRange? startAtRange;

  @JsonKey(name: "booking_id")
  final String? bookingId;

  @JsonKey(name: "location_id")
  final String? locationId;

  @JsonKey(name:"segment_filters")
  final List<SegmentFilter>? segmentFilters;

  SearchAvailabilityFilter({
    this.locationId, this.bookingId, this.segmentFilters,
    this.startAtRange
  });

  factory SearchAvailabilityFilter.fromJson(Map<String, dynamic> json) =>
      _$SearchAvailabilityFilterFromJson(json);

  Map<String, dynamic> toJson() => _$SearchAvailabilityFilterToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class SegmentFilter {

  @JsonKey(name: "service_variation_id")
  final String? serviceVariationId;

  @JsonKey(name: "team_member_id_filter")
  final FilterValue? team_memberIdFilter;

  SegmentFilter({
    this.serviceVariationId, this.team_memberIdFilter
  });

  factory SegmentFilter.fromJson(Map<String, dynamic> json) =>
      _$SegmentFilterFromJson(json);

  Map<String, dynamic> toJson() => _$SegmentFilterToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class Availability {

  @JsonKey(name: "appointment_segments")
  final List<AppointmentSegment>? appointmentSegments;

  @JsonKey(name: "location_id")
  final String? locationId;

  @JsonKey(name: "start_at")
  final String? startAt;

  Availability({
    this.locationId, this.appointmentSegments, this.startAt
  });

  factory Availability.fromJson(Map<String, dynamic> json) =>
      _$AvailabilityFromJson(json);

  Map<String, dynamic> toJson() => _$AvailabilityToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class BusinessBookingProfile {

  @JsonKey(name: "allow_user_cancel")
  final bool? allowUserCancel;

  @JsonKey(name: "booking_enabled")
  final bool? bookingEnabled;

  @JsonKey(name: "booking_policy")
  final BusinessBookingProfileBookingPolicy? bookingPolicy;

  @JsonKey(name: "business_appointment_settings")
  final BusinessAppointmentSettings? businessAppointmentSettings;

  @JsonKey(name: "created_at")
  final String? createdAt;

  @JsonKey(name: "customer_timezone_choice")
  final BusinessBookingProfileCustomerTimezoneChoice? customerTimezoneChoice;

  @JsonKey(name: "seller_id")
  final String? sellerId;

  BusinessBookingProfile({
    this.createdAt, this.allowUserCancel, this.bookingEnabled,
  this.bookingPolicy, this.businessAppointmentSettings, this.customerTimezoneChoice,
  this.sellerId
  });

  factory BusinessBookingProfile.fromJson(Map<String, dynamic> json) =>
      _$BusinessBookingProfileFromJson(json);

  Map<String, dynamic> toJson() => _$BusinessBookingProfileToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class BusinessAppointmentSettings {

  @JsonKey(name: "alignment_time")
  final BusinessAppointmentSettingsAlignmentTime? alignmentTime;

  @JsonKey(name: "any_team_member_booking_enabled")
  final bool? anyTeamMemberBookingEnabled;

  @JsonKey(name: "cancellation_fee_money")
  final Money? cancellationFeeMoney;

  @JsonKey(name: "cancellation_policy")
  final BusinessAppointmentSettingsCancellationPolicy? cancellation_policy;

  @JsonKey(name: "cancellation_policy_text")
  final String? cancellationPolicyText;

  @JsonKey(name: "cancellation_window_seconds")
  final int? cancellationWindowSeconds;

  @JsonKey(name: "location_types")
  final List<BusinessAppointmentSettingsBookingLocationType>? locationTypes;

  @JsonKey(name: "max_appointments_per_day_limit")
  final int? maxAppointmentsPerDayLimit;

  @JsonKey(name: "max_appointments_per_day_limit_type")
  final BusinessAppointmentSettingsMaxAppointmentsPerDayLimitType? maxAppointmentsPerDayLimitType;

  @JsonKey(name: "max_booking_lead_time_seconds")
  final int? maxBookingLeadTimeSeconds;

  @JsonKey(name: "min_booking_lead_time_seconds")
  final int? minBookingLeadTimeSeconds;

  @JsonKey(name:"multiple_service_booking_enabled")
  final bool? multipleServiceBookingEnabled;

  BusinessAppointmentSettings({
    this.alignmentTime, this.anyTeamMemberBookingEnabled, this.cancellation_policy,
  this.cancellationFeeMoney, this.cancellationPolicyText, this.cancellationWindowSeconds,
    this.locationTypes, this.maxAppointmentsPerDayLimit, this.maxAppointmentsPerDayLimitType,
    this.maxBookingLeadTimeSeconds, this.minBookingLeadTimeSeconds, this.multipleServiceBookingEnabled
  });

  factory BusinessAppointmentSettings.fromJson(Map<String, dynamic> json) =>
      _$BusinessAppointmentSettingsFromJson(json);

  Map<String, dynamic> toJson() => _$BusinessAppointmentSettingsToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class TeamMemberBookingProfile {

  final String? description;

  @JsonKey(name: "display_name")
  final String? displayName;

  @JsonKey(name: "is_bookable")
  final bool? isBookable;

  @JsonKey(name: "profile_image_url")
  final String? profileImageUrl;

  @JsonKey(name: "team_member_id")
  final String? teamMemberId;

  TeamMemberBookingProfile({
    this.teamMemberId, this.description, this.displayName,
  this.isBookable, this.profileImageUrl
  });

  factory TeamMemberBookingProfile.fromJson(Map<String, dynamic> json) =>
      _$TeamMemberBookingProfileFromJson(json);

  Map<String, dynamic> toJson() => _$TeamMemberBookingProfileToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class Merchant {

  final String? id;

  final String? country;

  @JsonKey(name: "business_name")
  final String? businessName;

  @JsonKey(name: "created_at")
  final String? createdAt;

  final String? currency;

  @JsonKey(name: "language_code")
  final String? languageCode;

  @JsonKey(name: "main_location_id")
  final String? mainLocationId;

  final MerchantStatus? status;

  Merchant({
    this.createdAt, this.status, this.id, this.languageCode,
    this.country, this.currency, this.businessName,
    this.mainLocationId
  });

  factory Merchant.fromJson(Map<String, dynamic> json) =>
      _$MerchantFromJson(json);

  Map<String, dynamic> toJson() => _$MerchantToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class Location {

  final String? id;
  
  final Address? address;

  @JsonKey(name: "business_email")
  final String? businessEmail;

  @JsonKey(name: "business_hours")
  final BusinessHours? businessHours;

  @JsonKey(name: "business_name")
  final String? businessName;

  final List<LocationCapability>? capabilities;

  final SquareCoordinates? coordinates;

  final String? country;

  @JsonKey(name: "created_at")
  final String? createdAt;

  final String? currency;

  final String? description;

  @JsonKey(name: "facebook_url")
  final String? facebookUrl;

  @JsonKey(name: "full_format_logo_url")
  final String? fullFormatLogoUrl;

  @JsonKey(name: "instagram_username")
  final String? instagramUsername;

  @JsonKey(name: "language_code")
  final String? languageCode;

  @JsonKey(name: "logo_url")
  final String? logoUrl;

  final String? mcc;

  @JsonKey(name: "merchant_id")
  final String? merchantId;

  final String? name;

  @JsonKey(name: "phone_number")
  final String? phoneNumber;

  @JsonKey(name: "pos_background_url")
  final String? posBackgroundUrl;

  final LocationStatus? status;

  @JsonKey(name: "tax_ids")
  final TaxIds? taxIds;

  final String? timezone;

  @JsonKey(name: "twitter_username")
  final String? twitterUsername;

  final LocationType? type;

  @JsonKey(name: "website_url")
  final String? websiteUrl;

  Location({
  this.businessName, this.currency, this.country,
    this.languageCode, this.id, this.status,
  this.createdAt, this.description, this.type, this.name,
    this.phoneNumber, this.address, this.taxIds, this.timezone,
  this.merchantId, this.businessEmail, this.businessHours, this.capabilities,
  this.coordinates, this.facebookUrl, this.fullFormatLogoUrl,
    this.instagramUsername, this.logoUrl, this.mcc, this.posBackgroundUrl,
  this.twitterUsername, this.websiteUrl
  });

  factory Location.fromJson(Map<String, dynamic> json) =>
      _$LocationFromJson(json);

  Map<String, dynamic> toJson() => _$LocationToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull:false)
class TaxIds {
  @JsonKey(name: "eu_vat")
  final String? euVat;
  
  @JsonKey(name: "fr_naf")
  final String? frNaf;

  @JsonKey(name: "fr_siret")
  final String? frSiret;

  TaxIds({
    this.euVat, this.frNaf, this.frSiret
  });

  factory TaxIds.fromJson(Map<String, dynamic> json) =>
      _$TaxIdsFromJson(json);

  Map<String, dynamic> toJson() => _$TaxIdsToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class SquareCoordinates {
  final String? latitude;
  
  final String? longitude;

  SquareCoordinates({
    this.longitude, this.latitude
  });

  factory SquareCoordinates.fromJson(Map<String, dynamic> json) =>
      _$SquareCoordinatesFromJson(json);

  Map<String, dynamic> toJson() => _$SquareCoordinatesToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

@JsonSerializable(includeIfNull: false)
class BusinessHours {

  final List<BusinessHoursPeriod>? periods;

  BusinessHours({
    this.periods
  });

  factory BusinessHours.fromJson(Map<String, dynamic> json) =>
      _$BusinessHoursFromJson(json);

  Map<String, dynamic> toJson() => _$BusinessHoursToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

@JsonSerializable(includeIfNull: false)
class BusinessHoursPeriod {

  @JsonKey(name: "day_of_week")
  final DayOfWeek? dayOfWeek;

  @JsonKey(name: "end_local_time")
  final String? endLocalTime;

  @JsonKey(name: "start_local_time")
  final String? startLocalTime;

  BusinessHoursPeriod({
    this.dayOfWeek, this.endLocalTime, this.startLocalTime
  });

  factory BusinessHoursPeriod.fromJson(Map<String, dynamic> json) =>
      _$BusinessHoursPeriodFromJson(json);

  Map<String, dynamic> toJson() => _$BusinessHoursPeriodToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class DeviceCode {
  final String? id;

  @JsonKey(name: "product_type")
  final ProductType? productType;

  final String? code;

  @JsonKey(name: "created_at")
  final String? createdAt;

  @JsonKey(name: "device_id")
  final String? deviceId;

  @JsonKey(name: "location_id")
  final String? locationId;

  final String? name;

  @JsonKey(name: "pair_by")
  final String? pairBy;

  @JsonKey(name: "paired_at")
  final String? pairedAt;

  final DeviceCodeStatus? status;

  @JsonKey(name: "status_changed_at")
  final String? statusChangedAt;

  DeviceCode({
    this.name, this.createdAt, this.status, this.id,
    this.locationId, this.productType, this.code,
  this.deviceId, this.pairBy, this.pairedAt,
    this.statusChangedAt
  });

  factory DeviceCode.fromJson(Map<String, dynamic> json) =>
      _$DeviceCodeFromJson(json);

  Map<String, dynamic> toJson() => _$DeviceCodeToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class CashDrawerShiftSummary {

  final String? id;

  @JsonKey(name: "closed_at")
  final String? closedAt;

  @JsonKey(name: "closed_cash_money")
  final Money? closedCashMoney;

  final String? description;

  @JsonKey(name: "ended_at")
  final String? endedAt;

  @JsonKey(name: "expected_cash_money")
  final Money? expectedCashMoney;

  @JsonKey(name: "opened_at")
  final String? openedAt;

  @JsonKey(name:"opened_cash_money")
  final Money? openedCashMoney;

  final CashDrawerShiftState? state;

  CashDrawerShiftSummary({
    this.id, this.description, this.state, this.closedAt,
  this.closedCashMoney, this.endedAt, this.expectedCashMoney,
  this.openedAt, this.openedCashMoney
  });

  factory CashDrawerShiftSummary.fromJson(Map<String, dynamic> json) =>
      _$CashDrawerShiftSummaryFromJson(json);

  Map<String, dynamic> toJson() => _$CashDrawerShiftSummaryToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class CashDrawerShiftEvent {

  final String? id;

  @JsonKey(name: "created_at")
  final String? createdAt;

  final String? description;

  @JsonKey(name: "employee_id")
  final String? employeeId;

  @JsonKey(name: "event_money")
  final Money? eventMoney;

  @JsonKey(name: "event_type")
  final CashDrawerEventType? eventType;

  CashDrawerShiftEvent({
    this.description, this.id, this.createdAt,
  this.employeeId, this.eventMoney, this.eventType

  });

  factory CashDrawerShiftEvent.fromJson(Map<String, dynamic> json) =>
      _$CashDrawerShiftEventFromJson(json);

  Map<String, dynamic> toJson() => _$CashDrawerShiftEventToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class TeamMember {

  final String? id;

  @JsonKey(name: "assigned_locations")
  final TeamMemberAssignedLocations? assignedLocations;

  @JsonKey(name: "created_at")
  final String? createdAt;

  @JsonKey(name: "email_address")
  final String? emailAddress;

  @JsonKey(name: "family_name")
  final String? familyName;

  @JsonKey(name: "given_name")
  final String? givenName;

  @JsonKey(name: "is_owner")
  final bool? is_owner;

  @JsonKey(name: "phone_number")
  final String? phoneNumber;

  @JsonKey(name: "reference_id")
  final String? referenceId;

  final TeamMemberStatus? status;

  @JsonKey(name: "updated_at")
  final String? updatedAt;

  TeamMember({
  this.createdAt, this.id, this.status, this.phoneNumber,
  this.updatedAt, this.referenceId, this.emailAddress,
  this.givenName, this.familyName, this.assignedLocations,
    this.is_owner

  });

  factory TeamMember.fromJson(Map<String, dynamic> json) =>
      _$TeamMemberFromJson(json);

  Map<String, dynamic> toJson() => _$TeamMemberToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

@JsonSerializable(includeIfNull: false)
class TeamMemberAssignedLocations {

  final TeamMemberAssignedLocationsAssignmentType? assignment_type;

  @JsonKey(name: "location_ids")
  final List<String>? locationIds;

  TeamMemberAssignedLocations({
    this.locationIds, this.assignment_type

  });

  factory TeamMemberAssignedLocations.fromJson(Map<String, dynamic> json) =>
      _$TeamMemberAssignedLocationsFromJson(json);

  Map<String, dynamic> toJson() => _$TeamMemberAssignedLocationsToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

@JsonSerializable(includeIfNull: false)
class BreakType {
  final String? id;

  @JsonKey(name: "break_name")
  final String? breakMame;

  @JsonKey(name: "expected_duration")
  final String? expectedDuration;

  @JsonKey(name: "is_paid")
  final bool? isPaid;

  @JsonKey(name: "location_id")
  final String? locationId;

  @JsonKey(name: "created_at")
  final String? createdAt;

  @JsonKey(name: "updated_at")
  final String? updatedAt;
  
  final int? version;

  BreakType({

      this.updatedAt, this.id, this.createdAt, this.locationId,
  this.version, this.breakMame, this.expectedDuration, this.isPaid
  });

  factory BreakType.fromJson(Map<String, dynamic> json) =>
      _$BreakTypeFromJson(json);

  Map<String, dynamic> toJson() => _$BreakTypeToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class Shift {

  final String? id;

  @JsonKey(name: "start_at")
  final String? startAt;

  final List<Break>? breaks;

  @JsonKey(name: "created_at")
  final String? createdAt;

  @JsonKey(name: "end_at")
  final String? endAt;

  @JsonKey(name: "location_id")
  final String? locationId;

  final ShiftStatus? status;

  @JsonKey(name: "team_member_id")
  final String? teamMemberId;

  final String? timezone;

  @JsonKey(name: "updated_at")
  final String? updatedAt;

  final int? version;

  final ShiftWage? wage;

  @JsonKey(name: "employee_id")
  final String? employeeId;

  Shift({
    this.version, this.locationId, this.createdAt, this.id,
    this.updatedAt, this.status, this.employeeId, this.timezone,
  this.teamMemberId, this.startAt, this.endAt, this.breaks,
  this.wage
  });

  factory Shift.fromJson(Map<String, dynamic> json) =>
      _$ShiftFromJson(json);

  Map<String, dynamic> toJson() => _$ShiftToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class Break {

  final String? id;

  @JsonKey(name: "break_type_id")
  final String? breakTypeId;

  @JsonKey(name: "expected_duration")
  final String? expectedDuration;

  @JsonKey(name: "is_paid")
  final bool? isPaid;

  final String? name;

  @JsonKey(name: "start_at")
  final String? startAt;

  @JsonKey(name: "end_at")
  final String? endAt;

  Break({
    this.id, this.endAt, this.startAt, this.isPaid, this.expectedDuration,
    this.name, this.breakTypeId
  });

  factory Break.fromJson(Map<String, dynamic> json) =>
      _$BreakFromJson(json);

  Map<String, dynamic> toJson() => _$BreakToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull:false)
class ShiftWage {

  @JsonKey(name: "hourly_rate")
  final Money? hourlyRate;

  final String? title;

  ShiftWage({
    this.title, this.hourlyRate
  });

  factory ShiftWage.fromJson(Map<String, dynamic> json) =>
      _$ShiftWageFromJson(json);

  Map<String, dynamic> toJson() => _$ShiftWageToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class TeamMemberWage {

  final String? id;

  @JsonKey(name: "hourly_rate")
  final Money? hourlyRate;

  @JsonKey(name: "team_member_id")
  final String? teamMemberId;

  final String? title;

  TeamMemberWage({
    this.hourlyRate, this.title, this.teamMemberId, this.id
  });

  factory TeamMemberWage.fromJson(Map<String, dynamic> json) =>
      _$TeamMemberWageFromJson(json);

  Map<String, dynamic> toJson() => _$TeamMemberWageToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class WorkweekConfig {

  final String? id;

  @JsonKey(name: "start_of_day_local_time")
  final String? startOfDayLocalTime;

  @JsonKey(name: "start_of_week")
  final Weekday? startOfWeek;

  @JsonKey(name: "created_at")
  final String? createdAt;

  @JsonKey(name: "updated_at")
  final String? updatedAt;

  final int? version;

  WorkweekConfig({
    this.id, this.updatedAt, this.createdAt, this.version,
  this.startOfDayLocalTime, this.startOfWeek
  });

  factory WorkweekConfig.fromJson(Map<String, dynamic> json) =>
      _$WorkweekConfigFromJson(json);

  Map<String, dynamic> toJson() => _$WorkweekConfigToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull:false)
class BankAccount {
  final String? id;

  @JsonKey(name: "account_number_suffix")
  final String? accountNumberSuffix;

  @JsonKey(name: "account_type")
  final BankAccountType? accountType;

  final String? country;

  final bool? creditable;

  final String? currency;

  final bool? debitable;

  @JsonKey(name: "holder_name")
  final String? holderName;

  @JsonKey(name: "primary_bank_identification_number")
  final String? primaryBankIdentificationNumber;

  final BankAccountStatus? status;
  
  @JsonKey(name: "bank_name")
  final String? bankName;

  @JsonKey(name: "debit_mandate_reference_id")
  final String? debitMandateReferenceId;

  final String? fingerprint;
  
  @JsonKey(name: "location_id")
  final String? locationId;
  
  @JsonKey(name: "reference_id")
  final String? referenceId;

  @JsonKey(name: "secondary_bank_identification_number")
  final String? secondaryBankIdentificationNumber;

  final int? version;

  BankAccount({
    this.id, this.version, this.status, this.locationId, this.referenceId,
  this.country, this.currency, this.fingerprint, this.accountType,
  this.accountNumberSuffix, this.bankName, this.creditable,
  this.debitable, this.debitMandateReferenceId, this.holderName,
  this.primaryBankIdentificationNumber, this.secondaryBankIdentificationNumber
  });

  factory BankAccount.fromJson(Map<String, dynamic> json) =>
      _$BankAccountFromJson(json);

  Map<String, dynamic> toJson() => _$BankAccountToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

@JsonSerializable(includeIfNull: false)
class Site {
  final String? id;

  @JsonKey(name: "created_at")
  final String? createdAt;

  final String? domain;

  @JsonKey(name: "is_published")
  final bool? isPublished;

  @JsonKey(name: "site_title")
  final String? siteTitle;

  @JsonKey(name: "updated_at")
  final String? updatedAt;

  Site({
    this.id, this.createdAt, this.updatedAt, this.domain,
  this.isPublished, this.siteTitle
  });

  factory Site.fromJson(Map<String, dynamic> json) =>
      _$SiteFromJson(json);

  Map<String, dynamic> toJson() => _$SiteToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class TerminalCheckout {
  final String? id;

  @JsonKey(name: "amount_money")
  final Money? amountMoney;

  @JsonKey(name: "device_options")
  final DeviceCheckoutOptions? deviceOptions;

  @JsonKey(name: "app_id")
  final String? appId;

  @JsonKey(name: "cancel_reason")
  final ActionCancelReason? cancelReason;

  @JsonKey(name: "created_at")
  final String? createdAt;

  @JsonKey(name: "customer_id")
  final String? customerId;
  
  @JsonKey(name: "deadline_duration")
  final String? deadlineDuration;
  
  @JsonKey(name: "location_id")
  final String? locationId;
  
  final String? note;
  
  @JsonKey(name: "payment_ids")
  final List<String>? paymentIds;

  @JsonKey(name: "payment_type")
  final CheckoutOptionsPaymentType? paymentType;

  @JsonKey(name: "reference_id")
  final String? referenceId;

  final String? status;

  @JsonKey(name: "updated_at")
  final String? updatedAt;

  TerminalCheckout({
    this.updatedAt, this.createdAt, this.id, this.referenceId,
  this.locationId, this.status, this.customerId, this.amountMoney,
  this.note, this.cancelReason, this.appId, this.deadlineDuration,
  this.deviceOptions, this.paymentIds, this.paymentType
 });

  factory TerminalCheckout.fromJson(Map<String, dynamic> json) =>
      _$TerminalCheckoutFromJson(json);

  Map<String, dynamic> toJson() => _$TerminalCheckoutToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class DeviceCheckoutOptions {

  @JsonKey(name: "device_id")
  final String? deviceId;

  @JsonKey(name: "skip_receipt_screen")
  final bool? skipReceiptScreen;

  @JsonKey(name: "tip_settings")
  final TipSettings? tipSettings;

  DeviceCheckoutOptions({
    this.deviceId, this.skipReceiptScreen, this.tipSettings
  });

  factory DeviceCheckoutOptions.fromJson(Map<String, dynamic> json) =>
      _$DeviceCheckoutOptionsFromJson(json);

  Map<String, dynamic> toJson() => _$DeviceCheckoutOptionsToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class TipSettings {

  @JsonKey(name: "allow_tipping")
  final bool? allowTipping;
  
  @JsonKey(name: "custom_tip_field")
  final bool? customTipField;

  @JsonKey(name: "separate_tip_screen")
  final bool? separateTipScreen;

  @JsonKey(name: "smart_tipping")
  final bool? smartTipping;

  @JsonKey(name: "tip_percentages")
  final List<int>? tipPercentages;

  TipSettings({
    this.allowTipping, this.customTipField, this.separateTipScreen,
  this.smartTipping, this.tipPercentages
  });

  factory TipSettings.fromJson(Map<String, dynamic> json) =>
      _$TipSettingsFromJson(json);

  Map<String, dynamic> toJson() => _$TipSettingsToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class TerminalCheckoutResponse {

  final List<SquareError>? errors;

  @JsonKey(name: "checkout")
  final TerminalCheckout? termCheckout;

  final List<TerminalCheckout>? checkouts;

  final String? cursor;

  TerminalCheckoutResponse({
    this.errors, this.termCheckout, this.checkouts, this.cursor
  });

  factory TerminalCheckoutResponse.fromJson(Map<String, dynamic> json) =>
      _$TerminalCheckoutResponseFromJson(json);

  Map<String, dynamic> toJson() => _$TerminalCheckoutResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class TerminalRefundResponse {

  final List<SquareError>? errors;

  @JsonKey(name: "checkout")
  final TerminalRefund? refund;

  final List<TerminalRefund>? refunds;

  final String? cursor;

  TerminalRefundResponse({
    this.errors, this.refund, this.refunds, this.cursor
  });

  factory TerminalRefundResponse.fromJson(Map<String, dynamic> json) =>
      _$TerminalRefundResponseFromJson(json);

  Map<String, dynamic> toJson() => _$TerminalRefundResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class CreateTerminalCheckoutRequest {

  @JsonKey(name: "idempotency_key")
  final String idempotencyKey;

  final TerminalCheckout checkout;

  CreateTerminalCheckoutRequest({
    required this.idempotencyKey, required this.checkout
  });

  factory CreateTerminalCheckoutRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateTerminalCheckoutRequestFromJson(json);

  Map<String, dynamic> toJson() => _$CreateTerminalCheckoutRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class CreateOrderRequest {

  @JsonKey(name: "idempotency_key")
  final String idempotencyKey;

  final Order? order;

  CreateOrderRequest({
    required this.idempotencyKey, required this.order
  });

  factory CreateOrderRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateOrderRequestFromJson(json);

  Map<String, dynamic> toJson() => _$CreateOrderRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class CalculateOrderRequest {

  @JsonKey(name: "idempotency_key")
  final String idempotencyKey;

  final Order? order;

  @JsonKey(name: "proposed_rewards")
  final List<OrderReward>? proposedRewards;


  CalculateOrderRequest({
    required this.idempotencyKey, required this.order, this.proposedRewards
  });

  factory CalculateOrderRequest.fromJson(Map<String, dynamic> json) =>
      _$CalculateOrderRequestFromJson(json);

  Map<String, dynamic> toJson() => _$CalculateOrderRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class CloneOrderRequest {

  @JsonKey(name: "idempotency_key")
  final String? idempotencyKey;

  @JsonKey(name: "order_id")
  final String orderId;

  final int? version;

  CloneOrderRequest({
    this.idempotencyKey, required this.orderId, this.version
  });

  factory CloneOrderRequest.fromJson(Map<String, dynamic> json) =>
      _$CloneOrderRequestFromJson(json);

  Map<String, dynamic> toJson() => _$CloneOrderRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class UpdateOrderRequest {

  @JsonKey(name: "idempotency_key")
  final String? idempotencyKey;

  final Order? order;

  @JsonKey(name: "fields_to_clear")
  final List<String>? fieldsToClear;

  UpdateOrderRequest({
    this.idempotencyKey, this.fieldsToClear, this.order
  });

  factory UpdateOrderRequest.fromJson(Map<String, dynamic> json) =>
      _$UpdateOrderRequestFromJson(json);

  Map<String, dynamic> toJson() => _$UpdateOrderRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class PayOrderRequest {

  @JsonKey(name: "idempotency_key")
  final String? idempotencyKey;

  @JsonKey(name: "order_version")
  final int? orderVersion;

  @JsonKey(name: "payment_ids")
  final List<String>? paymentIds;

  PayOrderRequest({
    this.idempotencyKey, this.orderVersion, this.paymentIds
  });

  factory PayOrderRequest.fromJson(Map<String, dynamic> json) =>
      _$PayOrderRequestFromJson(json);

  Map<String, dynamic> toJson() => _$PayOrderRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}


@JsonSerializable(includeIfNull: false)
class SearchOrderRequest {

  @JsonKey(name: "location_ids")
  final List<String>? locationIds;

  final String? cursor;

  final SearchOrdersQuery? query;

  final int? limit;

  @JsonKey(name: "return_entries")
  final bool? returnEntries;


  SearchOrderRequest({
    this.limit,
    this.query, this.cursor, this.locationIds, this.returnEntries
  });

  factory SearchOrderRequest.fromJson(Map<String, dynamic> json) =>
      _$SearchOrderRequestFromJson(json);

  Map<String, dynamic> toJson() => _$SearchOrderRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class SearchOrdersQuery {
  final SearchOrdersFilter? filter;

  final SearchOrdersSort? sort;

  SearchOrdersQuery({
    this.sort, this.filter
  });

  factory SearchOrdersQuery.fromJson(Map<String, dynamic> json) =>
      _$SearchOrdersQueryFromJson(json);

  Map<String, dynamic> toJson() => _$SearchOrdersQueryToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}



@JsonSerializable(includeIfNull: false)
class SearchOrdersSort {

  @JsonKey(name: "sort_field")
  final String? sortField;

  @JsonKey(name: "sort_order")
  final SortOrder? sortOrder;

  SearchOrdersSort({
    this.sortOrder, this.sortField
  });

  factory SearchOrdersSort.fromJson(Map<String, dynamic> json) =>
      _$SearchOrdersSortFromJson(json);

  Map<String, dynamic> toJson() => _$SearchOrdersSortToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

@JsonSerializable(includeIfNull: false)
class SearchOrdersFilter {

  @JsonKey(name: "customer_filter")
  final SearchOrdersCustomerFilter? customerFilter;

  @JsonKey(name: "date_time_filter")
  final SearchOrdersDateTimeFilter? dateTimeFilter;

  @JsonKey(name: "fulfillment_filter")
  final SearchOrdersFulfillmentFilter? fulfillmentFilter;

  @JsonKey(name: "source_filter")
  final SearchOrdersSourceFilter? sourceFilter;


  @JsonKey(name: "state_filter")
  final SearchOrdersStateFilter? stateFilter;

  SearchOrdersFilter({
    this.customerFilter, this.dateTimeFilter, this.fulfillmentFilter,
    this.sourceFilter, this.stateFilter
  });

  factory SearchOrdersFilter.fromJson(Map<String, dynamic> json) =>
      _$SearchOrdersFilterFromJson(json);

  Map<String, dynamic> toJson() => _$SearchOrdersFilterToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

@JsonSerializable(includeIfNull: false)
class SearchOrdersStateFilter {
  final List<OrderState>? states;

  SearchOrdersStateFilter({
    this.states
  });

  factory SearchOrdersStateFilter.fromJson(Map<String, dynamic> json) =>
      _$SearchOrdersStateFilterFromJson(json);

  Map<String, dynamic> toJson() => _$SearchOrdersStateFilterToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class SearchOrdersSourceFilter {

  @JsonKey(name: "source_names")
  final List<String>? sourceNames;

  SearchOrdersSourceFilter({
    this.sourceNames
  });

  factory SearchOrdersSourceFilter.fromJson(Map<String, dynamic> json) =>
      _$SearchOrdersSourceFilterFromJson(json);

  Map<String, dynamic> toJson() => _$SearchOrdersSourceFilterToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull:false)
class SearchOrdersFulfillmentFilter {

  @JsonKey(name: "fulfillment_states")
  final List<OrderFulfillmentState>? fulfillmentStates;

  @JsonKey(name: "fulfillment_types")
  final List<OrderFulfillmentType>? fulfillmentTypes;

  SearchOrdersFulfillmentFilter({
    this.fulfillmentStates, this.fulfillmentTypes
  });

  factory SearchOrdersFulfillmentFilter.fromJson(Map<String, dynamic> json) =>
      _$SearchOrdersFulfillmentFilterFromJson(json);

  Map<String, dynamic> toJson() => _$SearchOrdersFulfillmentFilterToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class SearchOrdersDateTimeFilter {

  @JsonKey(name: "closed_at")
  final TimeRange? closedAt;

  @JsonKey(name: "created_at")
  final TimeRange? createdAt;

  @JsonKey(name: "updated_at")
  final TimeRange? updatedAt;

  SearchOrdersDateTimeFilter({
    this.updatedAt, this.createdAt, this.closedAt
  });

  factory SearchOrdersDateTimeFilter.fromJson(Map<String, dynamic> json) =>
      _$SearchOrdersDateTimeFilterFromJson(json);

  Map<String, dynamic> toJson() => _$SearchOrdersDateTimeFilterToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

@JsonSerializable(includeIfNull: false)
class SearchOrdersCustomerFilter {

  @JsonKey(name: "customer_ids")
  final List<String>? customerIds;

  SearchOrdersCustomerFilter({
    this.customerIds
  });

  factory SearchOrdersCustomerFilter.fromJson(Map<String, dynamic> json) =>
      _$SearchOrdersCustomerFilterFromJson(json);

  Map<String, dynamic> toJson() => _$SearchOrdersCustomerFilterToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull:false)
class SearchTerminalRequest {
  final TerminalSearchQuery query;
  final String? cursor;
  final int limit;

  SearchTerminalRequest({
    this.cursor, required this.query, required this.limit
  });

  factory SearchTerminalRequest.fromJson(Map<String, dynamic> json) =>
      _$SearchTerminalRequestFromJson(json);

  Map<String, dynamic> toJson() => _$SearchTerminalRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class CreateRefundRequest {

  @JsonKey(name: "idempotency_key")
  final String idempotencyKey;

  final TerminalRefund refund;

  CreateRefundRequest({
    required this.idempotencyKey, required this.refund
  });

  factory CreateRefundRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateRefundRequestFromJson(json);

  Map<String, dynamic> toJson() => _$CreateRefundRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class TerminalRefund{
  final String? id;

  @JsonKey(name: "amount_money")
  final Money? amountMoney;

  @JsonKey(name: "payment_id")
  final String? paymentId;

  @JsonKey(name: "app_id")
  final String? appId;

  @JsonKey(name: "cancel_reason")
  final ActionCancelReason? cancelReason;

  @JsonKey(name: "created_at")
  final String? createdAt;

  @JsonKey(name: "deadline_duration")
  final String? deadlineDuration;

  @JsonKey(name: "device_id")
  final String? deviceId;

  @JsonKey(name: "location_id")
  final String? locationId;

  @JsonKey(name: "order_id")
  final String? orderId;

  final String? reason;
  
  @JsonKey(name: "refund_id")
  final String? refundId;
  
  final TerimnalRefundStatus? status;

  @JsonKey(name: "updated_at")
  final String? updatedAt;

  TerminalRefund({
    this.createdAt, this.status, this.deviceId, this.deadlineDuration,
  this.appId, this.cancelReason, this.amountMoney, this.locationId,
  this.id, this.updatedAt, this.reason, this.orderId,
    this.paymentId, this.refundId
  });

  factory TerminalRefund.fromJson(Map<String, dynamic> json) =>
      _$TerminalRefundFromJson(json);

  Map<String, dynamic> toJson() => _$TerminalRefundToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class TerminalSearchQuery {
  final TerminalQueryFilter? filter;
  final TerminalQuerySort? sort;

  TerminalSearchQuery({
    this.filter, this.sort
  });

  factory TerminalSearchQuery.fromJson(Map<String, dynamic> json) =>
      _$TerminalSearchQueryFromJson(json);

  Map<String, dynamic> toJson() => _$TerminalSearchQueryToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class TerminalQueryFilter {

  @JsonKey(name: "created_at")
  final String? createdAt;

  @JsonKey(name: "device_id")
  final String? deviceId;

  final TerminalStatus? status;

  TerminalQueryFilter({
    this.deviceId, this.status, this.createdAt
  });

  factory TerminalQueryFilter.fromJson(Map<String, dynamic> json) =>
      _$TerminalQueryFilterFromJson(json);

  Map<String, dynamic> toJson() => _$TerminalQueryFilterToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
  
}

@JsonSerializable(includeIfNull: false)
class TerminalQuerySort {

  @JsonKey(name: "sort_order")
  final SortOrder? sortOrder;

  TerminalQuerySort({
    this.sortOrder
  });

  factory TerminalQuerySort.fromJson(Map<String, dynamic> json) =>
      _$TerminalQuerySortFromJson(json);

  Map<String, dynamic> toJson() => _$TerminalQuerySortToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class OrderResponse {

  final List<SquareError>? errors;

  final Order? order;

  final List<Order>? orders;

  final String? cursor;

  @JsonKey(name: "order_entries")
  final OrderEntry? orderEntries;


  OrderResponse({
    this.errors, this.order, this.orders, this.cursor, this.orderEntries
  });

  factory OrderResponse.fromJson(Map<String, dynamic> json) =>
      _$OrderResponseFromJson(json);

  Map<String, dynamic> toJson() => _$OrderResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class BatchOrderRequest {

  @JsonKey(name: "location_id")
  final String? locationId;

  @JsonKey(name: "order_ids")
  final List<String> orderIds;

  BatchOrderRequest({
    this.locationId, required this.orderIds
  });

  factory BatchOrderRequest.fromJson(Map<String, dynamic> json) =>
      _$BatchOrderRequestFromJson(json);

  Map<String, dynamic> toJson() => _$BatchOrderRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class CreateSubscriptionRequest {

  @JsonKey(name: "idempotency_key")
  final String? idempotencyKey;

  @JsonKey(name: "location_id")
  final String locationId;

  @JsonKey(name: "plan_id")
  final String planId;

  @JsonKey(name: "customer_id")
  final String customerId;

  @JsonKey(name: "start_date")
  final String? startDate;

  @JsonKey(name: "canceled_date")
  final String? canceledDate;

  @JsonKey(name: "tax_percentage")
  final String? taxPercentage;

  @JsonKey(name: "price_override_money")
  final Money? priceOverrideMoney;

  @JsonKey(name: "card_id")
  final String? cardId;

  final String? timezone;

  final SubscriptionSource? source;

  CreateSubscriptionRequest({
  required this.locationId, this.idempotencyKey, required this.customerId,
  this.timezone, this.source, this.cardId, this.taxPercentage,
  this.startDate, this.priceOverrideMoney, this.canceledDate,
  required this.planId
  });

  factory CreateSubscriptionRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateSubscriptionRequestFromJson(json);

  Map<String, dynamic> toJson() => _$CreateSubscriptionRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class SubscriptionResponse {

  final List<SquareError>? errors;

  final Subscription? subscription;

  final List<Subscription>? subscriptions;

  final String? cursor;

  final List<SubscriptionAction>? actions;



  SubscriptionResponse({
    this.errors, this.subscriptions, this.subscription, this.cursor, this.actions
  });

  factory SubscriptionResponse.fromJson(Map<String, dynamic> json) =>
      _$SubscriptionResponseFromJson(json);

  Map<String, dynamic> toJson() => _$SubscriptionResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class SearchSubscriptionRequest {

  final String? cursor;
  final int? limit;

  final SearchSubscriptionsQuery? query;
  final List<String>? include;

  SearchSubscriptionRequest({
    this.cursor, this.query, this.limit, this.include
  });

  factory SearchSubscriptionRequest.fromJson(Map<String, dynamic> json) =>
      _$SearchSubscriptionRequestFromJson(json);

  Map<String, dynamic> toJson() => _$SearchSubscriptionRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class SubscriptionEventResponse {

  final List<SquareError>? errors;

  @JsonKey(name: "subscription_event")
  final SubscriptionEvent? subscriptionEvent;

  @JsonKey(name: "subscription_events")
  final List<SubscriptionEvent>? subscriptionEvents;

  final String? cursor;

  SubscriptionEventResponse({
    this.errors, this.subscriptionEvents, this.subscriptionEvent, this.cursor
  });

  factory SubscriptionEventResponse.fromJson(Map<String, dynamic> json) =>
      _$SubscriptionEventResponseFromJson(json);

  Map<String, dynamic> toJson() => _$SubscriptionEventResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class SubscriptionStateRequest {

  @JsonKey(name: "pause_effective_date")
  final String? pauseEffectiveDate;

  @JsonKey(name: "pause_cycle_duration")
  final int? pauseCycleDuration;

  @JsonKey(name: "resume_effective_date")
  final String? resumeEffectiveDate;

  @JsonKey(name: "resume_change_timing")
  final ChangeTiming? resumeChangeTiming;

  @JsonKey(name: "pause_reason")
  final String? pauseReason;

  SubscriptionStateRequest({
    this.pauseCycleDuration, this.pauseEffectiveDate, this.pauseReason,
  this.resumeChangeTiming, this.resumeEffectiveDate
  });

  factory SubscriptionStateRequest.fromJson(Map<String, dynamic> json) =>
      _$SubscriptionStateRequestFromJson(json);

  Map<String, dynamic> toJson() => _$SubscriptionStateRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}


@JsonSerializable(includeIfNull: false)
class InvoiceResponse {

  final List<SquareError>? errors;

  final Invoice? invoice;

  final List<Invoice>? invoices;

  final String? cursor;


  InvoiceResponse({
    this.errors, this.invoice, this.invoices, this.cursor
  });

  factory InvoiceResponse.fromJson(Map<String, dynamic> json) =>
      _$InvoiceResponseFromJson(json);

  Map<String, dynamic> toJson() => _$InvoiceResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class CreateInvoiceRequest {

  @JsonKey(name: "idempotency_key")
  final String? idempotencyKey;

  final Invoice? invoice;


  CreateInvoiceRequest({
    this.idempotencyKey, this.invoice
  });

  factory CreateInvoiceRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateInvoiceRequestFromJson(json);

  Map<String, dynamic> toJson() => _$CreateInvoiceRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class SearchInvoiceRequest {

  final InvoiceQuery query;

  final int? limit; 
  
  final String? cursor;

  SearchInvoiceRequest({
    required this.query, this.limit, this.cursor
  });

  factory SearchInvoiceRequest.fromJson(Map<String, dynamic> json) =>
      _$SearchInvoiceRequestFromJson(json);

  Map<String, dynamic> toJson() => _$SearchInvoiceRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class UpdateInvoiceRequest {

  @JsonKey(name: "idempotency_key")
  final String? idempotencyKey;

  final Order order;

  @JsonKey(name: "fields_to_clear")
  final List<String>? fieldsToClear;

  UpdateInvoiceRequest({
    this.idempotencyKey, this.fieldsToClear, required this.order
  });

  factory UpdateInvoiceRequest.fromJson(Map<String, dynamic> json) =>
      _$UpdateInvoiceRequestFromJson(json);

  Map<String, dynamic> toJson() => _$UpdateInvoiceRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class PublishInvoiceRequest {

  final int version;

  @JsonKey(name: "idempotency_key")
  final String? idempotencyKey;

  PublishInvoiceRequest({
  required this.version, this.idempotencyKey
  });

  factory PublishInvoiceRequest.fromJson(Map<String, dynamic> json) =>
      _$PublishInvoiceRequestFromJson(json);

  Map<String, dynamic> toJson() => _$PublishInvoiceRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}



@JsonSerializable(includeIfNull: false)
class CatalogRetrieveRequest {

  @JsonKey(name: "object_ids")
  final List<String> objectIds;

  @JsonKey(name: "include_related_objects")
  final bool? includeRelatedObjects;

  @JsonKey(name: "catalogVersion")
  final int? catalogVersion;

  CatalogRetrieveRequest({
    required this.objectIds, this.catalogVersion, this.includeRelatedObjects
  });

  factory CatalogRetrieveRequest.fromJson(Map<String, dynamic> json) =>
      _$CatalogRetrieveRequestFromJson(json);

  Map<String, dynamic> toJson() => _$CatalogRetrieveRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class CatalogBatchUpsertRequest {

  @JsonKey(name: "idempotency_key")
  final String idempotencyKey;

  final List<CatalogObjectBatch> batches;

  CatalogBatchUpsertRequest({
    required this.idempotencyKey, required this.batches
  });

  factory CatalogBatchUpsertRequest.fromJson(Map<String, dynamic> json) =>
      _$CatalogBatchUpsertRequestFromJson(json);

  Map<String, dynamic> toJson() => _$CatalogBatchUpsertRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class CatalogObjectBatch {

    final List<CatalogObject> objects;

    CatalogObjectBatch({
      required this.objects
    });

    factory CatalogObjectBatch.fromJson(Map<String, dynamic> json) =>
        _$CatalogObjectBatchFromJson(json);

    Map<String, dynamic> toJson() => _$CatalogObjectBatchToJson(this);

    @override
    String toString() {
      return toJson().toString();
    }
}

@JsonSerializable(includeIfNull: false)
class CreateCatalogImageRequest {

  @JsonKey(name: "idempotency_key")
  final String idempotencyKey;

  @JsonKey(name: "object_id")
  final String? objectId;

  final CatalogObject image;

  @JsonKey(name: "is_primary")
  final bool? isPrimary;

  CreateCatalogImageRequest({
    required this.image, required this.idempotencyKey, this.objectId, this.isPrimary
  });

  factory CreateCatalogImageRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateCatalogImageRequestFromJson(json);

  Map<String, dynamic> toJson() => _$CreateCatalogImageRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

@JsonSerializable(includeIfNull: false)
class UpdateCatalogImageRequest {

  @JsonKey(name: "idempotency_key")
  final String idempotencyKey;

  final CatalogObject image;


  UpdateCatalogImageRequest({
    required this.image, required this.idempotencyKey
  });

  factory UpdateCatalogImageRequest.fromJson(Map<String, dynamic> json) =>
      _$UpdateCatalogImageRequestFromJson(json);

  Map<String, dynamic> toJson() => _$UpdateCatalogImageRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

@JsonSerializable(includeIfNull: false)
class ListCatalogImageRequest {

  final String? cursor;

  final CatalogObjectType? type;

  @JsonKey(name: "catalog_version")
  final String? catalogVersion;

  ListCatalogImageRequest({
    this.catalogVersion, this.cursor, this.type
  });

  factory ListCatalogImageRequest.fromJson(Map<String, dynamic> json) =>
      _$ListCatalogImageRequestFromJson(json);

  Map<String, dynamic> toJson() => _$ListCatalogImageRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

@JsonSerializable(includeIfNull: false)
class UpsertCatalogRequest {

  @JsonKey(name: "idempotency_key")
  final String idempotencyKey;

  final CatalogObject object;

  UpsertCatalogRequest({
    required this.idempotencyKey, required this.object
  });

  factory UpsertCatalogRequest.fromJson(Map<String, dynamic> json) =>
      _$UpsertCatalogRequestFromJson(json);

  Map<String, dynamic> toJson() => _$UpsertCatalogRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class CatalogSearchRequest {

  final String? cursor;

  @JsonKey(name: "object_types")
  final List<String>? objectTypes;

  @JsonKey(name: "include_deleted_objects")
  final bool? includeDeletedObjects;

  @JsonKey(name: "include_related_objects")
  final bool? includeRelatedObjects;

  @JsonKey(name: "begin_time")
  final String? beginTime;
  
  final CatalogQuery? query;

  final int? limit;

  CatalogSearchRequest({
    this.cursor, this.includeRelatedObjects, this.limit,
  this.query, this.beginTime, this.includeDeletedObjects,
  this.objectTypes
  });

  factory CatalogSearchRequest.fromJson(Map<String, dynamic> json) =>
      _$CatalogSearchRequestFromJson(json);

  Map<String, dynamic> toJson() => _$CatalogSearchRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class CatalogItemsSearchRequest {

  @JsonKey(name: "text_filter")
  final String? textFilter;

  @JsonKey(name: "category_ids")
  final List<String>? categoryIds;

  @JsonKey(name: "stock_levels")
  final List<SearchCatalogItemsRequestStockLevel>? stockLevels;

  @JsonKey(name: "enabled_location_ids")
  final List<String>? enabledLocationIds;

  final String? cursor;
  final int? limit;

  @JsonKey(name: "sort_order")
  final SortOrder? sortOrder;

  @JsonKey(name: "product_types")
  final List<CatalogItemProductType>? productTypes;

  @JsonKey(name: "custom_attribute_filters")
  final List<CustomAttributeFilter>? customAttributeFilters;



  CatalogItemsSearchRequest({
  this.limit, this.cursor, this.sortOrder, this.categoryIds,
  this.customAttributeFilters, this.enabledLocationIds, this.productTypes,
  this.stockLevels, this.textFilter
  });

  factory CatalogItemsSearchRequest.fromJson(Map<String, dynamic> json) =>
      _$CatalogItemsSearchRequestFromJson(json);

  Map<String, dynamic> toJson() => _$CatalogItemsSearchRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class CustomAttributeFilter {

  @JsonKey(name: "bool_filter")
  final bool? boolFilter;

  @JsonKey(name: "custom_attribute_definition_id")
  final String? customAttributeDefinitionId;
  
  final String? key;

  @JsonKey(name: "number_filter")
  final Range? numberFilter;

  @JsonKey(name: "selection_uids_filter")
  final List<String>? selectionUidsFilter;

  @JsonKey(name: "string_filter")
  final String? stringFilter;

  CustomAttributeFilter({
    this.key, this.customAttributeDefinitionId, this.boolFilter,
  this.numberFilter, this.selectionUidsFilter, this.stringFilter
  });

  factory CustomAttributeFilter.fromJson(Map<String, dynamic> json) =>
      _$CustomAttributeFilterFromJson(json);

  Map<String, dynamic> toJson() => _$CustomAttributeFilterToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class Range {
  final String? max;
  final String?  min;

  Range({
    this.max, this.min
  });

  factory Range.fromJson(Map<String, dynamic> json) =>
      _$RangeFromJson(json);

  Map<String, dynamic> toJson() => _$RangeToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class CatalogItemsResponse {

  final List<SquareError>? errors;

  final String? cursor;

  final List<CatalogObject>? items;

  @JsonKey(name:"matched_variation_ids")
  final List<String>? matchedVariationIds;


  CatalogItemsResponse({
    this.cursor, this.errors, this.items, this.matchedVariationIds
  });

  factory CatalogItemsResponse.fromJson(Map<String, dynamic> json) =>
      _$CatalogItemsResponseFromJson(json);

  Map<String, dynamic> toJson() => _$CatalogItemsResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class UpdateCatalogItemsModifier {

  @JsonKey(name: "item_ids")
  final List<String> itemIds;

  @JsonKey(name: "modifier_lists_to_enable")
  final List<String>? modifierListsToEnable;

  @JsonKey(name: "modifier_lists_to_disable")
  final List<String>? modifierListsToDisable;

  UpdateCatalogItemsModifier({
    required this.itemIds, this.modifierListsToDisable, this.modifierListsToEnable
  });

  factory UpdateCatalogItemsModifier.fromJson(Map<String, dynamic> json) =>
      _$UpdateCatalogItemsModifierFromJson(json);

  Map<String, dynamic> toJson() => _$UpdateCatalogItemsModifierToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class UpdateCatalogItemsTaxes {

  @JsonKey(name: "item_ids")
  final List<String> itemIds;

  @JsonKey(name: "taxes_to_enable")
  final List<String>? taxesToEnable;

  @JsonKey(name: "taxes_to_disable")
  final List<String>? taxesToDisable;

  UpdateCatalogItemsTaxes({
    required this.itemIds, this.taxesToDisable, this.taxesToEnable
  });

  factory UpdateCatalogItemsTaxes.fromJson(Map<String, dynamic> json) =>
      _$UpdateCatalogItemsTaxesFromJson(json);

  Map<String, dynamic> toJson() => _$UpdateCatalogItemsTaxesToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class InventoryAdjustmentResponse {

  final List<SquareError>? errors;
  
  final InventoryAdjustment? adjustment;

  InventoryAdjustmentResponse({
    this.errors,  this.adjustment
  });

  factory InventoryAdjustmentResponse.fromJson(Map<String, dynamic> json) =>
      _$InventoryAdjustmentResponseFromJson(json);

  Map<String, dynamic> toJson() => _$InventoryAdjustmentResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class InventoryResponse {

  final List<SquareError>? errors;

  final List<InventoryCount>? counts;

  final InventoryCount? count;

  final List<InventoryChange>? changes;
  
  final String? cursor;

  InventoryResponse({
    this.errors, this.counts, this.changes, this.cursor, this.count
  });

  factory InventoryResponse.fromJson(Map<String, dynamic> json) =>
      _$InventoryResponseFromJson(json);

  Map<String, dynamic> toJson() => _$InventoryResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

@JsonSerializable(includeIfNull: false)
class InventoryPhysicalResponse {

  final List<SquareError>? errors;

  final List<InventoryPhysicalCount>? counts;

  final InventoryPhysicalCount? count;

  final String? cursor;

  InventoryPhysicalResponse({
    this.errors, this.counts, this.cursor, this.count
  });

  factory InventoryPhysicalResponse.fromJson(Map<String, dynamic> json) =>
      _$InventoryPhysicalResponseFromJson(json);

  Map<String, dynamic> toJson() => _$InventoryPhysicalResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

@JsonSerializable(includeIfNull: false)
class InventoryCount {

  @JsonKey(name: "calculated_at")
  final String? calculatedAt;

  @JsonKey(name: "catalog_object_id")
  final String? catalogObjectId;

  @JsonKey(name: "catalog_object_type")
  final String? catalogObjectType;

  @JsonKey(name: "is_estimated")
  final bool? isEstimated;

  @JsonKey(name: "location_id")
  final String? locationId;

  final String? quantity;

  final InventoryState? state;

  InventoryCount({
    this.locationId, this.state, this.catalogObjectType, this.quantity,
  this.catalogObjectId, this.calculatedAt, this.isEstimated
  });

  factory InventoryCount.fromJson(Map<String, dynamic> json) =>
      _$InventoryCountFromJson(json);

  Map<String, dynamic> toJson() => _$InventoryCountToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class BatchInventoryChangeRequest {

  @JsonKey(name: "idempotency_key")
  final String idempotencyKey;

  final List<InventoryChange>? changes;

  @JsonKey(name: "ignore_unchanged_counts")
  final bool? ignoreUnchangedCounts;

  BatchInventoryChangeRequest({
    required this.idempotencyKey, this.changes, this.ignoreUnchangedCounts
  });

  factory BatchInventoryChangeRequest.fromJson(Map<String, dynamic> json) =>
      _$BatchInventoryChangeRequestFromJson(json);

  Map<String, dynamic> toJson() => _$BatchInventoryChangeRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class BatchInventoryReadRequest {
  
  @JsonKey(name: "catalog_object_ids")
  final List<String>? catalogObjectIds;

  @JsonKey(name: "location_ids")
  final List<String>? locationIds;

  final List<InventoryChangeType>? types;

  final List<InventoryState>? states;

  @JsonKey(name: "updated_after")
  final String? updatedAfter;

  @JsonKey(name: "updated_before")
  final String? updatedBefore;
  
  final String? cursor;

  BatchInventoryReadRequest({
    this.cursor, this.locationIds, this.catalogObjectIds,
  this.states, this.types, this.updatedAfter, this.updatedBefore
  });

  factory BatchInventoryReadRequest.fromJson(Map<String, dynamic> json) =>
      _$BatchInventoryReadRequestFromJson(json);

  Map<String, dynamic> toJson() => _$BatchInventoryReadRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class BatchInventoryReadCountRequest {

  @JsonKey(name: "catalog_object_ids")
  final List<String>? catalogObjectIds;

  @JsonKey(name: "location_ids")
  final List<String>? locationIds;

  final List<InventoryState>? states;

  @JsonKey(name: "updated_after")
  final String? updatedAfter;

  final String? cursor;

  BatchInventoryReadCountRequest({
    this.updatedAfter, this.states, this.catalogObjectIds, this.locationIds,
  this.cursor
  });

  factory BatchInventoryReadCountRequest.fromJson(Map<String, dynamic> json) =>
      _$BatchInventoryReadCountRequestFromJson(json);

  Map<String, dynamic> toJson() => _$BatchInventoryReadCountRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class InventoryTransferResponse {
  final List<SquareError>? errors;
  final InventoryTransfer? transfer;

  InventoryTransferResponse({
    this.errors, this.transfer
  });

  factory InventoryTransferResponse.fromJson(Map<String, dynamic> json) =>
      _$InventoryTransferResponseFromJson(json);

  Map<String, dynamic> toJson() => _$InventoryTransferResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class InventoryPhysicalCountResponse {
  final List<SquareError>? errors;
  final InventoryPhysicalCount? count;

  InventoryPhysicalCountResponse({
    this.errors, this.count
  });

  factory InventoryPhysicalCountResponse.fromJson(Map<String, dynamic> json) =>
      _$InventoryPhysicalCountResponseFromJson(json);

  Map<String, dynamic> toJson() => _$InventoryPhysicalCountResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class InventoryCountRequest {

  @JsonKey(name: "location_ids")
  final String? locationIds;

  final String? cursor;

  InventoryCountRequest({
    this.cursor, this.locationIds
  });

  factory InventoryCountRequest.fromJson(Map<String, dynamic> json) =>
      _$InventoryCountRequestFromJson(json);

  Map<String, dynamic> toJson() => _$InventoryCountRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class ListCustomerRequest {
  final String? cursor;
  
  final int? limit;

  @JsonKey(name: "sort_field")
  final CustomerSortField? sortField;

  @JsonKey(name: "sort_order")
  final SortOrder? sortOrder;

  ListCustomerRequest({
    this.cursor, this.sortOrder, this.limit, this.sortField
  });

  factory ListCustomerRequest.fromJson(Map<String, dynamic> json) =>
      _$ListCustomerRequestFromJson(json);

  Map<String, dynamic> toJson() => _$ListCustomerRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class CustomerResponse {
  final List<SquareError>? errors;
  
  final Customer? customer;
  
  final List<Customer>? customers;
  
  final String? cursor;

  CustomerResponse({
    this.cursor, this.errors, this.customer, this.customers
  });

  factory CustomerResponse.fromJson(Map<String, dynamic> json) =>
      _$CustomerResponseFromJson(json);

  Map<String, dynamic> toJson() => _$CustomerResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class CustomerUpsertRequest {

  @JsonKey(name: "idempotency_key")
  final String? idempotencyKey;

  final Address? address;

  final String? birthday;

  @JsonKey(name: "company_name")
  final String? companyName;

  @JsonKey(name: "email_address")
  final String? emailAddress;

  @JsonKey(name: "family_name")
  final String? familyName;

  @JsonKey(name: "given_name")
  final String? givenName;

  final String? nickname;

  final String? note;

  @JsonKey(name: "phone_number")
  final String? phoneNumber;

  @JsonKey(name: "reference_id")
  final String? referenceId;

  @JsonKey(name: "tax_ids")
  final CustomerTaxIds? taxIds;


  CustomerUpsertRequest({
    this.idempotencyKey,this.nickname,
    this.referenceId, this.taxIds,
    this.familyName, this.givenName,
    this.companyName, this.phoneNumber, this.address, this.emailAddress,
    this.note, this.birthday
  });

  factory CustomerUpsertRequest.fromJson(Map<String, dynamic> json) =>
      _$CustomerUpsertRequestFromJson(json);

  Map<String, dynamic> toJson() => _$CustomerUpsertRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

@JsonSerializable(includeIfNull: false)
class SearchCustomerRequest {
  final String? cursor;
  
  final int? limit;

  final CustomerQuery? query;

  SearchCustomerRequest({
    this.cursor, this.limit, this.query
  });

  factory SearchCustomerRequest.fromJson(Map<String, dynamic> json) =>
      _$SearchCustomerRequestFromJson(json);

  Map<String, dynamic> toJson() => _$SearchCustomerRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class CustomerGroupResponse {
  final List<SquareError>? errors;

  final CustomerGroup? group;

  final List<Customer>? groups;

  final String? cursor;

  CustomerGroupResponse({
    this.cursor, this.errors, this.group, this.groups
  });

  factory CustomerGroupResponse.fromJson(Map<String, dynamic> json) =>
      _$CustomerGroupResponseFromJson(json);

  Map<String, dynamic> toJson() => _$CustomerGroupResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class SearchRequest {

  final String? cursor;

  final int? limit;

  SearchRequest({
    this.cursor, this.limit
  });

  factory SearchRequest.fromJson(Map<String, dynamic> json) =>
      _$SearchRequestFromJson(json);

  Map<String, dynamic> toJson() => _$SearchRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class CreateCustomerGroup {
  
  @JsonKey(name: "idempotency_key")
  final String? idempotencyKey;
  
  final CustomerGroup group;

  CreateCustomerGroup({
    required this.group, this.idempotencyKey
  });

  factory CreateCustomerGroup.fromJson(Map<String, dynamic> json) =>
      _$CreateCustomerGroupFromJson(json);

  Map<String, dynamic> toJson() => _$CreateCustomerGroupToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class CustomerSegmentResponse {
  final List<SquareError>? errors;

  final CustomerSegment? segment;

  final List<CustomerSegment>? segments;

  final String? cursor;

  CustomerSegmentResponse({
    this.cursor, this.errors, this.segment, this.segments
  });

  factory CustomerSegmentResponse.fromJson(Map<String, dynamic> json) =>
      _$CustomerSegmentResponseFromJson(json);

  Map<String, dynamic> toJson() => _$CustomerSegmentResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class LoyaltyUpsertRequest {

  @JsonKey(name: "idempotency_key")
  final String? idempotencyKey;

  @JsonKey(name: "loyalty_account")
  final LoyaltyAccount? loyaltyAccount;

  LoyaltyUpsertRequest({
    this.idempotencyKey, this.loyaltyAccount
  });

  factory LoyaltyUpsertRequest.fromJson(Map<String, dynamic> json) =>
      _$LoyaltyUpsertRequestFromJson(json);

  Map<String, dynamic> toJson() => _$LoyaltyUpsertRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class LoyaltyResponse {
  final List<SquareError>? errors;

  @JsonKey(name: "loyalty_account")
  final LoyaltyAccount? loyaltyAccount;

  @JsonKey(name: "loyalty_accounts")
  final List<LoyaltyAccount>? loyaltyAccounts;

  final String? cursor;

  LoyaltyResponse({
    this.loyaltyAccount, this.errors, this.cursor, this.loyaltyAccounts
  });

  factory LoyaltyResponse.fromJson(Map<String, dynamic> json) =>
      _$LoyaltyResponseFromJson(json);

  Map<String, dynamic> toJson() => _$LoyaltyResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class SearchLoyaltyRequest {

  final SearchLoyaltyAccountsRequestLoyaltyAccountQuery? query;
  
  final int? limit;

  final String? cursor;

  SearchLoyaltyRequest({
    this.query, this.cursor, this.limit
  });

  factory SearchLoyaltyRequest.fromJson(Map<String, dynamic> json) =>
      _$SearchLoyaltyRequestFromJson(json);

  Map<String, dynamic> toJson() => _$SearchLoyaltyRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class LoyaltyEvent {
  final String? id;

  @JsonKey(name: "created_at")
  final String? createdAt;

  @JsonKey(name: "loyalty_account_id")
  final String? loyaltyAccountId;

  final LoyaltyEventSource? source;

  final LoyaltyEventType? type;

  @JsonKey(name: "accumulate_points")
  final LoyaltyEventAccumulatePoints? accumulatePoints;

  @JsonKey(name: "adjust_points")
  final LoyaltyEventAdjustPoints? adjustPoints;

  @JsonKey(name: "create_reward")
  final LoyaltyEventCreateReward? createReward;

  @JsonKey(name: "delete_reward")
  final LoyaltyEventDeleteReward? deleteReward;

  @JsonKey(name: "expire_points")
  final LoyaltyEventExpirePoints? expirePoints;

  @JsonKey(name: "location_id")
  final String? locationId;

  @JsonKey(name: "other_event")
  final LoyaltyEventOther? otherEvent;

  @JsonKey(name: "redeem_reward")
  final LoyaltyEventRedeemReward? redeemReward;

  LoyaltyEvent({
    this.locationId, this.type, this.id, this.createdAt, this.source,
  this.loyaltyAccountId, this.accumulatePoints, this.adjustPoints,
  this.createReward, this.deleteReward, this.expirePoints, this.otherEvent,
    this.redeemReward
  });

  factory LoyaltyEvent.fromJson(Map<String, dynamic> json) =>
      _$LoyaltyEventFromJson(json);

  Map<String, dynamic> toJson() => _$LoyaltyEventToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

@JsonSerializable(includeIfNull: false)
class LoyaltyEventRedeemReward{
  
  @JsonKey(name: "loyalty_program_id")
  final String? loyaltyProgramId;

  @JsonKey(name: "order_id")
  final String? orderId;

  @JsonKey(name: "reward_id")
  final String? rewardId;

  LoyaltyEventRedeemReward({
  this.orderId, this.loyaltyProgramId, this.rewardId
  });

  factory LoyaltyEventRedeemReward.fromJson(Map<String, dynamic> json) =>
      _$LoyaltyEventRedeemRewardFromJson(json);

  Map<String, dynamic> toJson() => _$LoyaltyEventRedeemRewardToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class LoyaltyEventOther {

  @JsonKey(name: "loyalty_program_id")
  final String? loyaltyProgramId;

  final int? points;

  LoyaltyEventOther({
    this.loyaltyProgramId, this.points
  });

  factory LoyaltyEventOther.fromJson(Map<String, dynamic> json) =>
      _$LoyaltyEventOtherFromJson(json);

  Map<String, dynamic> toJson() => _$LoyaltyEventOtherToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class LoyaltyEventExpirePoints {

  @JsonKey(name: "loyalty_program_id")
  final String? loyaltyProgramId;
  
  final int? points;

  LoyaltyEventExpirePoints({
    this.loyaltyProgramId, this.points
  });

  factory LoyaltyEventExpirePoints.fromJson(Map<String, dynamic> json) =>
      _$LoyaltyEventExpirePointsFromJson(json);

  Map<String, dynamic> toJson() => _$LoyaltyEventExpirePointsToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class LoyaltyEventDeleteReward {
  @JsonKey(name: "loyalty_program_id")
  final String? loyaltyProgramId;

  final int? points;

  @JsonKey(name: "reward_id")
  final String? rewardId;

  LoyaltyEventDeleteReward({
    this.loyaltyProgramId, this.points, this.rewardId
  });

  factory LoyaltyEventDeleteReward.fromJson(Map<String, dynamic> json) =>
      _$LoyaltyEventDeleteRewardFromJson(json);

  Map<String, dynamic> toJson() => _$LoyaltyEventDeleteRewardToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class LoyaltyEventCreateReward {

  @JsonKey(name: "loyalty_program_id")
  final String? loyaltyProgramId;

  final int? points;

  @JsonKey(name: "reward_id")
  final String? rewardId;

  LoyaltyEventCreateReward({
    this.loyaltyProgramId, this.points, this.rewardId
  });

  factory LoyaltyEventCreateReward.fromJson(Map<String, dynamic> json) =>
      _$LoyaltyEventCreateRewardFromJson(json);

  Map<String, dynamic> toJson() => _$LoyaltyEventCreateRewardToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class LoyaltyEventAdjustPoints {

  final int? points;
  
  @JsonKey(name: "loyalty_program_id")
  final String? loyaltyProgramId;
  
  final String? reason;

  LoyaltyEventAdjustPoints({
    this.points, this.loyaltyProgramId, this.reason
  });

  factory LoyaltyEventAdjustPoints.fromJson(Map<String, dynamic> json) =>
      _$LoyaltyEventAdjustPointsFromJson(json);

  Map<String, dynamic> toJson() => _$LoyaltyEventAdjustPointsToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class LoyaltyEventAccumulatePoints {

  final int? points;

  @JsonKey(name: "loyalty_program_id")
  final String? loyaltyProgramId;

  final String? reason;

  LoyaltyEventAccumulatePoints({
    this.points, this.loyaltyProgramId, this.reason
  });

  factory LoyaltyEventAccumulatePoints.fromJson(Map<String, dynamic> json) =>
      _$LoyaltyEventAccumulatePointsFromJson(json);

  Map<String, dynamic> toJson() => _$LoyaltyEventAccumulatePointsToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class LoyaltyEventResponse {
  final List<SquareError>? errors;

  final LoyaltyEvent? event;

  final List<LoyaltyEvent>? events;

  final String? cursor;

  LoyaltyEventResponse({
    this.event, this.errors, this.cursor, this.events
  });

  factory LoyaltyEventResponse.fromJson(Map<String, dynamic> json) =>
      _$LoyaltyEventResponseFromJson(json);

  Map<String, dynamic> toJson() => _$LoyaltyEventResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class AccumulateLoyaltyPointRequest {

  @JsonKey(name: "accumulate_points")
  final LoyaltyEventAccumulatePoints? accumulatePoints;

  @JsonKey(name: "idempotency_key")
  final String? idempotencyKey;

  @JsonKey(name: "location_id")
  final String? locationId;

  AccumulateLoyaltyPointRequest({
    this.accumulatePoints, this.locationId, this.idempotencyKey
  });

  factory AccumulateLoyaltyPointRequest.fromJson(Map<String, dynamic> json) =>
      _$AccumulateLoyaltyPointRequestFromJson(json);

  Map<String, dynamic> toJson() => _$AccumulateLoyaltyPointRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class AdjustLoyaltyPointRequest {

  @JsonKey(name: "idempotency_key")
  final String? idempotencyKey;

  @JsonKey(name: "adjust_points")
  final LoyaltyEventAdjustPoints? adjustPoints;

  AdjustLoyaltyPointRequest({
    this.idempotencyKey, this.adjustPoints
  });

  factory AdjustLoyaltyPointRequest.fromJson(Map<String, dynamic> json) =>
      _$AdjustLoyaltyPointRequestFromJson(json);

  Map<String, dynamic> toJson() => _$AdjustLoyaltyPointRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

@JsonSerializable(includeIfNull: false)
class SearchLoyaltyEventsRequest {
  
  final LoyaltyEventQuery? query;
  
  final int? limit;
  
  final String? cursor;

  SearchLoyaltyEventsRequest({
    this.limit, this.cursor, this.query
  });

  factory SearchLoyaltyEventsRequest.fromJson(Map<String, dynamic> json) =>
      _$SearchLoyaltyEventsRequestFromJson(json);

  Map<String, dynamic> toJson() => _$SearchLoyaltyEventsRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class LoyaltyEventQuery {

  final LoyaltyEventFilter? query;

  LoyaltyEventQuery({
    this.query
  });

  factory LoyaltyEventQuery.fromJson(Map<String, dynamic> json) =>
      _$LoyaltyEventQueryFromJson(json);

  Map<String, dynamic> toJson() => _$LoyaltyEventQueryToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class LoyaltyEventFilter {

  @JsonKey(name: "date_time_filter")
  final LoyaltyEventDateTimeFilter? dateTimeFilter;

  @JsonKey(name: "location_filter")
  final LoyaltyEventLocationFilter? locationFilter;

  @JsonKey(name: "loyalty_account_filter")
  final LoyaltyEventLoyaltyAccountFilter? loyaltyAccountFilter;

  @JsonKey(name: "order_filter")
  final LoyaltyEventOrderFilter? orderFilter;

  @JsonKey(name: "type_filter")
  final LoyaltyEventTypeFilter? typeFilter;

  LoyaltyEventFilter({
    this.dateTimeFilter, this.locationFilter, this.loyaltyAccountFilter,
  this.orderFilter, this.typeFilter
  });

  factory LoyaltyEventFilter.fromJson(Map<String, dynamic> json) =>
      _$LoyaltyEventFilterFromJson(json);

  Map<String, dynamic> toJson() => _$LoyaltyEventFilterToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class LoyaltyEventTypeFilter {

  final List<LoyaltyEventType>? types;

  LoyaltyEventTypeFilter({
    this.types
  });

  factory LoyaltyEventTypeFilter.fromJson(Map<String, dynamic> json) =>
      _$LoyaltyEventTypeFilterFromJson(json);

  Map<String, dynamic> toJson() => _$LoyaltyEventTypeFilterToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class LoyaltyEventOrderFilter {

  @JsonKey(name: "order_id")
  final String? orderId;

  LoyaltyEventOrderFilter({
    this.orderId
  });

  factory LoyaltyEventOrderFilter.fromJson(Map<String, dynamic> json) =>
      _$LoyaltyEventOrderFilterFromJson(json);

  Map<String, dynamic> toJson() => _$LoyaltyEventOrderFilterToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class LoyaltyEventLoyaltyAccountFilter {

  @JsonKey(name: "loyalty_account_id")
  final String? loyaltyAccountId;

  LoyaltyEventLoyaltyAccountFilter({
    this.loyaltyAccountId,
  });

  factory LoyaltyEventLoyaltyAccountFilter.fromJson(Map<String, dynamic> json) =>
      _$LoyaltyEventLoyaltyAccountFilterFromJson(json);

  Map<String, dynamic> toJson() => _$LoyaltyEventLoyaltyAccountFilterToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class LoyaltyEventLocationFilter {

  @JsonKey(name: "location_ids")
  final List<String>? locationIds;

  LoyaltyEventLocationFilter({
    this.locationIds
  });

  factory LoyaltyEventLocationFilter.fromJson(Map<String, dynamic> json) =>
      _$LoyaltyEventLocationFilterFromJson(json);

  Map<String, dynamic> toJson() => _$LoyaltyEventLocationFilterToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class LoyaltyEventDateTimeFilter {

  @JsonKey(name: "created_at")
  final TimeRange? createdAt;

  LoyaltyEventDateTimeFilter({
    this.createdAt
  });

  factory LoyaltyEventDateTimeFilter.fromJson(Map<String, dynamic> json) =>
      _$LoyaltyEventDateTimeFilterFromJson(json);

  Map<String, dynamic> toJson() => _$LoyaltyEventDateTimeFilterToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

@JsonSerializable(includeIfNull: false)
class LoyaltyProgramResponse {
  final List<SquareError>? errors;

  final LoyaltyProgram? program;

  final List<LoyaltyProgram>? programs;

  final String? cursor;

  LoyaltyProgramResponse({
    this.cursor, this.errors, this.program, this.programs
  });

  factory LoyaltyProgramResponse.fromJson(Map<String, dynamic> json) =>
      _$LoyaltyProgramResponseFromJson(json);

  Map<String, dynamic> toJson() => _$LoyaltyProgramResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class CalculateLoyaltyPointsRequest {

  @JsonKey(name: "order_id")
  final String? orderId;

  @JsonKey(name: "transaction_amount_money")
  final Money? transactionAmountMoney;

  CalculateLoyaltyPointsRequest({
    this.orderId, this.transactionAmountMoney
  });

  factory CalculateLoyaltyPointsRequest.fromJson(Map<String, dynamic> json) =>
      _$CalculateLoyaltyPointsRequestFromJson(json);

  Map<String, dynamic> toJson() => _$CalculateLoyaltyPointsRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

@JsonSerializable(includeIfNull: false)
class LoyaltyPointResponse {
  final List<SquareError>? errors;

  final int? points;

  LoyaltyPointResponse({
    this.errors, this.points
  });

  factory LoyaltyPointResponse.fromJson(Map<String, dynamic> json) =>
      _$LoyaltyPointResponseFromJson(json);

  Map<String, dynamic> toJson() => _$LoyaltyPointResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class UpsertLoyaltyRewardRequest {

  final LoyaltyReward reward;

  @JsonKey(name: "idempotency_key")
  final String? idempotencyKey;

  UpsertLoyaltyRewardRequest({
    required this.reward, this.idempotencyKey
  });

  factory UpsertLoyaltyRewardRequest.fromJson(Map<String, dynamic> json) =>
      _$UpsertLoyaltyRewardRequestFromJson(json);

  Map<String, dynamic> toJson() => _$UpsertLoyaltyRewardRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class LoyaltyRewardResponse {
  final List<SquareError>? errors;

  final LoyaltyReward? reward;

  final List<LoyaltyReward>? rewards;

  final String? cursor;

  LoyaltyRewardResponse({
    this.reward, this.errors, this.cursor, this.rewards
  });

  factory LoyaltyRewardResponse.fromJson(Map<String, dynamic> json) =>
      _$LoyaltyRewardResponseFromJson(json);

  Map<String, dynamic> toJson() => _$LoyaltyRewardResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class SearchLoyaltyRewardRequest {

  final SearchLoyaltyRewardsRequestLoyaltyRewardQuery? query;
  final int? limit;
  final String? cursor;

  SearchLoyaltyRewardRequest({
    this.cursor, this.query, this.limit
  });

  factory SearchLoyaltyRewardRequest.fromJson(Map<String, dynamic> json) =>
      _$SearchLoyaltyRewardRequestFromJson(json);

  Map<String, dynamic> toJson() => _$SearchLoyaltyRewardRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

@JsonSerializable(includeIfNull: false)
class GiftCardResponse {

  final List<SquareError>? errors;

  @JsonKey(name: "gift_card")
  final GiftCard? giftCard;

  @JsonKey(name: "gift_cards")
  final List<GiftCard>? giftCards;

  final String? cursor;

  GiftCardResponse({
    this.cursor, this.errors, this.giftCard, this.giftCards
  });

  factory GiftCardResponse.fromJson(Map<String, dynamic> json) =>
      _$GiftCardResponseFromJson(json);

  Map<String, dynamic> toJson() => _$GiftCardResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class GiftCardActivityResponse {

  final List<SquareError>? errors;

  @JsonKey(name: "gift_card_activity")
  final GiftCardActivity? giftCardActivity;

  @JsonKey(name: "gift_card_activities")
  final List<GiftCardActivity>? giftCardActivities;

  final String? cursor;

  GiftCardActivityResponse({
    this.cursor, this.errors, this.giftCardActivities, this.giftCardActivity
  });

  factory GiftCardActivityResponse.fromJson(Map<String, dynamic> json) =>
      _$GiftCardActivityResponseFromJson(json);

  Map<String, dynamic> toJson() => _$GiftCardActivityResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class ListGiftCardActivityRequest {

  @JsonKey(name: "gift_card_id")
  final String? giftCardId;

  final GiftCardActivityType? type;

  @JsonKey(name: "location_id")
  final String? locationId;

  @JsonKey(name: "begin_time")
  final String? beginTime;

  @JsonKey(name: "end_time")
  final String? endTime;

  final int? limit;
  
  final String? cursor;

  @JsonKey(name: "sort_order")
  final SortOrder? sortOrder;

  ListGiftCardActivityRequest({
    this.cursor, this.giftCardId, this.locationId, this.type,
  this.limit, this.sortOrder, this.beginTime, this.endTime,
  });

  factory ListGiftCardActivityRequest.fromJson(Map<String, dynamic> json) =>
      _$ListGiftCardActivityRequestFromJson(json);

  Map<String, dynamic> toJson() => _$ListGiftCardActivityRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class RedeemLoyaltyRequest {

  @JsonKey(name: "idempotency_key")
  final String idempotencyKey;

  @JsonKey(name: "location_id")
  final String locationId;

  RedeemLoyaltyRequest({
    required this.idempotencyKey, required this.locationId
  });

  factory RedeemLoyaltyRequest.fromJson(Map<String, dynamic> json) =>
      _$RedeemLoyaltyRequestFromJson(json);

  Map<String, dynamic> toJson() => _$RedeemLoyaltyRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class ListGiftCardRequest {
  final GiftCardType? type;
  final GiftCardStatus? status;
  final int? limit;
  final String? cursor;

  @JsonKey(name: "customer_id")
  final String? customerId;

  ListGiftCardRequest({
    this.cursor, this.limit, this.type, this.status,
    this.customerId
  });

  factory ListGiftCardRequest.fromJson(Map<String, dynamic> json) =>
      _$ListGiftCardRequestFromJson(json);

  Map<String, dynamic> toJson() => _$ListGiftCardRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

@JsonSerializable(includeIfNull: false)
class CreateGiftCardRequest {
  
  @JsonKey(name: "idempotency_key")
  final String idempotencyKey;

  @JsonKey(name: "location_id")
  final String locationId;

  @JsonKey(name: "gift_card")
  final GiftCard giftCard;

  CreateGiftCardRequest({
    required this.giftCard, required this.locationId, required this.idempotencyKey
  });

  factory CreateGiftCardRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateGiftCardRequestFromJson(json);

  Map<String, dynamic> toJson() => _$CreateGiftCardRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class CreateGiftCardActivityRequest {

  @JsonKey(name: "idempotency_key")
  final String? idempotencyKey;

  @JsonKey(name: "gift_card_activity")
  final GiftCardActivity giftCardActivity;

  CreateGiftCardActivityRequest({
    required this.giftCardActivity, this.idempotencyKey
  });

  factory CreateGiftCardActivityRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateGiftCardActivityRequestFromJson(json);

  Map<String, dynamic> toJson() => _$CreateGiftCardActivityRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class ListBookingsRequest {
  final int? limit;
  final String? cursor;
  
  @JsonKey(name: "team_member_id")
  final String? teamMemberId;

  @JsonKey(name: "location_id")
  final String? locationId;

  @JsonKey(name: "start_at_max")
  final String? startAtMax;

  ListBookingsRequest({
    this.limit, this.locationId, this.cursor, this.teamMemberId,
    this.startAtMax
  });

  factory ListBookingsRequest.fromJson(Map<String, dynamic> json) =>
      _$ListBookingsRequestFromJson(json);

  Map<String, dynamic> toJson() => _$ListBookingsRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class BookingsResponse {

  final Booking? booking;

  final List<Booking>? bookings;

  final String? cursor;
  
  final List<SquareError>? errors;

  BookingsResponse({
    this.cursor, this.errors, this.booking, this.bookings
  });

  factory BookingsResponse.fromJson(Map<String, dynamic> json) =>
      _$BookingsResponseFromJson(json);

  Map<String, dynamic> toJson() => _$BookingsResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

@JsonSerializable(includeIfNull: false)
class UpsertBookingRequest {

  @JsonKey(name: "idempotency_key")
  final String idempotencyKey;

  final Booking booking;

  UpsertBookingRequest({
    required this.booking, required this.idempotencyKey
  });

  factory UpsertBookingRequest.fromJson(Map<String, dynamic> json) =>
      _$UpsertBookingRequestFromJson(json);

  Map<String, dynamic> toJson() => _$UpsertBookingRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class CancelBookingRequest {

  @JsonKey(name: "idempotency_key")
  final String? idempotencyKey;

  @JsonKey(name: "booking_version")
  final String? bookingVersion;

  CancelBookingRequest({
     this.bookingVersion, required this.idempotencyKey
  });

  factory CancelBookingRequest.fromJson(Map<String, dynamic> json) =>
      _$CancelBookingRequestFromJson(json);

  Map<String, dynamic> toJson() => _$CancelBookingRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class AvailabilityResponse {

  final Availability? availability;

  final List<Availability>? availabilities;

  final String? cursor;

  final List<SquareError>? errors;

  AvailabilityResponse({
    this.errors, this.cursor, this.availabilities, this.availability
  });

  factory AvailabilityResponse.fromJson(Map<String, dynamic> json) =>
      _$AvailabilityResponseFromJson(json);

  Map<String, dynamic> toJson() => _$AvailabilityResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}


@JsonSerializable(includeIfNull: false)
class BusinessBookingProfileResponse {

  @JsonKey(name: "business_booking_profile")
  final BusinessBookingProfile? businessBookingProfile;

  @JsonKey(name: "business_booking_profiles")
  final List<BusinessBookingProfile>? businessBookingProfiles;

  final String? cursor;

  final List<SquareError>? errors;

  BusinessBookingProfileResponse({
    this.errors, this.cursor, this.businessBookingProfile, this.businessBookingProfiles

  });

  factory BusinessBookingProfileResponse.fromJson(Map<String, dynamic> json) =>
      _$BusinessBookingProfileResponseFromJson(json);

  Map<String, dynamic> toJson() => _$BusinessBookingProfileResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

@JsonSerializable(includeIfNull: false)
class TeamMemberBookingProfileResponse {

  @JsonKey(name: "team_member_booking_profile")
  final TeamMemberBookingProfile? teamMemberBookingProfile;

  @JsonKey(name: "team_member_booking_profiles")
  final List<TeamMemberBookingProfile>? teamMemberBookingProfiles;

  final String? cursor;

  final List<SquareError>? errors;

  TeamMemberBookingProfileResponse({
    this.errors, this.cursor, this.teamMemberBookingProfile, this.teamMemberBookingProfiles

  });

  factory TeamMemberBookingProfileResponse.fromJson(Map<String, dynamic> json) =>
      _$TeamMemberBookingProfileResponseFromJson(json);

  Map<String, dynamic> toJson() => _$TeamMemberBookingProfileResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

@JsonSerializable(includeIfNull: false)
class ReadTeamMemberBookingProfileRequest {

  @JsonKey(name: "bookable_only")
  final String? bookableOnly;

  final int? limit;

  final String? cursor;

  @JsonKey(name: "location_id")
  final String? locationId;

  ReadTeamMemberBookingProfileRequest({
    this.cursor, this.locationId, this.limit, this.bookableOnly
  });

  factory ReadTeamMemberBookingProfileRequest.fromJson(Map<String, dynamic> json) =>
      _$ReadTeamMemberBookingProfileRequestFromJson(json);

  Map<String, dynamic> toJson() => _$ReadTeamMemberBookingProfileRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class MerchantResponse {
  
  final List<SquareError>? errors;

  @JsonKey(name: "merchant")
  final List<Merchant>? merchants;

  final String? cursor;

  MerchantResponse({
    this.errors, this.cursor, this.merchants
  });

  factory MerchantResponse.fromJson(Map<String, dynamic> json) =>
      _$MerchantResponseFromJson(json);

  Map<String, dynamic> toJson() => _$MerchantResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class LocationResponse {

  final List<SquareError>? errors;

  final Location? location;
  final List<Location>? locations;

  final String? cursor;

  LocationResponse({
    this.errors, this.cursor, this.location, this.locations
  });

  factory LocationResponse.fromJson(Map<String, dynamic> json) =>
      _$LocationResponseFromJson(json);

  Map<String, dynamic> toJson() => _$LocationResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class TeamMemberUpsertRequest {
  
  @JsonKey(name: "idempotency_key")
  final String? idempotencyKey;

  @JsonKey(name: "team_member")
  final TeamMember? teamMember;

  TeamMemberUpsertRequest({
    this.idempotencyKey, this.teamMember
  });

  factory TeamMemberUpsertRequest.fromJson(Map<String, dynamic> json) =>
      _$TeamMemberUpsertRequestFromJson(json);

  Map<String, dynamic> toJson() => _$TeamMemberUpsertRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class TeamMemberBatchUpsertRequest {

  @JsonKey(name: "team_members")
  final Map<String, TeamMemberUpsertRequest>? teamMembers;

  TeamMemberBatchUpsertRequest({
     this.teamMembers
  });

  factory TeamMemberBatchUpsertRequest.fromJson(Map<String, dynamic> json) =>
      _$TeamMemberBatchUpsertRequestFromJson(json);

  Map<String, dynamic> toJson() => _$TeamMemberBatchUpsertRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class TeamMemberResponse {

  final List<SquareError>? errors;

  @JsonKey(name: "team_member")
  final TeamMember? teamMember;

  @JsonKey(name: "team_members")
  final List<TeamMember>? teamMembers;

  final String? cursor;

  TeamMemberResponse({
    this.errors, this.cursor, this.teamMember, this.teamMembers
  });

  factory TeamMemberResponse.fromJson(Map<String, dynamic> json) =>
      _$TeamMemberResponseFromJson(json);

  Map<String, dynamic> toJson() => _$TeamMemberResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class TeamMemberBatchResponse {

  final List<SquareError>? errors;

  @JsonKey(name: "team_members")
  final Map<String, TeamMemberResponse>? teamMembers;

  TeamMemberBatchResponse({
    this.errors, this.teamMembers
  });

  factory TeamMemberBatchResponse.fromJson(Map<String, dynamic> json) =>
      _$TeamMemberBatchResponseFromJson(json);

  Map<String, dynamic> toJson() => _$TeamMemberBatchResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class TeamMemberSearchRequest {
  final SearchTeamMembersQuery? query;

  final int? limit;
  
  final String? cursor;

  TeamMemberSearchRequest({
    this.query, this.limit, this.cursor
  });

  factory TeamMemberSearchRequest.fromJson(Map<String, dynamic> json) =>
      _$TeamMemberSearchRequestFromJson(json);

  Map<String, dynamic> toJson() => _$TeamMemberSearchRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

@JsonSerializable(includeIfNull: false)
class SearchTeamMembersQuery {

  final SearchTeamMembersFilter? filter;

  SearchTeamMembersQuery({
    this.filter
  });

  factory SearchTeamMembersQuery.fromJson(Map<String, dynamic> json) =>
      _$SearchTeamMembersQueryFromJson(json);

  Map<String, dynamic> toJson() => _$SearchTeamMembersQueryToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class SearchTeamMembersFilter {

  @JsonKey(name: "is_owner")
  final bool? isOwner;

  @JsonKey(name: "location_ids")
  final List<String>? locationIds;

  final TeamMemberStatus? status;

  SearchTeamMembersFilter({
    this.isOwner, this.status, this.locationIds
  });

  factory SearchTeamMembersFilter.fromJson(Map<String, dynamic> json) =>
      _$SearchTeamMembersFilterFromJson(json);

  Map<String, dynamic> toJson() => _$SearchTeamMembersFilterToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class WageSettingResponse {

  final List<SquareError>? errors;

  @JsonKey(name: "wage_setting")
  final WageSetting? wageSetting;

  WageSettingResponse({
    this.errors, this.wageSetting
  });

  factory WageSettingResponse.fromJson(Map<String, dynamic> json) =>
      _$WageSettingResponseFromJson(json);

  Map<String, dynamic> toJson() => _$WageSettingResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class WageSetting {

  @JsonKey(name: "created_at")
  final String? createdAt;

  @JsonKey(name: "is_overtime_exempt")
  final bool? isOvertimeExempt;

  @JsonKey(name: "job_assignments")
  final List<JobAssignment>? jobAssignments;

  @JsonKey(name: "team_member_id")
  final String? teamMemberId;

  @JsonKey(name: "updated_at")
  final String? updatedAt;
  
  final int? version;

  WageSetting({
    this.teamMemberId, this.createdAt, this.updatedAt,
    this.version, this.isOvertimeExempt, this.jobAssignments
  });

  factory WageSetting.fromJson(Map<String, dynamic> json) =>
      _$WageSettingFromJson(json);

  Map<String, dynamic> toJson() => _$WageSettingToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

@JsonSerializable(includeIfNull: false)
class JobAssignment {

  @JsonKey(name: "job_title")
  final String? jobTitle;

  @JsonKey(name: "pay_type")
  final JobAssignmentPayType? payType;

  @JsonKey(name: "annual_rate")
  final Money? annualRate;

  @JsonKey(name: "hourly_rate")
  final Money? hourlyRate;

  @JsonKey(name: "weekly_hours")
  final int? weeklyHours;

  JobAssignment({
    this.hourlyRate, this.annualRate, this.jobTitle, this.payType,
    this.weeklyHours
  });

  factory JobAssignment.fromJson(Map<String, dynamic> json) =>
      _$JobAssignmentFromJson(json);

  Map<String, dynamic> toJson() => _$JobAssignmentToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class ListBreakTypesRequest {

  @JsonKey(name: "location_id")
  final String? locationId;
  
  final int? limit;

  final String? cursor;

  ListBreakTypesRequest({
    this.cursor, this.limit, this.locationId
  });

  factory ListBreakTypesRequest.fromJson(Map<String, dynamic> json) =>
      _$ListBreakTypesRequestFromJson(json);

  Map<String, dynamic> toJson() => _$ListBreakTypesRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class BreakTypeResponse {

  @JsonKey(name: "break_types")
  final List<BreakType>? breakTypes;

  @JsonKey(name: "break_type")
  final BreakType? breakType;

  final String? cursor;

  final List<SquareError>? errors;

  BreakTypeResponse({
    this.cursor, this.breakTypes, this.errors, this.breakType
  });

  factory BreakTypeResponse.fromJson(Map<String, dynamic> json) =>
      _$BreakTypeResponseFromJson(json);

  Map<String, dynamic> toJson() => _$BreakTypeResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

@JsonSerializable(includeIfNull: false)
class CreateBreakTypeRequest {

  @JsonKey(name: "idempotency_key")
  final String? idempotencyKey;

  @JsonKey(name: "break_type")
  final BreakType? breakType;

  CreateBreakTypeRequest({
    this.breakType, this.idempotencyKey
  });

  factory CreateBreakTypeRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateBreakTypeRequestFromJson(json);

  Map<String, dynamic> toJson() => _$CreateBreakTypeRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

@JsonSerializable(includeIfNull: false)
class CreateShiftRequest {
  
  @JsonKey(name: "idempotency_key")
  final String? idempotencyKey;    
  
  final Shift shift;

  CreateShiftRequest({
    required this.shift, this.idempotencyKey
  });

  factory CreateShiftRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateShiftRequestFromJson(json);

  Map<String, dynamic> toJson() => _$CreateShiftRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
  
}

@JsonSerializable(includeIfNull: false)
class ShiftResponse {

  final List<Shift>? shifts;

  final Shift? shift;

  final String? cursor;

  final List<SquareError>? errors;

  ShiftResponse({
    this.cursor, this.errors, this.shift, this.shifts
  });

  factory ShiftResponse.fromJson(Map<String, dynamic> json) =>
      _$ShiftResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ShiftResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

@JsonSerializable(includeIfNull:false)
class SearchShiftRequest {
  
  final ShiftQuery? query;
  
  final int? limit;
  
  final String? cursor;

  SearchShiftRequest({
    this.cursor, this.limit, this.query
  });

  factory SearchShiftRequest.fromJson(Map<String, dynamic> json) =>
      _$SearchShiftRequestFromJson(json);

  Map<String, dynamic> toJson() => _$SearchShiftRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
  
}

@JsonSerializable(includeIfNull: false)
class ShiftQuery {

  final ShiftFilter? filter;

  final SearchOrdersSort? sort;


  ShiftQuery({
    this.filter, this.sort
  });

  factory ShiftQuery.fromJson(Map<String, dynamic> json) =>
      _$ShiftQueryFromJson(json);

  Map<String, dynamic> toJson() => _$ShiftQueryToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }


}

@JsonSerializable(includeIfNull: false)
class ShiftFilter {

  @JsonKey(name: "location_ids")
  final List<String> locationIds;

  @JsonKey(name: "team_member_ids")
  final List<String> teamMemberIds;
 
  final TimeRange? end;
  
  final TimeRange? start;
  
  final ShiftStatus? status;

  final ShiftWorkday? workday;

  @JsonKey(name: "employee_ids")
  final List<String>? employeeIds;

  ShiftFilter({
    required this.locationIds, this.status, required this.teamMemberIds,
  this.employeeIds, this.end, this.start, this.workday
 });

  factory ShiftFilter.fromJson(Map<String, dynamic> json) =>
      _$ShiftFilterFromJson(json);

  Map<String, dynamic> toJson() => _$ShiftFilterToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

@JsonSerializable(includeIfNull: false)
class ShiftWorkday {

  @JsonKey(name: "date_range")
  final DateRange? dateRange;
  
  @JsonKey(name: "default_timezone")
  final String? defaultTimezone;

  @JsonKey(name: "match_shifts_by")
  final ShiftWorkdayMatcher ? matchShiftsBy;

  ShiftWorkday({
    this.dateRange, this.defaultTimezone, this.matchShiftsBy
  });

  factory ShiftWorkday.fromJson(Map<String, dynamic> json) =>
      _$ShiftWorkdayFromJson(json);

  Map<String, dynamic> toJson() => _$ShiftWorkdayToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class DateRange {

  @JsonKey(name: "end_date")
  final String? endDate;

  @JsonKey(name: "start_date")
  final String? startDate;

  DateRange({
   this.startDate, this.endDate
  });

  factory DateRange.fromJson(Map<String, dynamic> json) =>
      _$DateRangeFromJson(json);

  Map<String, dynamic> toJson() => _$DateRangeToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class TeamMemberWageResponse {

  @JsonKey(name: "team_member_wages")
  final List<TeamMemberWage>? teamMemberWages;

  @JsonKey(name: "team_member_wage")
  final TeamMemberWage? teamMemberWage;

  List<SquareError>? errors;

  final String? cursor;

  TeamMemberWageResponse({
    this.errors, this.cursor, this.teamMemberWage, this.teamMemberWages
  });

  factory TeamMemberWageResponse.fromJson(Map<String, dynamic> json) =>
      _$TeamMemberWageResponseFromJson(json);

  Map<String, dynamic> toJson() => _$TeamMemberWageResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class ListTeamMemberWageRequest {

  @JsonKey(name: "team_member_id")
  final String? teamMemberId;

  final int? limit;

  final String? cursor;

  ListTeamMemberWageRequest({
    this.cursor, this.limit, this.teamMemberId
  });

  factory ListTeamMemberWageRequest.fromJson(Map<String, dynamic> json) =>
      _$ListTeamMemberWageRequestFromJson(json);

  Map<String, dynamic> toJson() => _$ListTeamMemberWageRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}


@JsonSerializable(includeIfNull: false)
class WorkWeekConfigResponse {

  @JsonKey(name: "workweek_configs")
  final List<WorkweekConfig>? workweekConfigs;

  @JsonKey(name: "workweek_config")
  final WorkweekConfig? workweekConfig;

  final String? cursor;

  final List<SquareError>? errors;

  WorkWeekConfigResponse({
    this.cursor, this.errors, this.workweekConfig, this.workweekConfigs
  });

  factory WorkWeekConfigResponse.fromJson(Map<String, dynamic> json) =>
      _$WorkWeekConfigResponseFromJson(json);

  Map<String, dynamic> toJson() => _$WorkWeekConfigResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class SearchWorkWeekConfigRequest {
  final int? limit;
  final String? cursor;

  SearchWorkWeekConfigRequest({
    this.cursor, this.limit
  });

  factory SearchWorkWeekConfigRequest.fromJson(Map<String, dynamic> json) =>
      _$SearchWorkWeekConfigRequestFromJson(json);

  Map<String, dynamic> toJson() => _$SearchWorkWeekConfigRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}


@JsonSerializable(includeIfNull: false)
class BankAccountResponse {

  @JsonKey(name: "bank_accounts")
  final List<BankAccount>? bankAccounts;

  @JsonKey(name: "bank_account")
  final BankAccount? bankAccount;

  final String? cursor;

  final List<SquareError>? errors;

  BankAccountResponse({
    this.cursor, this.errors, this.bankAccount, this.bankAccounts
  });

  factory BankAccountResponse.fromJson(Map<String, dynamic> json) =>
      _$BankAccountResponseFromJson(json);

  Map<String, dynamic> toJson() => _$BankAccountResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class ListBankAccountsRequest  {

  final String? cursor;
  
  final int? limit;

  @JsonKey(name: "location_id")
  final String? locationId;

  ListBankAccountsRequest({
    this.cursor, this.limit, this.locationId
  });

  factory ListBankAccountsRequest.fromJson(Map<String, dynamic> json) =>
      _$ListBankAccountsRequestFromJson(json);

  Map<String, dynamic> toJson() => _$ListBankAccountsRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class SitesResponse {

  final List<SquareError>? errors;

  final List<Site>? sites;

  final Site? site;

  final String? cursor;

  SitesResponse({
    this.cursor, this.errors, this.site, this.sites
  });

  factory SitesResponse.fromJson(Map<String, dynamic> json) =>
      _$SitesResponseFromJson(json);

  Map<String, dynamic> toJson() => _$SitesResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class SnippetResponse {

  final List<SquareError>? errors;

  final List<Snippet>? snippets;

  final Snippet? snippet;

  final String? cursor;

  SnippetResponse({
    this.cursor, this.errors, this.snippet, this.snippets
  });

  factory SnippetResponse.fromJson(Map<String, dynamic> json) =>
      _$SnippetResponseFromJson(json);

  Map<String, dynamic> toJson() => _$SnippetResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class Snippet {
  final String? id;

  final String? content;

  @JsonKey(name: "created_at")
  final String? createdAt;

  @JsonKey(name: "site_id")
  final String? siteId;

  @JsonKey(name: "updated_at")
  final String? updatedAt;

  Snippet({
    this.id, this.updatedAt, this.createdAt, this.content, this.siteId
  });

  factory Snippet.fromJson(Map<String, dynamic> json) =>
      _$SnippetFromJson(json);

  Map<String, dynamic> toJson() => _$SnippetToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

enum ShiftWorkdayMatcher {
  START_AT,
  END_AT,
  INTERSECTION
}

enum JobAssignmentPayType {
  NONE,
  HOURLY,
  SALARY
}

enum LoyaltyEventType {
  ACCUMULATE_POINTS,
  CREATE_REWARD,
  REDEEM_REWARD
}


enum LoyaltyEventSource {
  SQUARE,
  LOYALTY_API
}

enum SearchCatalogItemsRequestStockLevel {
  OUT,
  LOW
}

enum ChangeTiming {
  IMMEDIATE,
  END_OF_BILLING_CYCLE,

}
enum OrderState {
  OPEN,
  COMPLETED,
  CANCELED,
  DRAFT,

}

enum OrderFulfillmentType {
  PICKUP,
  SHIPMENT
}

enum OrderFulfillmentState {
  PROPOSED,
  RESERVED,
  PREPARED,
  COMPLETED,
  CANCELED,
  FAILED
}

enum TerimnalRefundStatus {
  PENDING,
  IN_PROGRESS,
  CANCELED,
  COMPLETED,

}

enum TerminalStatus {
  PENDING,
  IN_PROGRESS,
  CANCELED,
  COMPLETED

}

enum CheckoutOptionsPaymentType {
  CARD_PRESENT,
  MANUAL_CARD_ENTRY,
  FELICA_ID,
  FELICA_QUICPAY,
  FELICA_TRANSPORTATION_GROUP,
  FELICA_ALL
}

enum ActionCancelReason {
  BUYER_CANCELED,
  SELLER_CANCELED,
  TIMED_OUT
}

enum BankAccountStatus {
  VERIFICATION_IN_PROGRESS,
  VERIFIED,
  DISABLED,
  
}

enum BankAccountType {
  CHECKING,
  SAVINGS,
  INVESTMENT,
  OTHER,
  BUSINESS_CHECKING
}

enum Weekday {
  MON,
  TUE,
  WED,
  THU,
  FRI,
  SAT,
  SUN,

}

enum ShiftStatus {
  OPEN,
  CLOSED
}

enum TeamMemberAssignedLocationsAssignmentType {
  ALL_CURRENT_AND_FUTURE_LOCATIONS,
  EXPLICIT_LOCATIONS
}

enum TeamMemberStatus {
  ACTIVE,
  INACTIVE
}


enum CashDrawerEventType {
  NO_SALE,
  CASH_TENDER_PAYMENT,
  OTHER_TENDER_PAYMENT,
  CASH_TENDER_CANCELLED_PAYMENT,
  OTHER_TENDER_CANCELLED_PAYMENT,
  CASH_TENDER_REFUND,
  OTHER_TENDER_REFUND,
  PAID_IN,
  PAID_OUT,

}

enum CashDrawerShiftState {
  OPEN,
  ENDED,
  CLOSED,

}


enum DeviceCodeStatus {
  UNKNOWN,
  UNPAIRED,
  PAIRED,
  EXPIRED
}

enum ProductType {
  TERMINAL_API
}

enum DayOfWeek {
  SUN,
  MON,
  TUE,
  WED,
  THU,
  FRI,
  SAT,

}

enum LocationStatus {
  ACTIVE,
  INACTIVE
}

enum LocationType {
  PHYSICAL,
  MOBILE
}

enum LocationCapability {
  CREDIT_CARD_PROCESSING,
  AUTOMATIC_TRANSFERS
}

enum MerchantStatus {
  ACTIVE,
  INACTIVE
}


enum BusinessAppointmentSettingsMaxAppointmentsPerDayLimitType {
  PER_TEAM_MEMBER,
  PER_LOCATION
}

enum BusinessAppointmentSettingsBookingLocationType {
  BUSINESS_LOCATION,
  CUSTOMER_LOCATION,
  PHONE,

}

enum BusinessAppointmentSettingsCancellationPolicy {
  CANCELLATION_TREATED_AS_NO_SHOW,
  CUSTOM_POLICY,

}

enum BusinessAppointmentSettingsAlignmentTime {
  SERVICE_DURATION,
  QUARTER_HOURLY,
  HALF_HOURLY,
  HOURLY,

}

enum BusinessBookingProfileCustomerTimezoneChoice {
  BUSINESS_LOCATION_TIMEZONE,
  CUSTOMER_CHOICE
}

enum BusinessBookingProfileBookingPolicy {
  ACCEPT_ALL,
  REQUIRES_ACCEPTANCE,
}

enum BookingCreatorDetailsCreatorType {
  TEAM_MEMBER,
  CUSTOMER
}


enum BookingStatus {
  PENDING,
  CANCELLED_BY_CUSTOMER,
  CANCELLED_BY_SELLER,
  DECLINED,
  ACCEPTED,
  NO_SHOW
}

enum BookingBookingSource {
  FIRST_PARTY_MERCHANT,
  FIRST_PARTY_BUYER,
  THIRD_PARTY_BUYER,
  API
}


enum GiftCardActivityType {
  ACTIVATE,
  LOAD,
  REDEEM,
  CLEAR_BALANCE,
  DEACTIVATE,
  ADJUST_INCREMENT,
  ADJUST_DECREMENT,
  REFUND,
  UNLINKED_ACTIVITY_REFUND,
  IMPORT,
  BLOCK,
  UNBLOCK,
  IMPORT_REVERSAL,
}

enum GiftCardStatus {
  ACTIVE,
  DEACTIVATED,
  BLOCKED,
  PENDING,

}

enum GiftCardGANSource {
  SQUARE,
  OTHER
}


enum GiftCardType {
  PHYSICAL,
  DIGITAL
}

enum LoyaltyRewardStatus {
  ISSUED,
  REDEEMED,
  DELETED
}

enum LoyaltyProgramAccrualRuleTaxMode {
  BEFORE_TAX,
  AFTER_TAX
}

enum LoyaltyProgramAccrualRuleType {
  VISIT,
  SPEND,
  ITEM_VARIATION,
  CATEGORY
}

enum LoyaltyProgramRewardDefinitionScope {
  ORDER,
  ITEM_VARIATION,
  CATEGORY,

}

enum LoyaltyProgramRewardDefinitionType {
  FIXED_AMOUNT,
  FIXED_PERCENTAGE
}

enum LoyaltyProgramStatus {
  INACTIVE,
  ACTIVE
}

enum CustomerSortField {
  DEFAULT,
  CREATED_AT,
}

enum CustomerInclusionExclusion {
  INCLUDE,
  EXCLUDE,

}

enum CustomerCreationSource {
  OTHER,
  APPOINTMENTS,
  COUPON,
  DELETION_RECOVERY,
  DIRECTORY,
  EGIFTING,
  EMAIL_COLLECTION,
  FEEDBACK,
  IMPORT,
  INVOICES,
  LOYALTY,
  MARKETING,
  MERGE,
  ONLINE_STORE,
  INSTANT_PROFILE,
  TERMINAL,
  THIRD_PARTY,
  THIRD_PARTY_IMPORT,
  UNMERGE_RECOVERY,

}

enum InventoryChangeType {
  PHYSICAL_COUNT,
  ADJUSTMENT,
  TRANSFER
}

enum InventoryState {
  CUSTOM,
  IN_STOCK,
  SOLD,
  RETURNED_BY_CUSTOMER,
  RESERVED_FOR_SALE,
  SOLD_ONLINE,
  ORDERED_FROM_VENDOR,
  RECEIVED_FROM_VENDOR,
  IN_TRANSIT_TO,
  NONE,
  WASTE,
  UNLINKED_RETURN,
  COMPOSED,
  DECOMPOSED,
  SUPPORTED_BY_NEWER_VERSION,

}

enum ProductValue {
  SQUARE_POS,
  EXTERNAL_API,
  BILLING,
  APPOINTMENTS,
  INVOICES,
  ONLINE_STORE,
  PAYROLL,
  DASHBOARD,
  ITEM_LIBRARY_IMPORT,
  OTHER,
}

enum CatalogCustomAttributeDefinitionSellerVisibility {
  SELLER_VISIBILITY_HIDDEN,
  SELLER_VISIBILITY_READ_WRITE_VALUES,

}

enum CatalogCustomAttributeDefinitionAppVisibility {
  APP_VISIBILITY_HIDDEN,
  APP_VISIBILITY_READ_ONLY,
  APP_VISIBILITY_READ_WRITE_VALUES,

}

enum CatalogCustomAttributeDefinitionType {
  STRING,
  BOOLEAN,
  NUMBER,
  SELECTION
}

enum CatalogDiscountModifyTaxBasis {
  MODIFY_TAX_BASIS,
  DO_NOT_MODIFY_TAX_BASIS
}

enum CatalogDiscountType {
  FIXED_PERCENTAGE,
  FIXED_AMOUNT,
  VARIABLE_PERCENTAGE
}

enum CatalogItemProductType {
  REGULAR,
  GIFT_CARD,
  APPOINTMENTS_SERVICE
}

enum CatalogPricingType {
  FIXED_PRICING,
  VARIABLE_PRICING
}

enum InventoryAlertType {
  NONE,
  LOW_QUANTITY
}

enum CatalogModifierListSelectionType {
  SINGLE,
  MULTIPLE
}

enum ExcludeStrategy {
  LEAST_EXPENSIVE,
  MOST_EXPENSIVE
}

enum CatalogQuickAmountType {
  QUICK_AMOUNT_TYPE_MANUAL,
  QUICK_AMOUNT_TYPE_AUTO,
}

enum CatalogQuickAmountsSettingsOption {
  DISABLED,
  MANUAL,
  AUTO,
}

enum SubscriptionCadence {
  DAILY,
  WEEKLY,
  EVERY_TWO_WEEKS,
  THIRTY_DAYS,
  SIXTY_DAYS,
  NINETY_DAYS,
  MONTHLY,
  EVERY_TWO_MONTHS,
  QUARTERLY,
  EVERY_FOUR_MONTHS,
  EVERY_SIX_MONTHS,
  ANNUAL,
  EVERY_TWO_YEARS,

}

enum TaxInclusionType {
  ADDITIVE,
  INCLUSIVE
}

enum TaxCalculationPhase {
  TAX_SUBTOTAL_PHASE,
  TAX_TOTAL_PHASE
}

enum CatalogObjectType {
  ITEM,
  IMAGE,
  CATEGORY,
  ITEM_VARIATION,
  TAX,
  DISCOUNT,
  MODIFIER_LIST,
  MODIFIER,
  PRICING_RULE,
  PRODUCT_SET,
  TIME_PERIOD,
  MEASUREMENT_UNIT,
  SUBSCRIPTION_PLAN,
  ITEM_OPTION,
  ITEM_OPTION_VAL,
  CUSTOM_ATTRIBUTE_DEFINITION,
  QUICK_AMOUNTS_SETTINGS,


}

enum SortOrder {
  DESC,
  ASC
}

enum InvoiceSortField {
  INVOICE_SORT_DATE
}

enum InvoiceCustomFieldPlacement {
  ABOVE_LINE_ITEMS,
  BELOW_LINE_ITEMS,
}

enum InvoicePaymentReminderStatus {
  PENDING,
  NOT_APPLICABLE,
  SENT,
}

enum InvoiceRequestMethod {
  EMAIL,
  CHARGE_CARD_ON_FILE,
  SHARE_MANUALLY,
  CHARGE_BANK_ON_FILE,
  SMS,
  SMS_CHARGE_CARD_ON_FILE,
  SMS_CHARGE_BANK_ON_FILE,
}

enum InvoiceRequestType {
  BALANCE,
  DEPOSIT,
  INSTALLMENT,
}

enum InvoiceAutomaticPaymentSource {
  NONE,
  CARD_ON_FILE,
  BANK_ON_FILE,
}

enum SubscriptionEventSubscriptionEventType {
  START_SUBSCRIPTION,
  PLAN_CHANGE,
  STOP_SUBSCRIPTION,
  DEACTIVATE_SUBSCRIPTION,
  RESUME_SUBSCRIPTION,
  PAUSE_SUBSCRIPTION,
}

enum InvoiceStatus {
  DRAFT,
  UNPAID,
  SCHEDULED,
  PARTIALLY_PAID,
  PAID,
  PARTIALLY_REFUNDED,
  REFUNDED,
  CANCELED,
  FAILED,
  PAYMENT_PENDING,
}

enum SquareErrorCode {
  CARD_PROCESSING_NOT_ENABLED,
  CUSTOMER_NOT_FOUND,
  CUSTOMER_MISSING_NAME,
  CUSTOMER_MISSING_EMAIL,
  INVALID_DATE,
  INTERNAL_SERVER_ERROR,
  UNAUTHORIZED,
  ACCESS_TOKEN_EXPIRED,
  ACCESS_TOKEN_REVOKED,
  FORBIDDEN,
  INSUFFICIENT_SCOPES,
  APPLICATION_DISABLED,
  V1_APPLICATION,
  V1_ACCESS_TOKEN,
  MERCHANT_SUBSCRIPTION_NOT_FOUND,
  BAD_REQUEST,
  MISSING_REQUIRED_PARAMETER,
  INCORRECT_TYPE,
  INVALID_TIME,
  INVALID_TIME_RANGE,
  INVALID_VALUE,
  INVALID_CURSOR,
  UNKNOWN_QUERY_PARAMETER,
  CONFLICTING_PARAMETERS,
  EXPECTED_JSON_BODY,
  INVALID_SORT_ORDER,
  VALUE_REGEX_MISMATCH,
  VALUE_TOO_SHORT,
  VALUE_TOO_LONG,
  VALUE_TOO_LOW,
  VALUE_TOO_HIGH,
  VALUE_EMPTY,
  ARRAY_LENGTH_TOO_LONG,
  ARRAY_LENGTH_TOO_SHORT,
  ARRAY_EMPTY,
  EXPECTED_BOOLEAN,
  EXPECTED_INTEGER,
  EXPECTED_FLOAT,
  EXPECTED_STRING,
  EXPECTED_OBJECT,
  EXPECTED_ARRAY,
  EXPECTED_MAP,
  EXPECTED_BASE64_ENCODED_BYTE_ARRAY,
  INVALID_ARRAY_VALUE,
  INVALID_ENUM_VALUE,
  INVALID_CONTENT_TYPE,
  INVALID_FORM_VALUE,
  NO_FIELDS_SET,
  TOO_MANY_MAP_ENTRIES,
  MAP_KEY_LENGTH_TOO_SHORT,
  MAP_KEY_LENGTH_TOO_LONG,
  CURRENCY_MISMATCH,
  LOCATION_MISMATCH,
  IDEMPOTENCY_KEY_REUSED,
  UNEXPECTED_VALUE,
  SANDBOX_NOT_SUPPORTED,
  BAD_CERTIFICATE,
  INVALID_SQUARE_VERSION_FORMAT,
  API_VERSION_INCOMPATIBLE,
  NOT_FOUND,
  METHOD_NOT_ALLOWED,
  NOT_ACCEPTABLE,
  REQUEST_TIMEOUT,
  CONFLICT,
  GONE,
  REQUEST_ENTITY_TOO_LARGE,
  UNSUPPORTED_MEDIA_TYPE,
  UNPROCESSABLE_ENTITY,
  RATE_LIMITED,
  NOT_IMPLEMENTED,
  BAD_GATEWAY,
  SERVICE_UNAVAILABLE,
  GATEWAY_TIMEOUT
}

enum SubscriptionActionType { CANCEL, PAUSE, RESUME, SWAP_PLAN }

enum SubscriptionStatus { PENDING, ACTIVE, CANCELED, DEACTIVATED, PAUSED }

enum RefundStatus { PENDING, APPROVED, REJECTED, FAILED }

enum MeasurementUnitGeneric { UNIT }

enum MeasurementUnitLength {
  IMPERIAL_INCH,
  IMPERIAL_FOOT,
  IMPERIAL_YARD,
  IMPERIAL_MILE,
  METRIC_MILLIMETER,
  METRIC_CENTIMETER,
  METRIC_METER,
  METRIC_KILOMETER
}

enum MeasurementUnitTime {
  GENERIC_MILLISECOND,
  GENERIC_SECOND,
  GENERIC_MINUTE,
  GENERIC_HOUR,
  GENERIC_DAY
}

enum MeasurementUnitUnitType {
  TYPE_CUSTOM,
  TYPE_AREA,
  TYPE_LENGTH,
  TYPE_VOLUME,
  TYPE_WEIGHT
}

enum MeasurementUnitVolume {
  GENERIC_FLUID_OUNCE,
  GENERIC_SHOT,
  GENERIC_CUP,
  GENERIC_PINT,
  GENERIC_QUART,
  GENERIC_GALLON,
  IMPERIAL_CUBIC_INCH,
  IMPERIAL_CUBIC_FOOT,
  IMPERIAL_CUBIC_YARD,
  METRIC_MILLILITER,
  METRIC_LITER,
}

enum MeasurementUnitWeight {
  IMPERIAL_WEIGHT_OUNCE,
  IMPERIAL_POUND,
  IMPERIAL_STONE,
  METRIC_MILLIGRAM,
  METRIC_GRAM,
  METRIC_KILOGRAM,
}

enum MeasurementUnitArea {
  IMPERIAL_ACRE,
  IMPERIAL_SQUARE_INCH,
  IMPERIAL_SQUARE_FOOT,
  IMPERIAL_SQUARE_YARD,
  IMPERIAL_SQUARE_MILE,
  METRIC_SQUARE_CENTIMETER,
  METRIC_SQUARE_METER,
  METRIC_SQUARE_KILOMETER
}

enum OrderFulfillmentPickupDetailsScheduleType {
  SCHEDULED,
  ASAP,
}

enum OrderLineItemDiscountScope { OTHER_DISCOUNT_SCOPE, LINE_ITEM, ORDER }

enum OrderLineItemDiscountType {
  UNKNOWN_DISCOUNT,
  FIXED_PERCENTAGE,
  FIXED_AMOUNT,
  VARIABLE_PERCENTAGE,
  VARIABLE_AMOUNT
}

enum OrderLineItemItemType { ITEM, CUSTOM_AMOUNT, GIFT_CARD }

enum OrderLineItemTaxScope { OTHER_TAX_SCOPE, LINE_ITEM, ORDER }

enum OrderLineItemTaxType { UNKNOWN_TAX, ADDITIVE, INCLUSIVE }

enum TenderCardDetailsEntryMethod { SWIPED, KEYED, EMV, ON_FILE, CONTACTLESS }

enum TenderCardDetailsStatus { AUTHORIZED, CAPTURED, VOIDED, FAILED }

enum CardBrand {
  OTHER_BRAND,
  VISA,
  MASTERCARD,
  AMERICAN_EXPRESS,
  DISCOVER,
  DISCOVER_DINERS,
  JCB,
  CHINA_UNIONPAY,
  SQUARE_GIFT_CARD,
  SQUARE_CAPITAL_CARD,
  INTERAC,
  EFTPOS,
  FELICA,
  EBT
}

enum CardType { UNKNOWN_CARD_TYPE, CREDIT, DEBIT }

enum CardPrepaidType { UNKNOWN_PREPAID_TYPE, NOT_PREPAID, PREPAID }
