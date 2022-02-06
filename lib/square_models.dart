
import 'package:json_annotation/json_annotation.dart';

part "square_models.g.dart";


///
/// Responst for the OAuth request
@JsonSerializable(includeIfNull: false)
class TokenResponse {

  @JsonKey(name:"refresh_token")
  final String? refreshToken;

  @JsonKey(name: "access_token")
  final String? accessToken;

  @JsonKey(name: "expires_in")
  final int? expiresIn;

  @JsonKey(name: "merchant_id")
  final String? merchantId;

  @JsonKey(name: "short_lived")
  final bool? isShortLived;

  TokenResponse({
    this.refreshToken, this.accessToken, this.expiresIn, this.isShortLived,
    this.merchantId
  });

  factory TokenResponse.fromJson(Map<String, dynamic> json) => _$TokenResponseFromJson(json);

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
  static final BankAccountRead = Scope._("BankAccountRead", "	BANK_ACCOUNTS_READ");

  static final AppointmentsRead = Scope._("AppointmentsRead", "APPOINTMENTS_READ");
  static final AppointmentsWrite = Scope._("AppointmentsWrite", "APPOINTMENTS_WRITE");
  static final AppointmentReadAll = Scope._("AppointmentReadAll", "APPOINTMENTS_ALL_READ");

  static final AppointmentBusinessSettingsRead = Scope._("AppointmentBusinessSettingsRead", "APPOINTMENTS_BUSINESS_SETTINGS_READ");

  static final CashDrawerRead = Scope._("CashDrawerRead", "CASH_DRAWER_READ");

  static final CustomerRead = Scope._("CustomerRead", "CUSTOMERS_READ");
  static final CustomerWrite = Scope._("CustomerWrite", "CUSTOMERS_WRITE");

  static final DeviceCredentialManagement = Scope._("DeviceCredentialManagement", "DEVICE_CREDENTIAL_MANAGEMENT");

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

  static final MerchantProfileRead = Scope._("MerchantProfileRead", "MERCHANT_PROFILE_READ");
  static final MerchantProfileWrite = Scope._("MerchantProfileWrite", "MERCHANT_PROFILE_WRITE");

  static final OnlineStoreSiteRead = Scope._("OnlineStoreSiteRead", "ONLINE_STORE_SITE_READ");

  static final OnlineStoreSnippetsRead = Scope._("OnlineStoreSnippetsRead", "ONLINE_STORE_SNIPPETS_READ");
  static final OnlineStoreSnippetsWrite = Scope._("OnlineStoreSnippetsWrite", "ONLINE_STORE_SNIPPETS_WRITE");

  static final OrdersRead = Scope._("OrdersRead", "ORDERS_READ");
  static final OrdersWrite = Scope._("OrdersWrite", "ORDERS_WRITE");

  static final PaymentRead = Scope._("PaymentRead", "PAYMENTS_READ");
  static final PaymentWrite = Scope._("PaymentWrite", "PAYMENTS_WRITE");
  static final PaymentWriteInPerson = Scope._("PaymentWriteInPerson", "PAYMENTS_WRITE_IN_PERSON");
  static final PaymentWriteAdditionalRecipients = Scope._("PaymentWriteAdditionalRecipients", "PAYMENTS_WRITE_ADDITIONAL_RECIPIENTS");

  static final SubscriptionsRead = Scope._("SubscriptionsRead", "SUBSCRIPTIONS_READ");
  static final SubscriptionsWrite = Scope._("SubscriptionsWrite", "SUBSCRIPTIONS_WRITE");

  static final TimeCardsRead = Scope._("TimeCardsRead", "TIMECARDS_READ");
  static final TimeCardsWrite = Scope._("TimeCardsWrite", "TIMECARDS_WRITE");

  static final TimeCardsSettingsRead = Scope._("TimeCardsSettingsRead", "TIMECARDS_SETTINGS_READ");
  static final TimeCardsSettingsWrite = Scope._("TimeCardsSettingsWrite", "TIMECARDS_SETTINGS_WRITE");

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

  Order({
    this.id, this.customerId, this.state, this.source, this.closedAt,
    this.createdAt, this.discounts, this.fulfillments, this.lineItems,
    this.locationId, this.metadata, this.netAmounts, this.pricingOptions,
    this.referenceId, this.refunds, this.returnAmounts, this.returns,
    this.rewards, this.roundingAdjustment, this.serviceCharges, this.taxes,
    this.tenders, this.ticketName, this.totalDiscountMoney, this.totalMoney,
    this.totalServiceChargeMoney, this.totalTaxMoney, this.totalTipMoney,
    this.updatedAt, this.version
  });

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

  OrderLineItem({
    this.totalTaxMoney, this.totalMoney, this.totalDiscountMoney,
    this.metadata, this.uid, this.name, this.quantity,
    this.appliedDiscounts, this.appliedTaxes, this.basePriceMoney,
    this.catalogObjectId, this.catalogVersion, this.grossSalesMoney,
    this.itemType, this.modifiers, this.note, this.pricingBlocklists,
    this.quantityUnit, this.variationName, this.variationTotalPriceMoney
  });

  factory OrderLineItem.fromJson(Map<String, dynamic> json) => _$OrderLineItemFromJson(json);

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

  OrderLineItemModifier({
    this.name, this.catalogVersion, this.catalogObjectId, this.uid,
    this.basePriceMoney, this.totalPriceMoney
  });

  factory OrderLineItemModifier.fromJson(Map<String, dynamic> json) => _$OrderLineItemModifierFromJson(json);

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

  OrderLineItemDiscount({
  this.catalogVersion, this.catalogObjectId, this.name,
    this.uid, this.metadata, this.scope, this.type, this.amountMoney,
    this.appliedMoney, this.percentage, this.pricingRuleId, this.rewardIds
  });

  factory OrderLineItemDiscount.fromJson(Map<String, dynamic> json) => _$OrderLineItemDiscountFromJson(json);

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

  OrderLineItemTax({
    this.percentage, this.appliedMoney, this.type, this.scope,
    this.metadata, this.uid, this.name, this.catalogObjectId,
    this.catalogVersion, this.autoApplied
  });

  factory OrderLineItemTax.fromJson(Map<String, dynamic> json) => _$OrderLineItemTaxFromJson(json);

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


  OrderFulfillment({
    this.uid, this.metadata, this.type, this.state, this.pickupDetails,
    this.shipmentDetails
  });

  factory OrderFulfillment.fromJson(Map<String, dynamic> json) => _$OrderFulfillmentFromJson(json);

  Map<String, dynamic> toJson() => _$OrderFulfillmentToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class OrderSource {

  final String? name;

  OrderSource({
    this.name
  });

  factory OrderSource.fromJson(Map<String, dynamic> json) => _$OrderSourceFromJson(json);

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

  OrderMoneyAmounts({
    this.totalMoney, this.discountMoney, this.serviceChargeMoney,
    this.taxMoney, this.tipMoney
  });

  factory OrderMoneyAmounts.fromJson(Map<String, dynamic> json) => _$OrderMoneyAmountsFromJson(json);

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

  OrderPricingOptions({
    this.autoApplyDiscounts, this.autoApplyTaxes
  });

  factory OrderPricingOptions.fromJson(Map<String, dynamic> json) => _$OrderPricingOptionsFromJson(json);

  Map<String, dynamic> toJson() => _$OrderPricingOptionsToJson(this);

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


  Refund({
    this.amountMoney, this.locationId, this.createdAt, this.id,
    this.status, this.transactionId, this.additionalRecipients,
    this.processingFeeMoney, this.reason, this.tenderId
  });

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

  OrderReturn({
    this.roundingAdjustment, this.returnAmounts, this.returnDiscounts,
    this.returnLineItems, this.returnServiceCharges, this.returnTaxes,
    this.sourceOrderId, this.uid
  });

  factory OrderReturn.fromJson(Map<String, dynamic> json) => _$OrderReturnFromJson(json);

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

  OrderReward({
    this.id, this.rewardTierId
  });

  factory OrderReward.fromJson(Map<String, dynamic> json) => _$OrderRewardFromJson(json);

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

  OrderRoundingAdjustment({
    this.uid, this.amountMoney, this.name
  });

  factory OrderRoundingAdjustment.fromJson(Map<String, dynamic> json) => _$OrderRoundingAdjustmentFromJson(json);

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

  @JsonKey(name:"total_money")
  final Money? totalMoney;

  @JsonKey(name: "total_tax_money")
  final Money? totalTaxMoney;

  final String? type;

  final String? uid;


  OrderServiceCharge({
    this.name, this.amountMoney, this.uid, this.totalMoney, this.type,
    this.metadata, this.catalogVersion, this.catalogObjectId,
    this.appliedMoney, this.percentage, this.appliedTaxes, this.totalTaxMoney,
    this.taxable, this.calculationPhase
  });

  factory OrderServiceCharge.fromJson(Map<String, dynamic> json) => _$OrderServiceChargeFromJson(json);

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

  Tender({
    this.type, this.amountMoney, this.id, this.processingFeeMoney, this.additionalRecipients,
    this.transactionId, this.createdAt, this.locationId, this.tipMoney,
    this.note, this.customerId, this.paymentId, this.cardDetails,
    this.cashDetails
  });

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

  Money({
    this.amount, this.currency
  });

  factory Money.fromJson(Map<String, dynamic> json) => _$MoneyFromJson(json);

  Map<String, dynamic> toJson() => _$MoneyToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class OrderLineItemAppliedDiscount{

  @JsonKey(name: "discount_uid")
  final String? discountUid;

  @JsonKey(name: "applied_money")
  final Money? appliedMoney;

  final String? uid;

  OrderLineItemAppliedDiscount({
    this.appliedMoney, this.uid, this.discountUid
  });

  factory OrderLineItemAppliedDiscount.fromJson(Map<String, dynamic> json) => _$OrderLineItemAppliedDiscountFromJson(json);

  Map<String, dynamic> toJson() => _$OrderLineItemAppliedDiscountToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class OrderLineItemAppliedTax{

  @JsonKey(name: "tax_uid")
  final String? taxUid;

  @JsonKey(name: "applied_money")
  final Money? appliedMoney;

  final String? uid;


  OrderLineItemAppliedTax({
    this.uid, this.appliedMoney, this.taxUid
  });

  factory OrderLineItemAppliedTax.fromJson(Map<String, dynamic> json) => _$OrderLineItemAppliedTaxFromJson(json);

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

  OrderLineItemPricingBlocklists({
    this.blockedDiscounts, this.blockedTaxes
  });

  factory OrderLineItemPricingBlocklists.fromJson(Map<String, dynamic> json) => _$OrderLineItemPricingBlocklistsFromJson(json);

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

  OrderLineItemPricingBlocklistsBlockedDiscount({
    this.uid, this.discountUid, this.discountCatalogObjectId
  });

  factory OrderLineItemPricingBlocklistsBlockedDiscount.fromJson(Map<String, dynamic> json) => _$OrderLineItemPricingBlocklistsBlockedDiscountFromJson(json);

  Map<String, dynamic> toJson() => _$OrderLineItemPricingBlocklistsBlockedDiscountToJson(this);

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

  OrderLineItemPricingBlocklistsBlockedTax({
    this.uid, this.taxUid, this.taxCatalogObjectId
  });

  factory OrderLineItemPricingBlocklistsBlockedTax.fromJson(Map<String, dynamic> json) => _$OrderLineItemPricingBlocklistsBlockedTaxFromJson(json);

  Map<String, dynamic> toJson() => _$OrderLineItemPricingBlocklistsBlockedTaxToJson(this);

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

  OrderQuantityUnit({
    this.catalogObjectId, this.catalogVersion, this.measurementUnit,
    this.precision
  });

  factory OrderQuantityUnit.fromJson(Map<String, dynamic> json) => _$OrderQuantityUnitFromJson(json);

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

  MeasurementUnit({
    this.type, this.areaUnit, this.customUnit, this.genericUnit,
    this.lengthUnit, this.timeUnit, this.volumeUnit, this.weightUnit
  });

  factory MeasurementUnit.fromJson(Map<String, dynamic> json) => _$MeasurementUnitFromJson(json);

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

  MeasurementUnitCustom({
    this.name, this.abbreviation
  });

  factory MeasurementUnitCustom.fromJson(Map<String, dynamic> json) => _$MeasurementUnitCustomFromJson(json);

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
  final OrderFulfillmentPickupDetailsCurbsidePickupDetails? curbsidePickupDetails;

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

  OrderFulfillmentPickupDetails({
    this.note, this.acceptedAt, this.autoCompleteDuration, this.canceledAt,
    this.cancelReason, this.curbsidePickupDetails, this.expiredAt,
    this.expiresAt, this.isCurbsidePickup, this.pickedUpAt,
    this.pickupAt, this.pickupWindowDuration, this.placedAt, this.prepTimeDuration,
    this.readyAt, this.recipient, this.rejectedAt, this.scheduleType
  });

  factory OrderFulfillmentPickupDetails.fromJson(Map<String, dynamic> json) => _$OrderFulfillmentPickupDetailsFromJson(json);

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

  OrderFulfillmentRecipient({
    this.customerId, this.phoneNumber, this.address,
    this.displayName, this.emailAddress
  });

  factory OrderFulfillmentRecipient.fromJson(Map<String, dynamic> json) => _$OrderFulfillmentRecipientFromJson(json);

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

  Address({
    this.country, this.postalCode, this.addressLine1, this.addressLine2,
    this.addressLine3, this.administrativeDistrictLevel1, this.locality,
    this.sublocality
  });

  factory Address.fromJson(Map<String, dynamic> json) => _$AddressFromJson(json);

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

  OrderFulfillmentPickupDetailsCurbsidePickupDetails({
    this.buyerArrivedAt, this.curbsideDetails
  });

  factory OrderFulfillmentPickupDetailsCurbsidePickupDetails.fromJson(Map<String, dynamic> json) => _$OrderFulfillmentPickupDetailsCurbsidePickupDetailsFromJson(json);

  Map<String, dynamic> toJson() => _$OrderFulfillmentPickupDetailsCurbsidePickupDetailsToJson(this);

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

  OrderFulfillmentShipmentDetails({
    this.recipient, this.placedAt, this.cancelReason, this.canceledAt,
    this.carrier, this.expectedShippedAt, this.failedAt, this.failureReason,
    this.inProgressAt, this.packagedAt, this.shippedAt, this.shippingNote,
    this.shippingType, this.trackingNumber, this.trackingUrl
  });

  factory OrderFulfillmentShipmentDetails.fromJson(Map<String, dynamic> json) => _$OrderFulfillmentShipmentDetailsFromJson(json);

  Map<String, dynamic> toJson() => _$OrderFulfillmentShipmentDetailsToJson(this);

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

  AdditionalRecipient({
    this.locationId, this.amountMoney, this.description, this.receivableId
  });

  factory AdditionalRecipient.fromJson(Map<String, dynamic> json) => _$AdditionalRecipientFromJson(json);

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

  OrderReturnDiscount({
    this.amountMoney, this.name, this.type, this.catalogVersion, this.catalogObjectId,
    this.uid, this.appliedMoney, this.percentage, this.scope,
    this.sourceDiscountUid
  });

  factory OrderReturnDiscount.fromJson(Map<String, dynamic> json) => _$OrderReturnDiscountFromJson(json);

  Map<String, dynamic> toJson() => _$OrderReturnDiscountToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

@JsonSerializable(includeIfNull: false)
class OrderReturnLineItem{

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

  OrderReturnLineItem({
    this.uid, this.catalogObjectId, this.catalogVersion, this.name,
    this.note, this.totalTaxMoney, this.appliedTaxes, this.totalMoney,
    this.variationTotalPriceMoney, this.variationName, this.quantityUnit,
    this.itemType, this.basePriceMoney, this.appliedDiscounts,
    this.quantity, this.totalDiscountMoney, this.grossReturnMoney,
    this.returnModifiers, this.sourceLineItemUid
  });

  factory OrderReturnLineItem.fromJson(Map<String, dynamic> json) => _$OrderReturnLineItemFromJson(json);

  Map<String, dynamic> toJson() => _$OrderReturnLineItemToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

@JsonSerializable(includeIfNull: false)
class OrderReturnServiceCharge{

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

  OrderReturnServiceCharge({
    this.totalMoney, this.appliedTaxes, this.totalTaxMoney, this.name,
    this.catalogVersion, this.catalogObjectId, this.uid, this.percentage,
    this.appliedMoney, this.amountMoney, this.calculationPhase, this.taxable,
    this.sourceServiceChargeUid
  });

  factory OrderReturnServiceCharge.fromJson(Map<String, dynamic> json) => _$OrderReturnServiceChargeFromJson(json);

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

  OrderReturnTax({
    this.appliedMoney, this.percentage, this.uid, this.catalogObjectId,
    this.catalogVersion, this.name, this.scope, this.type, this.sourceTaxUid
  });

  factory OrderReturnTax.fromJson(Map<String, dynamic> json) => _$OrderReturnTaxFromJson(json);

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

  TenderCardDetails({
    this.status, this.card, this.entryMethod
  });

  factory TenderCardDetails.fromJson(Map<String, dynamic> json) => _$TenderCardDetailsFromJson(json);

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

  Card({
    this.customerId, this.id, this.version, this.referenceId, this.merchantId,
    this.expYear, this.expMonth, this.cardType, this.billingAddress,
    this.bin, this.cardBrand, this.cardholderName, this.enabled,
    this.fingerprint, this.last4, this.prepaidType
  });

  factory Card.fromJson(Map<String, dynamic> json) => _$CardFromJson(json);

  Map<String, dynamic> toJson() => _$CardToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

enum RefundStatus {
  PENDING, APPROVED, REJECTED, FAILED
}

enum MeasurementUnitGeneric {
  UNIT
}

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

enum OrderLineItemDiscountScope {
  OTHER_DISCOUNT_SCOPE,
  LINE_ITEM,
  ORDER
}

enum OrderLineItemDiscountType {
  UNKNOWN_DISCOUNT,
  FIXED_PERCENTAGE,
  FIXED_AMOUNT,
  VARIABLE_PERCENTAGE,
  VARIABLE_AMOUNT

}

enum OrderLineItemItemType {
  ITEM,
  CUSTOM_AMOUNT,
  GIFT_CARD
}

enum OrderLineItemTaxScope {
  OTHER_TAX_SCOPE,
  LINE_ITEM,
  ORDER
}

enum OrderLineItemTaxType {
  UNKNOWN_TAX,
  ADDITIVE,
  INCLUSIVE

}

enum TenderCardDetailsEntryMethod {
  SWIPED,
  KEYED,
  EMV,
  ON_FILE,
  CONTACTLESS
}

enum TenderCardDetailsStatus {
  AUTHORIZED,
  CAPTURED,
  VOIDED,
  FAILED

}

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

enum CardType {
  UNKNOWN_CARD_TYPE,
  CREDIT,
  DEBIT
}

enum CardPrepaidType {
  UNKNOWN_PREPAID_TYPE,
  NOT_PREPAID,
  PREPAID
}