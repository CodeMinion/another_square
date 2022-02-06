// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'square_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TokenResponse _$TokenResponseFromJson(Map<String, dynamic> json) =>
    TokenResponse(
      refreshToken: json['refresh_token'] as String?,
      accessToken: json['access_token'] as String?,
      expiresIn: json['expires_in'] as int?,
      isShortLived: json['short_lived'] as bool?,
      merchantId: json['merchant_id'] as String?,
    );

Map<String, dynamic> _$TokenResponseToJson(TokenResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('refresh_token', instance.refreshToken);
  writeNotNull('access_token', instance.accessToken);
  writeNotNull('expires_in', instance.expiresIn);
  writeNotNull('merchant_id', instance.merchantId);
  writeNotNull('short_lived', instance.isShortLived);
  return val;
}

Order _$OrderFromJson(Map<String, dynamic> json) => Order(
      id: json['id'] as String?,
      customerId: json['customer_id'] as String?,
      state: json['state'] as String?,
      source: json['source'] == null
          ? null
          : OrderSource.fromJson(json['source'] as Map<String, dynamic>),
      closedAt: json['closed_at'] as String?,
      createdAt: json['created_at'] as String?,
      discounts: (json['discounts'] as List<dynamic>?)
          ?.map(
              (e) => OrderLineItemDiscount.fromJson(e as Map<String, dynamic>))
          .toList(),
      fulfillments: (json['fulfillments'] as List<dynamic>?)
          ?.map((e) => OrderFulfillment.fromJson(e as Map<String, dynamic>))
          .toList(),
      lineItems: (json['line_items'] as List<dynamic>?)
          ?.map((e) => OrderLineItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      locationId: json['location_id'] as String?,
      metadata: (json['metadata'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
      netAmounts: json['net_amounts'] == null
          ? null
          : OrderMoneyAmounts.fromJson(
              json['net_amounts'] as Map<String, dynamic>),
      pricingOptions: json['pricing_options'] == null
          ? null
          : OrderPricingOptions.fromJson(
              json['pricing_options'] as Map<String, dynamic>),
      referenceId: json['reference_id'] as String?,
      refunds: (json['refunds'] as List<dynamic>?)
          ?.map((e) => Refund.fromJson(e as Map<String, dynamic>))
          .toList(),
      returnAmounts: json['return_amounts'] == null
          ? null
          : OrderMoneyAmounts.fromJson(
              json['return_amounts'] as Map<String, dynamic>),
      returns: (json['returns'] as List<dynamic>?)
          ?.map((e) => OrderReturn.fromJson(e as Map<String, dynamic>))
          .toList(),
      rewards: (json['rewards'] as List<dynamic>?)
          ?.map((e) => OrderReward.fromJson(e as Map<String, dynamic>))
          .toList(),
      roundingAdjustment: json['rounding_adjustment'] == null
          ? null
          : OrderRoundingAdjustment.fromJson(
              json['rounding_adjustment'] as Map<String, dynamic>),
      serviceCharges: (json['service_charges'] as List<dynamic>?)
          ?.map((e) => OrderServiceCharge.fromJson(e as Map<String, dynamic>))
          .toList(),
      taxes: (json['taxes'] as List<dynamic>?)
          ?.map((e) => OrderLineItemTax.fromJson(e as Map<String, dynamic>))
          .toList(),
      tenders: (json['tenders'] as List<dynamic>?)
          ?.map((e) => Tender.fromJson(e as Map<String, dynamic>))
          .toList(),
      ticketName: json['ticket_name'] as String?,
      totalDiscountMoney: json['total_discount_money'] == null
          ? null
          : Money.fromJson(
              json['total_discount_money'] as Map<String, dynamic>),
      totalMoney: json['total_money'] == null
          ? null
          : Money.fromJson(json['total_money'] as Map<String, dynamic>),
      totalServiceChargeMoney: json['total_service_charge_money'] == null
          ? null
          : Money.fromJson(
              json['total_service_charge_money'] as Map<String, dynamic>),
      totalTaxMoney: json['total_tax_money'] == null
          ? null
          : Money.fromJson(json['total_tax_money'] as Map<String, dynamic>),
      totalTipMoney: json['total_tip_money'] == null
          ? null
          : Money.fromJson(json['total_tip_money'] as Map<String, dynamic>),
      updatedAt: json['updated_at'] as String?,
      version: json['version'] as int?,
    );

Map<String, dynamic> _$OrderToJson(Order instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('location_id', instance.locationId);
  writeNotNull('closed_at', instance.closedAt);
  writeNotNull('created_at', instance.createdAt);
  writeNotNull('customer_id', instance.customerId);
  writeNotNull('discounts', instance.discounts);
  writeNotNull('fulfillments', instance.fulfillments);
  writeNotNull('line_items', instance.lineItems);
  writeNotNull('metadata', instance.metadata);
  writeNotNull('net_amounts', instance.netAmounts);
  writeNotNull('pricing_options', instance.pricingOptions);
  writeNotNull('reference_id', instance.referenceId);
  writeNotNull('refunds', instance.refunds);
  writeNotNull('return_amounts', instance.returnAmounts);
  writeNotNull('returns', instance.returns);
  writeNotNull('rewards', instance.rewards);
  writeNotNull('rounding_adjustment', instance.roundingAdjustment);
  writeNotNull('service_charges', instance.serviceCharges);
  writeNotNull('source', instance.source);
  writeNotNull('state', instance.state);
  writeNotNull('taxes', instance.taxes);
  writeNotNull('tenders', instance.tenders);
  writeNotNull('ticket_name', instance.ticketName);
  writeNotNull('total_discount_money', instance.totalDiscountMoney);
  writeNotNull('total_money', instance.totalMoney);
  writeNotNull('total_service_charge_money', instance.totalServiceChargeMoney);
  writeNotNull('total_tax_money', instance.totalTaxMoney);
  writeNotNull('total_tip_money', instance.totalTipMoney);
  writeNotNull('updated_at', instance.updatedAt);
  writeNotNull('version', instance.version);
  return val;
}

OrderLineItem _$OrderLineItemFromJson(Map<String, dynamic> json) =>
    OrderLineItem(
      totalTaxMoney: json['total_tax_money'] == null
          ? null
          : Money.fromJson(json['total_tax_money'] as Map<String, dynamic>),
      totalMoney: json['total_money'] == null
          ? null
          : Money.fromJson(json['total_money'] as Map<String, dynamic>),
      totalDiscountMoney: json['total_discount_money'] == null
          ? null
          : Money.fromJson(
              json['total_discount_money'] as Map<String, dynamic>),
      metadata: (json['metadata'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
      uid: json['uid'] as String?,
      name: json['name'] as String?,
      quantity: json['quantity'] as String?,
      appliedDiscounts: (json['applied_discounts'] as List<dynamic>?)
          ?.map((e) =>
              OrderLineItemAppliedDiscount.fromJson(e as Map<String, dynamic>))
          .toList(),
      appliedTaxes: (json['applied_taxes'] as List<dynamic>?)
          ?.map((e) =>
              OrderLineItemAppliedTax.fromJson(e as Map<String, dynamic>))
          .toList(),
      basePriceMoney: (json['base_price_money'] as List<dynamic>?)
          ?.map((e) => Money.fromJson(e as Map<String, dynamic>))
          .toList(),
      catalogObjectId: json['catalog_object_id'] as String?,
      catalogVersion: json['catalog_version'] as int?,
      grossSalesMoney: json['gross_sales_money'] == null
          ? null
          : Money.fromJson(json['gross_sales_money'] as Map<String, dynamic>),
      itemType: json['item_type'] as String?,
      modifiers: (json['modifiers'] as List<dynamic>?)
          ?.map(
              (e) => OrderLineItemModifier.fromJson(e as Map<String, dynamic>))
          .toList(),
      note: json['note'] as String?,
      pricingBlocklists: json['pricing_blocklists'] == null
          ? null
          : OrderLineItemPricingBlocklists.fromJson(
              json['pricing_blocklists'] as Map<String, dynamic>),
      quantityUnit: json['quantity_unit'] == null
          ? null
          : OrderQuantityUnit.fromJson(
              json['quantity_unit'] as Map<String, dynamic>),
      variationName: json['variation_name'] as String?,
      variationTotalPriceMoney: json['variation_total_price_money'] == null
          ? null
          : Money.fromJson(
              json['variation_total_price_money'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$OrderLineItemToJson(OrderLineItem instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('quantity', instance.quantity);
  writeNotNull('applied_discounts', instance.appliedDiscounts);
  writeNotNull('applied_taxes', instance.appliedTaxes);
  writeNotNull('base_price_money', instance.basePriceMoney);
  writeNotNull('catalog_object_id', instance.catalogObjectId);
  writeNotNull('catalog_version', instance.catalogVersion);
  writeNotNull('gross_sales_money', instance.grossSalesMoney);
  writeNotNull('item_type', instance.itemType);
  writeNotNull('metadata', instance.metadata);
  writeNotNull('modifiers', instance.modifiers);
  writeNotNull('name', instance.name);
  writeNotNull('note', instance.note);
  writeNotNull('pricing_blocklists', instance.pricingBlocklists);
  writeNotNull('quantity_unit', instance.quantityUnit);
  writeNotNull('total_discount_money', instance.totalDiscountMoney);
  writeNotNull('total_money', instance.totalMoney);
  writeNotNull('total_tax_money', instance.totalTaxMoney);
  writeNotNull('uid', instance.uid);
  writeNotNull('variation_name', instance.variationName);
  writeNotNull(
      'variation_total_price_money', instance.variationTotalPriceMoney);
  return val;
}

OrderLineItemModifier _$OrderLineItemModifierFromJson(
        Map<String, dynamic> json) =>
    OrderLineItemModifier(
      name: json['name'] as String?,
      catalogVersion: json['catalog_version'] as int?,
      catalogObjectId: json['catalog_object_id'] as String?,
      uid: json['uid'] as String?,
      basePriceMoney: json['base_price_money'] == null
          ? null
          : Money.fromJson(json['base_price_money'] as Map<String, dynamic>),
      totalPriceMoney: json['total_price_money'] == null
          ? null
          : Money.fromJson(json['total_price_money'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$OrderLineItemModifierToJson(
    OrderLineItemModifier instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('base_price_money', instance.basePriceMoney);
  writeNotNull('catalog_object_id', instance.catalogObjectId);
  writeNotNull('catalog_version', instance.catalogVersion);
  writeNotNull('name', instance.name);
  writeNotNull('total_price_money', instance.totalPriceMoney);
  writeNotNull('uid', instance.uid);
  return val;
}

OrderLineItemDiscount _$OrderLineItemDiscountFromJson(
        Map<String, dynamic> json) =>
    OrderLineItemDiscount(
      catalogVersion: json['catalog_version'] as int?,
      catalogObjectId: json['catalog_object_id'] as String?,
      name: json['name'] as String?,
      uid: json['uid'] as String?,
      metadata: (json['metadata'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
      scope: $enumDecodeNullable(
          _$OrderLineItemDiscountScopeEnumMap, json['scope']),
      type: json['type'] as String?,
      amountMoney: json['amount_money'] == null
          ? null
          : Money.fromJson(json['amount_money'] as Map<String, dynamic>),
      appliedMoney: json['applied_money'] == null
          ? null
          : Money.fromJson(json['applied_money'] as Map<String, dynamic>),
      percentage: json['percentage'] as String?,
      pricingRuleId: json['pricing_rule_id'] as String?,
      rewardIds: (json['reward_ids'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$OrderLineItemDiscountToJson(
    OrderLineItemDiscount instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('amount_money', instance.amountMoney);
  writeNotNull('applied_money', instance.appliedMoney);
  writeNotNull('catalog_object_id', instance.catalogObjectId);
  writeNotNull('catalog_version', instance.catalogVersion);
  writeNotNull('metadata', instance.metadata);
  writeNotNull('name', instance.name);
  writeNotNull('percentage', instance.percentage);
  writeNotNull('pricing_rule_id', instance.pricingRuleId);
  writeNotNull('reward_ids', instance.rewardIds);
  writeNotNull('scope', _$OrderLineItemDiscountScopeEnumMap[instance.scope]);
  writeNotNull('type', instance.type);
  writeNotNull('uid', instance.uid);
  return val;
}

const _$OrderLineItemDiscountScopeEnumMap = {
  OrderLineItemDiscountScope.OTHER_DISCOUNT_SCOPE: 'OTHER_DISCOUNT_SCOPE',
  OrderLineItemDiscountScope.LINE_ITEM: 'LINE_ITEM',
  OrderLineItemDiscountScope.ORDER: 'ORDER',
};

OrderLineItemTax _$OrderLineItemTaxFromJson(Map<String, dynamic> json) =>
    OrderLineItemTax(
      percentage: json['percentage'] as String?,
      appliedMoney: json['applied_money'] == null
          ? null
          : Money.fromJson(json['applied_money'] as Map<String, dynamic>),
      type: json['type'] as String?,
      scope: $enumDecodeNullable(_$OrderLineItemTaxScopeEnumMap, json['scope']),
      metadata: (json['metadata'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
      uid: json['uid'] as String?,
      name: json['name'] as String?,
      catalogObjectId: json['catalog_object_id'] as String?,
      catalogVersion: json['catalog_version'] as int?,
      autoApplied: json['auto_applied'] as bool?,
    );

Map<String, dynamic> _$OrderLineItemTaxToJson(OrderLineItemTax instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('applied_money', instance.appliedMoney);
  writeNotNull('auto_applied', instance.autoApplied);
  writeNotNull('catalog_object_id', instance.catalogObjectId);
  writeNotNull('catalog_version', instance.catalogVersion);
  writeNotNull('metadata', instance.metadata);
  writeNotNull('name', instance.name);
  writeNotNull('percentage', instance.percentage);
  writeNotNull('scope', _$OrderLineItemTaxScopeEnumMap[instance.scope]);
  writeNotNull('type', instance.type);
  writeNotNull('uid', instance.uid);
  return val;
}

const _$OrderLineItemTaxScopeEnumMap = {
  OrderLineItemTaxScope.OTHER_TAX_SCOPE: 'OTHER_TAX_SCOPE',
  OrderLineItemTaxScope.LINE_ITEM: 'LINE_ITEM',
  OrderLineItemTaxScope.ORDER: 'ORDER',
};

OrderFulfillment _$OrderFulfillmentFromJson(Map<String, dynamic> json) =>
    OrderFulfillment(
      uid: json['uid'] as String?,
      metadata: (json['metadata'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
      type: json['type'] as String?,
      state: json['state'] as String?,
      pickupDetails: json['pickup_details'] == null
          ? null
          : OrderFulfillmentPickupDetails.fromJson(
              json['pickup_details'] as Map<String, dynamic>),
      shipmentDetails: json['shipment_details'] == null
          ? null
          : OrderFulfillmentShipmentDetails.fromJson(
              json['shipment_details'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$OrderFulfillmentToJson(OrderFulfillment instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('metadata', instance.metadata);
  writeNotNull('pickup_details', instance.pickupDetails);
  writeNotNull('shipment_details', instance.shipmentDetails);
  writeNotNull('state', instance.state);
  writeNotNull('type', instance.type);
  writeNotNull('uid', instance.uid);
  return val;
}

OrderSource _$OrderSourceFromJson(Map<String, dynamic> json) => OrderSource(
      name: json['name'] as String?,
    );

Map<String, dynamic> _$OrderSourceToJson(OrderSource instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  return val;
}

OrderMoneyAmounts _$OrderMoneyAmountsFromJson(Map<String, dynamic> json) =>
    OrderMoneyAmounts(
      totalMoney: json['total_money'] == null
          ? null
          : Money.fromJson(json['total_money'] as Map<String, dynamic>),
      discountMoney: json['discount_money'] == null
          ? null
          : Money.fromJson(json['discount_money'] as Map<String, dynamic>),
      serviceChargeMoney: json['service_charge_money'] == null
          ? null
          : Money.fromJson(
              json['service_charge_money'] as Map<String, dynamic>),
      taxMoney: json['tax_money'] == null
          ? null
          : Money.fromJson(json['tax_money'] as Map<String, dynamic>),
      tipMoney: json['tip_money'] == null
          ? null
          : Money.fromJson(json['tip_money'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$OrderMoneyAmountsToJson(OrderMoneyAmounts instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('discount_money', instance.discountMoney);
  writeNotNull('service_charge_money', instance.serviceChargeMoney);
  writeNotNull('tax_money', instance.taxMoney);
  writeNotNull('tip_money', instance.tipMoney);
  writeNotNull('total_money', instance.totalMoney);
  return val;
}

OrderPricingOptions _$OrderPricingOptionsFromJson(Map<String, dynamic> json) =>
    OrderPricingOptions(
      autoApplyDiscounts: json['auto_apply_discounts'] as bool?,
      autoApplyTaxes: json['auto_apply_taxes'] as bool?,
    );

Map<String, dynamic> _$OrderPricingOptionsToJson(OrderPricingOptions instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('auto_apply_discounts', instance.autoApplyDiscounts);
  writeNotNull('auto_apply_taxes', instance.autoApplyTaxes);
  return val;
}

Refund _$RefundFromJson(Map<String, dynamic> json) => Refund(
      amountMoney: json['amount_money'] == null
          ? null
          : Money.fromJson(json['amount_money'] as Map<String, dynamic>),
      locationId: json['location_id'] as String?,
      createdAt: json['created_at'] as String?,
      id: json['id'] as String?,
      status: $enumDecodeNullable(_$RefundStatusEnumMap, json['status']),
      transactionId: json['transaction_id'] as String?,
      additionalRecipients: (json['additional_recipients'] as List<dynamic>?)
          ?.map((e) => AdditionalRecipient.fromJson(e as Map<String, dynamic>))
          .toList(),
      processingFeeMoney: json['processing_fee_money'] == null
          ? null
          : Money.fromJson(
              json['processing_fee_money'] as Map<String, dynamic>),
      reason: json['reason'] as String?,
      tenderId: json['tender_id'] as String?,
    );

Map<String, dynamic> _$RefundToJson(Refund instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('amount_money', instance.amountMoney);
  writeNotNull('location_id', instance.locationId);
  writeNotNull('reason', instance.reason);
  writeNotNull('status', _$RefundStatusEnumMap[instance.status]);
  writeNotNull('tender_id', instance.tenderId);
  writeNotNull('transaction_id', instance.transactionId);
  writeNotNull('created_at', instance.createdAt);
  writeNotNull('processing_fee_money', instance.processingFeeMoney);
  writeNotNull('additional_recipients', instance.additionalRecipients);
  return val;
}

const _$RefundStatusEnumMap = {
  RefundStatus.PENDING: 'PENDING',
  RefundStatus.APPROVED: 'APPROVED',
  RefundStatus.REJECTED: 'REJECTED',
  RefundStatus.FAILED: 'FAILED',
};

OrderReturn _$OrderReturnFromJson(Map<String, dynamic> json) => OrderReturn(
      roundingAdjustment: json['rounding_adjustment'] == null
          ? null
          : OrderRoundingAdjustment.fromJson(
              json['rounding_adjustment'] as Map<String, dynamic>),
      returnAmounts: json['return_amounts'] == null
          ? null
          : OrderMoneyAmounts.fromJson(
              json['return_amounts'] as Map<String, dynamic>),
      returnDiscounts: (json['return_discounts'] as List<dynamic>?)
          ?.map((e) => OrderReturnDiscount.fromJson(e as Map<String, dynamic>))
          .toList(),
      returnLineItems: (json['return_line_items'] as List<dynamic>?)
          ?.map((e) => OrderReturnLineItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      returnServiceCharges: (json['return_service_charges'] as List<dynamic>?)
          ?.map((e) =>
              OrderReturnServiceCharge.fromJson(e as Map<String, dynamic>))
          .toList(),
      returnTaxes: (json['return_taxes'] as List<dynamic>?)
          ?.map((e) => OrderReturnTax.fromJson(e as Map<String, dynamic>))
          .toList(),
      sourceOrderId: json['source_order_id'] as String?,
      uid: json['uid'] as String?,
    );

Map<String, dynamic> _$OrderReturnToJson(OrderReturn instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('return_amounts', instance.returnAmounts);
  writeNotNull('return_discounts', instance.returnDiscounts);
  writeNotNull('return_line_items', instance.returnLineItems);
  writeNotNull('return_service_charges', instance.returnServiceCharges);
  writeNotNull('return_taxes', instance.returnTaxes);
  writeNotNull('rounding_adjustment', instance.roundingAdjustment);
  writeNotNull('source_order_id', instance.sourceOrderId);
  writeNotNull('uid', instance.uid);
  return val;
}

OrderReward _$OrderRewardFromJson(Map<String, dynamic> json) => OrderReward(
      id: json['id'] as String?,
      rewardTierId: json['reward_tier_id'] as String?,
    );

Map<String, dynamic> _$OrderRewardToJson(OrderReward instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('reward_tier_id', instance.rewardTierId);
  return val;
}

OrderRoundingAdjustment _$OrderRoundingAdjustmentFromJson(
        Map<String, dynamic> json) =>
    OrderRoundingAdjustment(
      uid: json['uid'] as String?,
      amountMoney: json['amount_money'] == null
          ? null
          : Money.fromJson(json['amount_money'] as Map<String, dynamic>),
      name: json['name'] as String?,
    );

Map<String, dynamic> _$OrderRoundingAdjustmentToJson(
    OrderRoundingAdjustment instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('amount_money', instance.amountMoney);
  writeNotNull('name', instance.name);
  writeNotNull('uid', instance.uid);
  return val;
}

OrderServiceCharge _$OrderServiceChargeFromJson(Map<String, dynamic> json) =>
    OrderServiceCharge(
      name: json['name'] as String?,
      amountMoney: json['amount_money'] == null
          ? null
          : Money.fromJson(json['amount_money'] as Map<String, dynamic>),
      uid: json['uid'] as String?,
      totalMoney: json['total_money'] == null
          ? null
          : Money.fromJson(json['total_money'] as Map<String, dynamic>),
      type: json['type'] as String?,
      metadata: (json['metadata'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
      catalogVersion: json['catalog_version'] as int?,
      catalogObjectId: json['catalog_object_id'] as String?,
      appliedMoney: json['applied_money'] as String?,
      percentage: json['percentage'] as String?,
      appliedTaxes: (json['applied_taxes'] as List<dynamic>?)
          ?.map((e) =>
              OrderLineItemAppliedTax.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalTaxMoney: json['total_tax_money'] == null
          ? null
          : Money.fromJson(json['total_tax_money'] as Map<String, dynamic>),
      taxable: json['taxable'] as bool?,
      calculationPhase: json['calculation_phase'] as String?,
    );

Map<String, dynamic> _$OrderServiceChargeToJson(OrderServiceCharge instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('amount_money', instance.amountMoney);
  writeNotNull('applied_money', instance.appliedMoney);
  writeNotNull('applied_taxes', instance.appliedTaxes);
  writeNotNull('calculation_phase', instance.calculationPhase);
  writeNotNull('catalog_object_id', instance.catalogObjectId);
  writeNotNull('catalog_version', instance.catalogVersion);
  writeNotNull('metadata', instance.metadata);
  writeNotNull('name', instance.name);
  writeNotNull('percentage', instance.percentage);
  writeNotNull('taxable', instance.taxable);
  writeNotNull('total_money', instance.totalMoney);
  writeNotNull('total_tax_money', instance.totalTaxMoney);
  writeNotNull('type', instance.type);
  writeNotNull('uid', instance.uid);
  return val;
}

Tender _$TenderFromJson(Map<String, dynamic> json) => Tender(
      type: json['type'] as String?,
      amountMoney: json['amount_money'] == null
          ? null
          : Money.fromJson(json['amount_money'] as Map<String, dynamic>),
      id: json['id'] as String?,
      processingFeeMoney: json['processing_fee_money'] == null
          ? null
          : Money.fromJson(
              json['processing_fee_money'] as Map<String, dynamic>),
      additionalRecipients: (json['additional_recipients'] as List<dynamic>?)
          ?.map((e) => AdditionalRecipient.fromJson(e as Map<String, dynamic>))
          .toList(),
      transactionId: json['transaction_id'] as String?,
      createdAt: json['created_at'] as String?,
      locationId: json['location_id'] as String?,
      tipMoney: json['tip_money'] == null
          ? null
          : Money.fromJson(json['tip_money'] as Map<String, dynamic>),
      note: json['note'] as String?,
      customerId: json['customer_id'] as String?,
      paymentId: json['payment_id'] as String?,
      cardDetails: json['card_details'] == null
          ? null
          : TenderCardDetails.fromJson(
              json['card_details'] as Map<String, dynamic>),
      cashDetails: json['cash_details'] == null
          ? null
          : TenderCardDetails.fromJson(
              json['cash_details'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TenderToJson(Tender instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('type', instance.type);
  writeNotNull('amount_money', instance.amountMoney);
  writeNotNull('card_details', instance.cardDetails);
  writeNotNull('cash_details', instance.cashDetails);
  writeNotNull('created_at', instance.createdAt);
  writeNotNull('customer_id', instance.customerId);
  writeNotNull('location_id', instance.locationId);
  writeNotNull('note', instance.note);
  writeNotNull('payment_id', instance.paymentId);
  writeNotNull('processing_fee_money', instance.processingFeeMoney);
  writeNotNull('tip_money', instance.tipMoney);
  writeNotNull('transaction_id', instance.transactionId);
  writeNotNull('additional_recipients', instance.additionalRecipients);
  return val;
}

Money _$MoneyFromJson(Map<String, dynamic> json) => Money(
      amount: json['amount'] as int?,
      currency: json['currency'] as String?,
    );

Map<String, dynamic> _$MoneyToJson(Money instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('amount', instance.amount);
  writeNotNull('currency', instance.currency);
  return val;
}

OrderLineItemAppliedDiscount _$OrderLineItemAppliedDiscountFromJson(
        Map<String, dynamic> json) =>
    OrderLineItemAppliedDiscount(
      appliedMoney: json['applied_money'] == null
          ? null
          : Money.fromJson(json['applied_money'] as Map<String, dynamic>),
      uid: json['uid'] as String?,
      discountUid: json['discount_uid'] as String?,
    );

Map<String, dynamic> _$OrderLineItemAppliedDiscountToJson(
    OrderLineItemAppliedDiscount instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('discount_uid', instance.discountUid);
  writeNotNull('applied_money', instance.appliedMoney);
  writeNotNull('uid', instance.uid);
  return val;
}

OrderLineItemAppliedTax _$OrderLineItemAppliedTaxFromJson(
        Map<String, dynamic> json) =>
    OrderLineItemAppliedTax(
      uid: json['uid'] as String?,
      appliedMoney: json['applied_money'] == null
          ? null
          : Money.fromJson(json['applied_money'] as Map<String, dynamic>),
      taxUid: json['tax_uid'] as String?,
    );

Map<String, dynamic> _$OrderLineItemAppliedTaxToJson(
    OrderLineItemAppliedTax instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('tax_uid', instance.taxUid);
  writeNotNull('applied_money', instance.appliedMoney);
  writeNotNull('uid', instance.uid);
  return val;
}

OrderLineItemPricingBlocklists _$OrderLineItemPricingBlocklistsFromJson(
        Map<String, dynamic> json) =>
    OrderLineItemPricingBlocklists(
      blockedDiscounts: (json['blocked_discounts'] as List<dynamic>?)
          ?.map((e) => OrderLineItemPricingBlocklistsBlockedDiscount.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      blockedTaxes: (json['blocked_taxes'] as List<dynamic>?)
          ?.map((e) => OrderLineItemPricingBlocklistsBlockedTax.fromJson(
              e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$OrderLineItemPricingBlocklistsToJson(
    OrderLineItemPricingBlocklists instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('blocked_discounts', instance.blockedDiscounts);
  writeNotNull('blocked_taxes', instance.blockedTaxes);
  return val;
}

OrderLineItemPricingBlocklistsBlockedDiscount
    _$OrderLineItemPricingBlocklistsBlockedDiscountFromJson(
            Map<String, dynamic> json) =>
        OrderLineItemPricingBlocklistsBlockedDiscount(
          uid: json['uid'] as String?,
          discountUid: json['discount_uid'] as String?,
          discountCatalogObjectId:
              json['discount_catalog_object_id'] as String?,
        );

Map<String, dynamic> _$OrderLineItemPricingBlocklistsBlockedDiscountToJson(
    OrderLineItemPricingBlocklistsBlockedDiscount instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('discount_catalog_object_id', instance.discountCatalogObjectId);
  writeNotNull('discount_uid', instance.discountUid);
  writeNotNull('uid', instance.uid);
  return val;
}

OrderLineItemPricingBlocklistsBlockedTax
    _$OrderLineItemPricingBlocklistsBlockedTaxFromJson(
            Map<String, dynamic> json) =>
        OrderLineItemPricingBlocklistsBlockedTax(
          uid: json['uid'] as String?,
          taxUid: json['tax_uid'] as String?,
          taxCatalogObjectId: json['tax_catalog_object_id'] as String?,
        );

Map<String, dynamic> _$OrderLineItemPricingBlocklistsBlockedTaxToJson(
    OrderLineItemPricingBlocklistsBlockedTax instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('tax_catalog_object_id', instance.taxCatalogObjectId);
  writeNotNull('tax_uid', instance.taxUid);
  writeNotNull('uid', instance.uid);
  return val;
}

OrderQuantityUnit _$OrderQuantityUnitFromJson(Map<String, dynamic> json) =>
    OrderQuantityUnit(
      catalogObjectId: json['catalog_object_id'] as String?,
      catalogVersion: json['catalog_version'] as int?,
      measurementUnit: json['measurement_unit'] == null
          ? null
          : MeasurementUnit.fromJson(
              json['measurement_unit'] as Map<String, dynamic>),
      precision: json['precision'] as int?,
    );

Map<String, dynamic> _$OrderQuantityUnitToJson(OrderQuantityUnit instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('catalog_object_id', instance.catalogObjectId);
  writeNotNull('catalog_version', instance.catalogVersion);
  writeNotNull('measurement_unit', instance.measurementUnit);
  writeNotNull('precision', instance.precision);
  return val;
}

MeasurementUnit _$MeasurementUnitFromJson(Map<String, dynamic> json) =>
    MeasurementUnit(
      type: $enumDecodeNullable(_$MeasurementUnitUnitTypeEnumMap, json['type']),
      areaUnit:
          $enumDecodeNullable(_$MeasurementUnitAreaEnumMap, json['area_unit']),
      customUnit: json['custom_unit'] == null
          ? null
          : MeasurementUnitCustom.fromJson(
              json['custom_unit'] as Map<String, dynamic>),
      genericUnit: $enumDecodeNullable(
          _$MeasurementUnitGenericEnumMap, json['generic_unit']),
      lengthUnit: $enumDecodeNullable(
          _$MeasurementUnitLengthEnumMap, json['length_unit']),
      timeUnit:
          $enumDecodeNullable(_$MeasurementUnitTimeEnumMap, json['time_unit']),
      volumeUnit: $enumDecodeNullable(
          _$MeasurementUnitVolumeEnumMap, json['volume_unit']),
      weightUnit: $enumDecodeNullable(
          _$MeasurementUnitWeightEnumMap, json['weight_unit']),
    );

Map<String, dynamic> _$MeasurementUnitToJson(MeasurementUnit instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('area_unit', _$MeasurementUnitAreaEnumMap[instance.areaUnit]);
  writeNotNull('custom_unit', instance.customUnit);
  writeNotNull(
      'generic_unit', _$MeasurementUnitGenericEnumMap[instance.genericUnit]);
  writeNotNull(
      'length_unit', _$MeasurementUnitLengthEnumMap[instance.lengthUnit]);
  writeNotNull('time_unit', _$MeasurementUnitTimeEnumMap[instance.timeUnit]);
  writeNotNull('type', _$MeasurementUnitUnitTypeEnumMap[instance.type]);
  writeNotNull(
      'volume_unit', _$MeasurementUnitVolumeEnumMap[instance.volumeUnit]);
  writeNotNull(
      'weight_unit', _$MeasurementUnitWeightEnumMap[instance.weightUnit]);
  return val;
}

const _$MeasurementUnitUnitTypeEnumMap = {
  MeasurementUnitUnitType.TYPE_CUSTOM: 'TYPE_CUSTOM',
  MeasurementUnitUnitType.TYPE_AREA: 'TYPE_AREA',
  MeasurementUnitUnitType.TYPE_LENGTH: 'TYPE_LENGTH',
  MeasurementUnitUnitType.TYPE_VOLUME: 'TYPE_VOLUME',
  MeasurementUnitUnitType.TYPE_WEIGHT: 'TYPE_WEIGHT',
};

const _$MeasurementUnitAreaEnumMap = {
  MeasurementUnitArea.IMPERIAL_ACRE: 'IMPERIAL_ACRE',
  MeasurementUnitArea.IMPERIAL_SQUARE_INCH: 'IMPERIAL_SQUARE_INCH',
  MeasurementUnitArea.IMPERIAL_SQUARE_FOOT: 'IMPERIAL_SQUARE_FOOT',
  MeasurementUnitArea.IMPERIAL_SQUARE_YARD: 'IMPERIAL_SQUARE_YARD',
  MeasurementUnitArea.IMPERIAL_SQUARE_MILE: 'IMPERIAL_SQUARE_MILE',
  MeasurementUnitArea.METRIC_SQUARE_CENTIMETER: 'METRIC_SQUARE_CENTIMETER',
  MeasurementUnitArea.METRIC_SQUARE_METER: 'METRIC_SQUARE_METER',
  MeasurementUnitArea.METRIC_SQUARE_KILOMETER: 'METRIC_SQUARE_KILOMETER',
};

const _$MeasurementUnitGenericEnumMap = {
  MeasurementUnitGeneric.UNIT: 'UNIT',
};

const _$MeasurementUnitLengthEnumMap = {
  MeasurementUnitLength.IMPERIAL_INCH: 'IMPERIAL_INCH',
  MeasurementUnitLength.IMPERIAL_FOOT: 'IMPERIAL_FOOT',
  MeasurementUnitLength.IMPERIAL_YARD: 'IMPERIAL_YARD',
  MeasurementUnitLength.IMPERIAL_MILE: 'IMPERIAL_MILE',
  MeasurementUnitLength.METRIC_MILLIMETER: 'METRIC_MILLIMETER',
  MeasurementUnitLength.METRIC_CENTIMETER: 'METRIC_CENTIMETER',
  MeasurementUnitLength.METRIC_METER: 'METRIC_METER',
  MeasurementUnitLength.METRIC_KILOMETER: 'METRIC_KILOMETER',
};

const _$MeasurementUnitTimeEnumMap = {
  MeasurementUnitTime.GENERIC_MILLISECOND: 'GENERIC_MILLISECOND',
  MeasurementUnitTime.GENERIC_SECOND: 'GENERIC_SECOND',
  MeasurementUnitTime.GENERIC_MINUTE: 'GENERIC_MINUTE',
  MeasurementUnitTime.GENERIC_HOUR: 'GENERIC_HOUR',
  MeasurementUnitTime.GENERIC_DAY: 'GENERIC_DAY',
};

const _$MeasurementUnitVolumeEnumMap = {
  MeasurementUnitVolume.GENERIC_FLUID_OUNCE: 'GENERIC_FLUID_OUNCE',
  MeasurementUnitVolume.GENERIC_SHOT: 'GENERIC_SHOT',
  MeasurementUnitVolume.GENERIC_CUP: 'GENERIC_CUP',
  MeasurementUnitVolume.GENERIC_PINT: 'GENERIC_PINT',
  MeasurementUnitVolume.GENERIC_QUART: 'GENERIC_QUART',
  MeasurementUnitVolume.GENERIC_GALLON: 'GENERIC_GALLON',
  MeasurementUnitVolume.IMPERIAL_CUBIC_INCH: 'IMPERIAL_CUBIC_INCH',
  MeasurementUnitVolume.IMPERIAL_CUBIC_FOOT: 'IMPERIAL_CUBIC_FOOT',
  MeasurementUnitVolume.IMPERIAL_CUBIC_YARD: 'IMPERIAL_CUBIC_YARD',
  MeasurementUnitVolume.METRIC_MILLILITER: 'METRIC_MILLILITER',
  MeasurementUnitVolume.METRIC_LITER: 'METRIC_LITER',
};

const _$MeasurementUnitWeightEnumMap = {
  MeasurementUnitWeight.IMPERIAL_WEIGHT_OUNCE: 'IMPERIAL_WEIGHT_OUNCE',
  MeasurementUnitWeight.IMPERIAL_POUND: 'IMPERIAL_POUND',
  MeasurementUnitWeight.IMPERIAL_STONE: 'IMPERIAL_STONE',
  MeasurementUnitWeight.METRIC_MILLIGRAM: 'METRIC_MILLIGRAM',
  MeasurementUnitWeight.METRIC_GRAM: 'METRIC_GRAM',
  MeasurementUnitWeight.METRIC_KILOGRAM: 'METRIC_KILOGRAM',
};

MeasurementUnitCustom _$MeasurementUnitCustomFromJson(
        Map<String, dynamic> json) =>
    MeasurementUnitCustom(
      name: json['name'] as String?,
      abbreviation: json['abbreviation'] as String?,
    );

Map<String, dynamic> _$MeasurementUnitCustomToJson(
    MeasurementUnitCustom instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('abbreviation', instance.abbreviation);
  writeNotNull('name', instance.name);
  return val;
}

OrderFulfillmentPickupDetails _$OrderFulfillmentPickupDetailsFromJson(
        Map<String, dynamic> json) =>
    OrderFulfillmentPickupDetails(
      note: json['note'] as String?,
      acceptedAt: json['accepted_at'] as String?,
      autoCompleteDuration: json['auto_complete_duration'] as String?,
      canceledAt: json['canceled_at'] as String?,
      cancelReason: json['cancel_reason'] as String?,
      curbsidePickupDetails: json['curbside_pickup_details'] == null
          ? null
          : OrderFulfillmentPickupDetailsCurbsidePickupDetails.fromJson(
              json['curbside_pickup_details'] as Map<String, dynamic>),
      expiredAt: json['expired_at'] as String?,
      expiresAt: json['expires_at'] as String?,
      isCurbsidePickup: json['is_curbside_pickup'] as bool?,
      pickedUpAt: json['picked_up_at'] as String?,
      pickupAt: json['pickup_at'] as String?,
      pickupWindowDuration: json['pickup_window_duration'] as String?,
      placedAt: json['placed_at'] as String?,
      prepTimeDuration: json['prep_time_duration'] as String?,
      readyAt: json['ready_at'] as String?,
      recipient: json['recipient'] == null
          ? null
          : OrderFulfillmentRecipient.fromJson(
              json['recipient'] as Map<String, dynamic>),
      rejectedAt: json['rejected_at'] as String?,
      scheduleType: $enumDecodeNullable(
          _$OrderFulfillmentPickupDetailsScheduleTypeEnumMap,
          json['schedule_type']),
    );

Map<String, dynamic> _$OrderFulfillmentPickupDetailsToJson(
    OrderFulfillmentPickupDetails instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('accepted_at', instance.acceptedAt);
  writeNotNull('auto_complete_duration', instance.autoCompleteDuration);
  writeNotNull('cancel_reason', instance.cancelReason);
  writeNotNull('canceled_at', instance.canceledAt);
  writeNotNull('curbside_pickup_details', instance.curbsidePickupDetails);
  writeNotNull('expired_at', instance.expiredAt);
  writeNotNull('expires_at', instance.expiresAt);
  writeNotNull('is_curbside_pickup', instance.isCurbsidePickup);
  writeNotNull('note', instance.note);
  writeNotNull('picked_up_at', instance.pickedUpAt);
  writeNotNull('pickup_at', instance.pickupAt);
  writeNotNull('pickup_window_duration', instance.pickupWindowDuration);
  writeNotNull('placed_at', instance.placedAt);
  writeNotNull('prep_time_duration', instance.prepTimeDuration);
  writeNotNull('ready_at', instance.readyAt);
  writeNotNull('recipient', instance.recipient);
  writeNotNull('rejected_at', instance.rejectedAt);
  writeNotNull(
      'schedule_type',
      _$OrderFulfillmentPickupDetailsScheduleTypeEnumMap[
          instance.scheduleType]);
  return val;
}

const _$OrderFulfillmentPickupDetailsScheduleTypeEnumMap = {
  OrderFulfillmentPickupDetailsScheduleType.SCHEDULED: 'SCHEDULED',
  OrderFulfillmentPickupDetailsScheduleType.ASAP: 'ASAP',
};

OrderFulfillmentRecipient _$OrderFulfillmentRecipientFromJson(
        Map<String, dynamic> json) =>
    OrderFulfillmentRecipient(
      customerId: json['customer_id'] as String?,
      phoneNumber: json['phone_number'] as String?,
      address: json['address'] == null
          ? null
          : Address.fromJson(json['address'] as Map<String, dynamic>),
      displayName: json['display_name'] as String?,
      emailAddress: json['email_address'] as String?,
    );

Map<String, dynamic> _$OrderFulfillmentRecipientToJson(
    OrderFulfillmentRecipient instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('address', instance.address);
  writeNotNull('customer_id', instance.customerId);
  writeNotNull('display_name', instance.displayName);
  writeNotNull('email_address', instance.emailAddress);
  writeNotNull('phone_number', instance.phoneNumber);
  return val;
}

Address _$AddressFromJson(Map<String, dynamic> json) => Address(
      country: json['country'] as String?,
      postalCode: json['postal_code'] as String?,
      addressLine1: json['address_line_1'] as String?,
      addressLine2: json['address_line_2'] as String?,
      addressLine3: json['address_line_3'] as String?,
      administrativeDistrictLevel1:
          json['administrative_district_level_1'] as String?,
      locality: json['locality'] as String?,
      sublocality: json['sublocality'] as String?,
    );

Map<String, dynamic> _$AddressToJson(Address instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('address_line_1', instance.addressLine1);
  writeNotNull('address_line_2', instance.addressLine2);
  writeNotNull('address_line_3', instance.addressLine3);
  writeNotNull(
      'administrative_district_level_1', instance.administrativeDistrictLevel1);
  writeNotNull('country', instance.country);
  writeNotNull('locality', instance.locality);
  writeNotNull('postal_code', instance.postalCode);
  writeNotNull('sublocality', instance.sublocality);
  return val;
}

OrderFulfillmentPickupDetailsCurbsidePickupDetails
    _$OrderFulfillmentPickupDetailsCurbsidePickupDetailsFromJson(
            Map<String, dynamic> json) =>
        OrderFulfillmentPickupDetailsCurbsidePickupDetails(
          buyerArrivedAt: json['buyer_arrived_at'] as String?,
          curbsideDetails: json['curbside_details'] as String?,
        );

Map<String, dynamic> _$OrderFulfillmentPickupDetailsCurbsidePickupDetailsToJson(
    OrderFulfillmentPickupDetailsCurbsidePickupDetails instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('buyer_arrived_at', instance.buyerArrivedAt);
  writeNotNull('curbside_details', instance.curbsideDetails);
  return val;
}

OrderFulfillmentShipmentDetails _$OrderFulfillmentShipmentDetailsFromJson(
        Map<String, dynamic> json) =>
    OrderFulfillmentShipmentDetails(
      recipient: json['recipient'] == null
          ? null
          : OrderFulfillmentRecipient.fromJson(
              json['recipient'] as Map<String, dynamic>),
      placedAt: json['placed_at'] as String?,
      cancelReason: json['cancel_reason'] as String?,
      canceledAt: json['canceled_at'] as String?,
      carrier: json['carrier'] as String?,
      expectedShippedAt: json['expected_shipped_at'] as String?,
      failedAt: json['failed_at'] as String?,
      failureReason: json['failure_reason'] as String?,
      inProgressAt: json['in_progress_at'] as String?,
      packagedAt: json['packaged_at'] as String?,
      shippedAt: json['shipped_at'] as String?,
      shippingNote: json['shipping_note'] as String?,
      shippingType: json['shipping_type'] as String?,
      trackingNumber: json['tracking_number'] as String?,
      trackingUrl: json['tracking_url'] as String?,
    );

Map<String, dynamic> _$OrderFulfillmentShipmentDetailsToJson(
    OrderFulfillmentShipmentDetails instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('cancel_reason', instance.cancelReason);
  writeNotNull('canceled_at', instance.canceledAt);
  writeNotNull('carrier', instance.carrier);
  writeNotNull('expected_shipped_at', instance.expectedShippedAt);
  writeNotNull('failed_at', instance.failedAt);
  writeNotNull('failure_reason', instance.failureReason);
  writeNotNull('in_progress_at', instance.inProgressAt);
  writeNotNull('packaged_at', instance.packagedAt);
  writeNotNull('placed_at', instance.placedAt);
  writeNotNull('recipient', instance.recipient);
  writeNotNull('shipped_at', instance.shippedAt);
  writeNotNull('shipping_note', instance.shippingNote);
  writeNotNull('shipping_type', instance.shippingType);
  writeNotNull('tracking_number', instance.trackingNumber);
  writeNotNull('tracking_url', instance.trackingUrl);
  return val;
}

AdditionalRecipient _$AdditionalRecipientFromJson(Map<String, dynamic> json) =>
    AdditionalRecipient(
      locationId: json['location_id'] as String?,
      amountMoney: json['amount_money'] == null
          ? null
          : Money.fromJson(json['amount_money'] as Map<String, dynamic>),
      description: json['description'] as String?,
      receivableId: json['receivable_id'] as String?,
    );

Map<String, dynamic> _$AdditionalRecipientToJson(AdditionalRecipient instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('amount_money', instance.amountMoney);
  writeNotNull('location_id', instance.locationId);
  writeNotNull('description', instance.description);
  writeNotNull('receivable_id', instance.receivableId);
  return val;
}

OrderReturnDiscount _$OrderReturnDiscountFromJson(Map<String, dynamic> json) =>
    OrderReturnDiscount(
      amountMoney: json['amount_money'] == null
          ? null
          : Money.fromJson(json['amount_money'] as Map<String, dynamic>),
      name: json['name'] as String?,
      type:
          $enumDecodeNullable(_$OrderLineItemDiscountTypeEnumMap, json['type']),
      catalogVersion: json['catalog_version'] as int?,
      catalogObjectId: json['catalog_object_id'] as String?,
      uid: json['uid'] as String?,
      appliedMoney: json['applied_money'] == null
          ? null
          : Money.fromJson(json['applied_money'] as Map<String, dynamic>),
      percentage: json['percentage'] as String?,
      scope: $enumDecodeNullable(
          _$OrderLineItemDiscountScopeEnumMap, json['scope']),
      sourceDiscountUid: json['source_discount_uid'] as String?,
    );

Map<String, dynamic> _$OrderReturnDiscountToJson(OrderReturnDiscount instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('amount_money', instance.amountMoney);
  writeNotNull('applied_money', instance.appliedMoney);
  writeNotNull('catalog_object_id', instance.catalogObjectId);
  writeNotNull('catalog_version', instance.catalogVersion);
  writeNotNull('name', instance.name);
  writeNotNull('percentage', instance.percentage);
  writeNotNull('scope', _$OrderLineItemDiscountScopeEnumMap[instance.scope]);
  writeNotNull('source_discount_uid', instance.sourceDiscountUid);
  writeNotNull('type', _$OrderLineItemDiscountTypeEnumMap[instance.type]);
  writeNotNull('uid', instance.uid);
  return val;
}

const _$OrderLineItemDiscountTypeEnumMap = {
  OrderLineItemDiscountType.UNKNOWN_DISCOUNT: 'UNKNOWN_DISCOUNT',
  OrderLineItemDiscountType.FIXED_PERCENTAGE: 'FIXED_PERCENTAGE',
  OrderLineItemDiscountType.FIXED_AMOUNT: 'FIXED_AMOUNT',
  OrderLineItemDiscountType.VARIABLE_PERCENTAGE: 'VARIABLE_PERCENTAGE',
  OrderLineItemDiscountType.VARIABLE_AMOUNT: 'VARIABLE_AMOUNT',
};

OrderReturnLineItem _$OrderReturnLineItemFromJson(Map<String, dynamic> json) =>
    OrderReturnLineItem(
      uid: json['uid'] as String?,
      catalogObjectId: json['catalog_object_id'] as String?,
      catalogVersion: json['catalog_version'] as int?,
      name: json['name'] as String?,
      note: json['note'] as String?,
      totalTaxMoney: json['total_tax_money'] == null
          ? null
          : Money.fromJson(json['total_tax_money'] as Map<String, dynamic>),
      appliedTaxes: (json['applied_taxes'] as List<dynamic>?)
          ?.map((e) =>
              OrderLineItemAppliedTax.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalMoney: json['total_money'] == null
          ? null
          : Money.fromJson(json['total_money'] as Map<String, dynamic>),
      variationTotalPriceMoney: json['variation_total_price_money'] == null
          ? null
          : Money.fromJson(
              json['variation_total_price_money'] as Map<String, dynamic>),
      variationName: json['variation_name'] as String?,
      quantityUnit: json['quantity_unit'] == null
          ? null
          : OrderQuantityUnit.fromJson(
              json['quantity_unit'] as Map<String, dynamic>),
      itemType: $enumDecodeNullable(
          _$OrderLineItemItemTypeEnumMap, json['item_type']),
      basePriceMoney: json['base_price_money'] == null
          ? null
          : Money.fromJson(json['base_price_money'] as Map<String, dynamic>),
      appliedDiscounts: (json['applied_discounts'] as List<dynamic>?)
          ?.map((e) =>
              OrderLineItemAppliedDiscount.fromJson(e as Map<String, dynamic>))
          .toList(),
      quantity: json['quantity'] as String?,
      totalDiscountMoney: json['total_discount_money'] == null
          ? null
          : Money.fromJson(
              json['total_discount_money'] as Map<String, dynamic>),
      grossReturnMoney: json['gross_return_money'] == null
          ? null
          : Money.fromJson(json['gross_return_money'] as Map<String, dynamic>),
      returnModifiers: (json['return_modifiers'] as List<dynamic>?)
          ?.map(
              (e) => OrderLineItemModifier.fromJson(e as Map<String, dynamic>))
          .toList(),
      sourceLineItemUid: json['source_line_item_uid'] as String?,
    );

Map<String, dynamic> _$OrderReturnLineItemToJson(OrderReturnLineItem instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('quantity', instance.quantity);
  writeNotNull('applied_discounts', instance.appliedDiscounts);
  writeNotNull('applied_taxes', instance.appliedTaxes);
  writeNotNull('base_price_money', instance.basePriceMoney);
  writeNotNull('catalog_object_id', instance.catalogObjectId);
  writeNotNull('catalog_version', instance.catalogVersion);
  writeNotNull('gross_return_money', instance.grossReturnMoney);
  writeNotNull('item_type', _$OrderLineItemItemTypeEnumMap[instance.itemType]);
  writeNotNull('name', instance.name);
  writeNotNull('note', instance.note);
  writeNotNull('quantity_unit', instance.quantityUnit);
  writeNotNull('return_modifiers', instance.returnModifiers);
  writeNotNull('source_line_item_uid', instance.sourceLineItemUid);
  writeNotNull('total_discount_money', instance.totalDiscountMoney);
  writeNotNull('total_money', instance.totalMoney);
  writeNotNull('total_tax_money', instance.totalTaxMoney);
  writeNotNull('uid', instance.uid);
  writeNotNull('variation_name', instance.variationName);
  writeNotNull(
      'variation_total_price_money', instance.variationTotalPriceMoney);
  return val;
}

const _$OrderLineItemItemTypeEnumMap = {
  OrderLineItemItemType.ITEM: 'ITEM',
  OrderLineItemItemType.CUSTOM_AMOUNT: 'CUSTOM_AMOUNT',
  OrderLineItemItemType.GIFT_CARD: 'GIFT_CARD',
};

OrderReturnServiceCharge _$OrderReturnServiceChargeFromJson(
        Map<String, dynamic> json) =>
    OrderReturnServiceCharge(
      totalMoney: json['total_money'] == null
          ? null
          : Money.fromJson(json['total_money'] as Map<String, dynamic>),
      appliedTaxes: json['applied_taxes'] == null
          ? null
          : Money.fromJson(json['applied_taxes'] as Map<String, dynamic>),
      totalTaxMoney: json['total_tax_money'] == null
          ? null
          : Money.fromJson(json['total_tax_money'] as Map<String, dynamic>),
      name: json['name'] as String?,
      catalogVersion: json['catalog_version'] as int?,
      catalogObjectId: json['catalog_object_id'] as String?,
      uid: json['uid'] as String?,
      percentage: json['percentage'] as String?,
      appliedMoney: json['applied_money'] == null
          ? null
          : Money.fromJson(json['applied_money'] as Map<String, dynamic>),
      amountMoney: json['amount_money'] == null
          ? null
          : Money.fromJson(json['amount_money'] as Map<String, dynamic>),
      calculationPhase: json['calculation_phase'] as String?,
      taxable: json['taxable'] as bool?,
      sourceServiceChargeUid: json['source_service_charge_uid'] as String?,
    );

Map<String, dynamic> _$OrderReturnServiceChargeToJson(
    OrderReturnServiceCharge instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('amount_money', instance.amountMoney);
  writeNotNull('applied_money', instance.appliedMoney);
  writeNotNull('applied_taxes', instance.appliedTaxes);
  writeNotNull('calculation_phase', instance.calculationPhase);
  writeNotNull('catalog_object_id', instance.catalogObjectId);
  writeNotNull('catalog_version', instance.catalogVersion);
  writeNotNull('name', instance.name);
  writeNotNull('percentage', instance.percentage);
  writeNotNull('source_service_charge_uid', instance.sourceServiceChargeUid);
  writeNotNull('taxable', instance.taxable);
  writeNotNull('total_money', instance.totalMoney);
  writeNotNull('total_tax_money', instance.totalTaxMoney);
  writeNotNull('uid', instance.uid);
  return val;
}

OrderReturnTax _$OrderReturnTaxFromJson(Map<String, dynamic> json) =>
    OrderReturnTax(
      appliedMoney: json['applied_money'] == null
          ? null
          : Money.fromJson(json['applied_money'] as Map<String, dynamic>),
      percentage: json['percentage'] as String?,
      uid: json['uid'] as String?,
      catalogObjectId: json['catalog_object_id'] as String?,
      catalogVersion: json['catalog_version'] as int?,
      name: json['name'] as String?,
      scope: $enumDecodeNullable(_$OrderLineItemTaxScopeEnumMap, json['scope']),
      type: $enumDecodeNullable(_$OrderLineItemTaxTypeEnumMap, json['type']),
      sourceTaxUid: json['source_tax_uid'] as String?,
    );

Map<String, dynamic> _$OrderReturnTaxToJson(OrderReturnTax instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('applied_money', instance.appliedMoney);
  writeNotNull('catalog_object_id', instance.catalogObjectId);
  writeNotNull('catalog_version', instance.catalogVersion);
  writeNotNull('name', instance.name);
  writeNotNull('percentage', instance.percentage);
  writeNotNull('scope', _$OrderLineItemTaxScopeEnumMap[instance.scope]);
  writeNotNull('source_tax_uid', instance.sourceTaxUid);
  writeNotNull('type', _$OrderLineItemTaxTypeEnumMap[instance.type]);
  writeNotNull('uid', instance.uid);
  return val;
}

const _$OrderLineItemTaxTypeEnumMap = {
  OrderLineItemTaxType.UNKNOWN_TAX: 'UNKNOWN_TAX',
  OrderLineItemTaxType.ADDITIVE: 'ADDITIVE',
  OrderLineItemTaxType.INCLUSIVE: 'INCLUSIVE',
};

TenderCardDetails _$TenderCardDetailsFromJson(Map<String, dynamic> json) =>
    TenderCardDetails(
      status:
          $enumDecodeNullable(_$TenderCardDetailsStatusEnumMap, json['status']),
      card: json['card'] == null
          ? null
          : Card.fromJson(json['card'] as Map<String, dynamic>),
      entryMethod: $enumDecodeNullable(
          _$TenderCardDetailsEntryMethodEnumMap, json['entry_method']),
    );

Map<String, dynamic> _$TenderCardDetailsToJson(TenderCardDetails instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('card', instance.card);
  writeNotNull('entry_method',
      _$TenderCardDetailsEntryMethodEnumMap[instance.entryMethod]);
  writeNotNull('status', _$TenderCardDetailsStatusEnumMap[instance.status]);
  return val;
}

const _$TenderCardDetailsStatusEnumMap = {
  TenderCardDetailsStatus.AUTHORIZED: 'AUTHORIZED',
  TenderCardDetailsStatus.CAPTURED: 'CAPTURED',
  TenderCardDetailsStatus.VOIDED: 'VOIDED',
  TenderCardDetailsStatus.FAILED: 'FAILED',
};

const _$TenderCardDetailsEntryMethodEnumMap = {
  TenderCardDetailsEntryMethod.SWIPED: 'SWIPED',
  TenderCardDetailsEntryMethod.KEYED: 'KEYED',
  TenderCardDetailsEntryMethod.EMV: 'EMV',
  TenderCardDetailsEntryMethod.ON_FILE: 'ON_FILE',
  TenderCardDetailsEntryMethod.CONTACTLESS: 'CONTACTLESS',
};

Card _$CardFromJson(Map<String, dynamic> json) => Card(
      customerId: json['customer_id'] as String?,
      id: json['id'] as String?,
      version: json['version'] as int?,
      referenceId: json['reference_id'] as String?,
      merchantId: json['merchant_id'] as String?,
      expYear: json['exp_year'] as int?,
      expMonth: json['exp_month'] as int?,
      cardType: $enumDecodeNullable(_$CardTypeEnumMap, json['card_type']),
      billingAddress: json['billing_address'] == null
          ? null
          : Address.fromJson(json['billing_address'] as Map<String, dynamic>),
      bin: json['bin'] as String?,
      cardBrand: $enumDecodeNullable(_$CardBrandEnumMap, json['card_brand']),
      cardholderName: json['cardholder_name'] as String?,
      enabled: json['enabled'] as bool?,
      fingerprint: json['fingerprint'] as String?,
      last4: json['last_4'] as String?,
      prepaidType:
          $enumDecodeNullable(_$CardPrepaidTypeEnumMap, json['prepaid_type']),
    );

Map<String, dynamic> _$CardToJson(Card instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('billing_address', instance.billingAddress);
  writeNotNull('bin', instance.bin);
  writeNotNull('card_brand', _$CardBrandEnumMap[instance.cardBrand]);
  writeNotNull('card_type', _$CardTypeEnumMap[instance.cardType]);
  writeNotNull('cardholder_name', instance.cardholderName);
  writeNotNull('customer_id', instance.customerId);
  writeNotNull('enabled', instance.enabled);
  writeNotNull('exp_month', instance.expMonth);
  writeNotNull('exp_year', instance.expYear);
  writeNotNull('fingerprint', instance.fingerprint);
  writeNotNull('last_4', instance.last4);
  writeNotNull('merchant_id', instance.merchantId);
  writeNotNull('prepaid_type', _$CardPrepaidTypeEnumMap[instance.prepaidType]);
  writeNotNull('reference_id', instance.referenceId);
  writeNotNull('version', instance.version);
  return val;
}

const _$CardTypeEnumMap = {
  CardType.UNKNOWN_CARD_TYPE: 'UNKNOWN_CARD_TYPE',
  CardType.CREDIT: 'CREDIT',
  CardType.DEBIT: 'DEBIT',
};

const _$CardBrandEnumMap = {
  CardBrand.OTHER_BRAND: 'OTHER_BRAND',
  CardBrand.VISA: 'VISA',
  CardBrand.MASTERCARD: 'MASTERCARD',
  CardBrand.AMERICAN_EXPRESS: 'AMERICAN_EXPRESS',
  CardBrand.DISCOVER: 'DISCOVER',
  CardBrand.DISCOVER_DINERS: 'DISCOVER_DINERS',
  CardBrand.JCB: 'JCB',
  CardBrand.CHINA_UNIONPAY: 'CHINA_UNIONPAY',
  CardBrand.SQUARE_GIFT_CARD: 'SQUARE_GIFT_CARD',
  CardBrand.SQUARE_CAPITAL_CARD: 'SQUARE_CAPITAL_CARD',
  CardBrand.INTERAC: 'INTERAC',
  CardBrand.EFTPOS: 'EFTPOS',
  CardBrand.FELICA: 'FELICA',
  CardBrand.EBT: 'EBT',
};

const _$CardPrepaidTypeEnumMap = {
  CardPrepaidType.UNKNOWN_PREPAID_TYPE: 'UNKNOWN_PREPAID_TYPE',
  CardPrepaidType.NOT_PREPAID: 'NOT_PREPAID',
  CardPrepaidType.PREPAID: 'PREPAID',
};
