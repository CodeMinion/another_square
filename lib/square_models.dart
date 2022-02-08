import 'dart:html';

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
      Scope._("BankAccountRead", "	BANK_ACCOUNTS_READ");

  static final AppointmentsRead =
      Scope._("AppointmentsRead", "APPOINTMENTS_READ");
  static final AppointmentsWrite =
      Scope._("AppointmentsWrite", "APPOINTMENTS_WRITE");
  static final AppointmentReadAll =
      Scope._("AppointmentReadAll", "APPOINTMENTS_ALL_READ");

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
    AppointmentReadAll,
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
class SubscriptionResponse {
  final List<SquareError>? erros;

  final Subscription? subscription;

  SubscriptionResponse({this.erros, this.subscription});

  factory SubscriptionResponse.fromJson(Map<String, dynamic> json) =>
      _$SubscriptionResponseFromJson(json);

  Map<String, dynamic> toJson() => _$SubscriptionResponseToJson(this);

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

  CatalogResponse({
    this.cursor, this.errors, this.latestTime, this.objects,
    this.relatedObjects
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

enum BusinessAppointmentSettingsBookingLocationType {
  BUSINESS_LOCATION,
  CUSTOMER_LOCATION,
  PHONE,

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
