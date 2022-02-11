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

OrderEntry _$OrderEntryFromJson(Map<String, dynamic> json) => OrderEntry(
      locationId: json['location_id'] as String?,
      version: json['version'] as int?,
      orderId: json['order_id'] as String?,
    );

Map<String, dynamic> _$OrderEntryToJson(OrderEntry instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('location_id', instance.locationId);
  writeNotNull('order_id', instance.orderId);
  writeNotNull('version', instance.version);
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

Subscription _$SubscriptionFromJson(Map<String, dynamic> json) => Subscription(
      version: json['version'] as int?,
      id: json['id'] as String?,
      customerId: json['customer_id'] as String?,
      status: $enumDecodeNullable(_$SubscriptionStatusEnumMap, json['status']),
      locationId: json['location_id'] as String?,
      createdAt: json['created_at'] as String?,
      source: json['source'] == null
          ? null
          : SubscriptionSource.fromJson(json['source'] as Map<String, dynamic>),
      cardId: json['cardId'] as String?,
      actions: (json['actions'] as List<dynamic>?)
          ?.map((e) => SubscriptionAction.fromJson(e as Map<String, dynamic>))
          .toList(),
      canceledDate: json['canceled_date'] as String?,
      chargedThroughDate: json['charged_through_date'] as String?,
      invoiceIds: (json['invoice_ids'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      planId: json['plan_id'] as String?,
      priceOverrideMoney: json['price_override_money'] == null
          ? null
          : Money.fromJson(
              json['price_override_money'] as Map<String, dynamic>),
      startDate: json['start_date'] as String?,
      taxPercentage: json['tax_percentage'] as String?,
      timezone: json['timezone'] as String?,
    );

Map<String, dynamic> _$SubscriptionToJson(Subscription instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('actions', instance.actions);
  writeNotNull('canceled_date', instance.canceledDate);
  writeNotNull('cardId', instance.cardId);
  writeNotNull('charged_through_date', instance.chargedThroughDate);
  writeNotNull('created_at', instance.createdAt);
  writeNotNull('customer_id', instance.customerId);
  writeNotNull('invoice_ids', instance.invoiceIds);
  writeNotNull('location_id', instance.locationId);
  writeNotNull('plan_id', instance.planId);
  writeNotNull('price_override_money', instance.priceOverrideMoney);
  writeNotNull('source', instance.source);
  writeNotNull('start_date', instance.startDate);
  writeNotNull('status', _$SubscriptionStatusEnumMap[instance.status]);
  writeNotNull('tax_percentage', instance.taxPercentage);
  writeNotNull('timezone', instance.timezone);
  writeNotNull('version', instance.version);
  return val;
}

const _$SubscriptionStatusEnumMap = {
  SubscriptionStatus.PENDING: 'PENDING',
  SubscriptionStatus.ACTIVE: 'ACTIVE',
  SubscriptionStatus.CANCELED: 'CANCELED',
  SubscriptionStatus.DEACTIVATED: 'DEACTIVATED',
  SubscriptionStatus.PAUSED: 'PAUSED',
};

SubscriptionAction _$SubscriptionActionFromJson(Map<String, dynamic> json) =>
    SubscriptionAction(
      id: json['id'] as String?,
      type: $enumDecodeNullable(_$SubscriptionActionTypeEnumMap, json['type']),
      effectiveDate: json['effective_date'] as String?,
      newPlanId: json['new_plan_id'] as String?,
    );

Map<String, dynamic> _$SubscriptionActionToJson(SubscriptionAction instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('effective_date', instance.effectiveDate);
  writeNotNull('new_plan_id', instance.newPlanId);
  writeNotNull('type', _$SubscriptionActionTypeEnumMap[instance.type]);
  return val;
}

const _$SubscriptionActionTypeEnumMap = {
  SubscriptionActionType.CANCEL: 'CANCEL',
  SubscriptionActionType.PAUSE: 'PAUSE',
  SubscriptionActionType.RESUME: 'RESUME',
  SubscriptionActionType.SWAP_PLAN: 'SWAP_PLAN',
};

SubscriptionSource _$SubscriptionSourceFromJson(Map<String, dynamic> json) =>
    SubscriptionSource(
      name: json['name'] as String?,
    );

Map<String, dynamic> _$SubscriptionSourceToJson(SubscriptionSource instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  return val;
}

SquareError _$SquareErrorFromJson(Map<String, dynamic> json) => SquareError(
      category: json['category'] as String?,
      code: $enumDecodeNullable(_$SquareErrorCodeEnumMap, json['code']),
      detail: json['detail'] as String?,
      field: json['field'] as String?,
    );

Map<String, dynamic> _$SquareErrorToJson(SquareError instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('category', instance.category);
  writeNotNull('code', _$SquareErrorCodeEnumMap[instance.code]);
  writeNotNull('detail', instance.detail);
  writeNotNull('field', instance.field);
  return val;
}

const _$SquareErrorCodeEnumMap = {
  SquareErrorCode.CARD_PROCESSING_NOT_ENABLED: 'CARD_PROCESSING_NOT_ENABLED',
  SquareErrorCode.CUSTOMER_NOT_FOUND: 'CUSTOMER_NOT_FOUND',
  SquareErrorCode.CUSTOMER_MISSING_NAME: 'CUSTOMER_MISSING_NAME',
  SquareErrorCode.CUSTOMER_MISSING_EMAIL: 'CUSTOMER_MISSING_EMAIL',
  SquareErrorCode.INVALID_DATE: 'INVALID_DATE',
  SquareErrorCode.INTERNAL_SERVER_ERROR: 'INTERNAL_SERVER_ERROR',
  SquareErrorCode.UNAUTHORIZED: 'UNAUTHORIZED',
  SquareErrorCode.ACCESS_TOKEN_EXPIRED: 'ACCESS_TOKEN_EXPIRED',
  SquareErrorCode.ACCESS_TOKEN_REVOKED: 'ACCESS_TOKEN_REVOKED',
  SquareErrorCode.FORBIDDEN: 'FORBIDDEN',
  SquareErrorCode.INSUFFICIENT_SCOPES: 'INSUFFICIENT_SCOPES',
  SquareErrorCode.APPLICATION_DISABLED: 'APPLICATION_DISABLED',
  SquareErrorCode.V1_APPLICATION: 'V1_APPLICATION',
  SquareErrorCode.V1_ACCESS_TOKEN: 'V1_ACCESS_TOKEN',
  SquareErrorCode.MERCHANT_SUBSCRIPTION_NOT_FOUND:
      'MERCHANT_SUBSCRIPTION_NOT_FOUND',
  SquareErrorCode.BAD_REQUEST: 'BAD_REQUEST',
  SquareErrorCode.MISSING_REQUIRED_PARAMETER: 'MISSING_REQUIRED_PARAMETER',
  SquareErrorCode.INCORRECT_TYPE: 'INCORRECT_TYPE',
  SquareErrorCode.INVALID_TIME: 'INVALID_TIME',
  SquareErrorCode.INVALID_TIME_RANGE: 'INVALID_TIME_RANGE',
  SquareErrorCode.INVALID_VALUE: 'INVALID_VALUE',
  SquareErrorCode.INVALID_CURSOR: 'INVALID_CURSOR',
  SquareErrorCode.UNKNOWN_QUERY_PARAMETER: 'UNKNOWN_QUERY_PARAMETER',
  SquareErrorCode.CONFLICTING_PARAMETERS: 'CONFLICTING_PARAMETERS',
  SquareErrorCode.EXPECTED_JSON_BODY: 'EXPECTED_JSON_BODY',
  SquareErrorCode.INVALID_SORT_ORDER: 'INVALID_SORT_ORDER',
  SquareErrorCode.VALUE_REGEX_MISMATCH: 'VALUE_REGEX_MISMATCH',
  SquareErrorCode.VALUE_TOO_SHORT: 'VALUE_TOO_SHORT',
  SquareErrorCode.VALUE_TOO_LONG: 'VALUE_TOO_LONG',
  SquareErrorCode.VALUE_TOO_LOW: 'VALUE_TOO_LOW',
  SquareErrorCode.VALUE_TOO_HIGH: 'VALUE_TOO_HIGH',
  SquareErrorCode.VALUE_EMPTY: 'VALUE_EMPTY',
  SquareErrorCode.ARRAY_LENGTH_TOO_LONG: 'ARRAY_LENGTH_TOO_LONG',
  SquareErrorCode.ARRAY_LENGTH_TOO_SHORT: 'ARRAY_LENGTH_TOO_SHORT',
  SquareErrorCode.ARRAY_EMPTY: 'ARRAY_EMPTY',
  SquareErrorCode.EXPECTED_BOOLEAN: 'EXPECTED_BOOLEAN',
  SquareErrorCode.EXPECTED_INTEGER: 'EXPECTED_INTEGER',
  SquareErrorCode.EXPECTED_FLOAT: 'EXPECTED_FLOAT',
  SquareErrorCode.EXPECTED_STRING: 'EXPECTED_STRING',
  SquareErrorCode.EXPECTED_OBJECT: 'EXPECTED_OBJECT',
  SquareErrorCode.EXPECTED_ARRAY: 'EXPECTED_ARRAY',
  SquareErrorCode.EXPECTED_MAP: 'EXPECTED_MAP',
  SquareErrorCode.EXPECTED_BASE64_ENCODED_BYTE_ARRAY:
      'EXPECTED_BASE64_ENCODED_BYTE_ARRAY',
  SquareErrorCode.INVALID_ARRAY_VALUE: 'INVALID_ARRAY_VALUE',
  SquareErrorCode.INVALID_ENUM_VALUE: 'INVALID_ENUM_VALUE',
  SquareErrorCode.INVALID_CONTENT_TYPE: 'INVALID_CONTENT_TYPE',
  SquareErrorCode.INVALID_FORM_VALUE: 'INVALID_FORM_VALUE',
  SquareErrorCode.NO_FIELDS_SET: 'NO_FIELDS_SET',
  SquareErrorCode.TOO_MANY_MAP_ENTRIES: 'TOO_MANY_MAP_ENTRIES',
  SquareErrorCode.MAP_KEY_LENGTH_TOO_SHORT: 'MAP_KEY_LENGTH_TOO_SHORT',
  SquareErrorCode.MAP_KEY_LENGTH_TOO_LONG: 'MAP_KEY_LENGTH_TOO_LONG',
  SquareErrorCode.CURRENCY_MISMATCH: 'CURRENCY_MISMATCH',
  SquareErrorCode.LOCATION_MISMATCH: 'LOCATION_MISMATCH',
  SquareErrorCode.IDEMPOTENCY_KEY_REUSED: 'IDEMPOTENCY_KEY_REUSED',
  SquareErrorCode.UNEXPECTED_VALUE: 'UNEXPECTED_VALUE',
  SquareErrorCode.SANDBOX_NOT_SUPPORTED: 'SANDBOX_NOT_SUPPORTED',
  SquareErrorCode.BAD_CERTIFICATE: 'BAD_CERTIFICATE',
  SquareErrorCode.INVALID_SQUARE_VERSION_FORMAT:
      'INVALID_SQUARE_VERSION_FORMAT',
  SquareErrorCode.API_VERSION_INCOMPATIBLE: 'API_VERSION_INCOMPATIBLE',
  SquareErrorCode.NOT_FOUND: 'NOT_FOUND',
  SquareErrorCode.METHOD_NOT_ALLOWED: 'METHOD_NOT_ALLOWED',
  SquareErrorCode.NOT_ACCEPTABLE: 'NOT_ACCEPTABLE',
  SquareErrorCode.REQUEST_TIMEOUT: 'REQUEST_TIMEOUT',
  SquareErrorCode.CONFLICT: 'CONFLICT',
  SquareErrorCode.GONE: 'GONE',
  SquareErrorCode.REQUEST_ENTITY_TOO_LARGE: 'REQUEST_ENTITY_TOO_LARGE',
  SquareErrorCode.UNSUPPORTED_MEDIA_TYPE: 'UNSUPPORTED_MEDIA_TYPE',
  SquareErrorCode.UNPROCESSABLE_ENTITY: 'UNPROCESSABLE_ENTITY',
  SquareErrorCode.RATE_LIMITED: 'RATE_LIMITED',
  SquareErrorCode.NOT_IMPLEMENTED: 'NOT_IMPLEMENTED',
  SquareErrorCode.BAD_GATEWAY: 'BAD_GATEWAY',
  SquareErrorCode.SERVICE_UNAVAILABLE: 'SERVICE_UNAVAILABLE',
  SquareErrorCode.GATEWAY_TIMEOUT: 'GATEWAY_TIMEOUT',
};

SearchSubscriptionsQuery _$SearchSubscriptionsQueryFromJson(
        Map<String, dynamic> json) =>
    SearchSubscriptionsQuery(
      filter: json['filter'] == null
          ? null
          : SearchSubscriptionsFilter.fromJson(
              json['filter'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SearchSubscriptionsQueryToJson(
    SearchSubscriptionsQuery instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('filter', instance.filter);
  return val;
}

SearchSubscriptionsFilter _$SearchSubscriptionsFilterFromJson(
        Map<String, dynamic> json) =>
    SearchSubscriptionsFilter(
      customerIds: (json['customer_ids'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      locationIds: (json['location_ids'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      sourceNames: (json['source_names'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$SearchSubscriptionsFilterToJson(
    SearchSubscriptionsFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('customer_ids', instance.customerIds);
  writeNotNull('location_ids', instance.locationIds);
  writeNotNull('source_names', instance.sourceNames);
  return val;
}

SubscriptionEvent _$SubscriptionEventFromJson(Map<String, dynamic> json) =>
    SubscriptionEvent(
      effectiveDate: json['effective_date'] as String?,
      id: json['id'] as String?,
      planId: json['plan_id'] as String?,
      info: json['info'] == null
          ? null
          : SubscriptionEventInfo.fromJson(
              json['info'] as Map<String, dynamic>),
      subscriptionEventType: $enumDecodeNullable(
          _$SubscriptionEventSubscriptionEventTypeEnumMap,
          json['subscription_event_type']),
    );

Map<String, dynamic> _$SubscriptionEventToJson(SubscriptionEvent instance) =>
    <String, dynamic>{
      'id': instance.id,
      'effective_date': instance.effectiveDate,
      'plan_id': instance.planId,
      'subscription_event_type':
          _$SubscriptionEventSubscriptionEventTypeEnumMap[
              instance.subscriptionEventType],
      'info': instance.info,
    };

const _$SubscriptionEventSubscriptionEventTypeEnumMap = {
  SubscriptionEventSubscriptionEventType.START_SUBSCRIPTION:
      'START_SUBSCRIPTION',
  SubscriptionEventSubscriptionEventType.PLAN_CHANGE: 'PLAN_CHANGE',
  SubscriptionEventSubscriptionEventType.STOP_SUBSCRIPTION: 'STOP_SUBSCRIPTION',
  SubscriptionEventSubscriptionEventType.DEACTIVATE_SUBSCRIPTION:
      'DEACTIVATE_SUBSCRIPTION',
  SubscriptionEventSubscriptionEventType.RESUME_SUBSCRIPTION:
      'RESUME_SUBSCRIPTION',
  SubscriptionEventSubscriptionEventType.PAUSE_SUBSCRIPTION:
      'PAUSE_SUBSCRIPTION',
};

SubscriptionEventInfo _$SubscriptionEventInfoFromJson(
        Map<String, dynamic> json) =>
    SubscriptionEventInfo(
      detail: json['detail'] as String?,
      code: json['code'] as String?,
    );

Map<String, dynamic> _$SubscriptionEventInfoToJson(
    SubscriptionEventInfo instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('code', instance.code);
  writeNotNull('detail', instance.detail);
  return val;
}

Invoice _$InvoiceFromJson(Map<String, dynamic> json) => Invoice(
      orderId: json['order_id'] as String?,
      version: json['version'] as int?,
      locationId: json['location_id'] as String?,
      id: json['id'] as String?,
      timezone: json['timezone'] as String?,
      createdAt: json['created_at'] as String?,
      status: $enumDecodeNullable(_$InvoiceStatusEnumMap, json['status']),
      description: json['description'] as String?,
      updatedAt: json['updated_at'] as String?,
      title: json['title'] as String?,
      acceptedPaymentMethods: json['accepted_payment_methods'] == null
          ? null
          : InvoiceAcceptedPaymentMethods.fromJson(
              json['accepted_payment_methods'] as Map<String, dynamic>),
      customFields: (json['custom_fields'] as List<dynamic>?)
          ?.map((e) => InvoiceCustomField.fromJson(e as Map<String, dynamic>))
          .toList(),
      deliveryMethod: json['delivery_method'] as String?,
      invoiceNumber: json['invoice_number'] as String?,
      nextPaymentAmountMoney: json['next_payment_amount_money'] == null
          ? null
          : Money.fromJson(
              json['next_payment_amount_money'] as Map<String, dynamic>),
      paymentConditions: json['payment_conditions'] as String?,
      paymentRequests: (json['payment_requests'] as List<dynamic>?)
          ?.map(
              (e) => InvoicePaymentRequest.fromJson(e as Map<String, dynamic>))
          .toList(),
      primaryRecipient: json['primary_recipient'] == null
          ? null
          : InvoiceRecipient.fromJson(
              json['primary_recipient'] as Map<String, dynamic>),
      publicUrl: json['public_url'] as String?,
      saleOrServiceDate: json['sale_or_service_date'] as String?,
      scheduledAt: json['scheduled_at'] as String?,
      subscriptionId: json['subscription_id'] as String?,
    );

Map<String, dynamic> _$InvoiceToJson(Invoice instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('accepted_payment_methods', instance.acceptedPaymentMethods);
  writeNotNull('created_at', instance.createdAt);
  writeNotNull('custom_fields', instance.customFields);
  writeNotNull('delivery_method', instance.deliveryMethod);
  writeNotNull('description', instance.description);
  writeNotNull('invoice_number', instance.invoiceNumber);
  writeNotNull('location_id', instance.locationId);
  writeNotNull('next_payment_amount_money', instance.nextPaymentAmountMoney);
  writeNotNull('order_id', instance.orderId);
  writeNotNull('payment_conditions', instance.paymentConditions);
  writeNotNull('payment_requests', instance.paymentRequests);
  writeNotNull('primary_recipient', instance.primaryRecipient);
  writeNotNull('public_url', instance.publicUrl);
  writeNotNull('sale_or_service_date', instance.saleOrServiceDate);
  writeNotNull('scheduled_at', instance.scheduledAt);
  writeNotNull('status', _$InvoiceStatusEnumMap[instance.status]);
  writeNotNull('subscription_id', instance.subscriptionId);
  writeNotNull('timezone', instance.timezone);
  writeNotNull('title', instance.title);
  writeNotNull('updated_at', instance.updatedAt);
  writeNotNull('version', instance.version);
  return val;
}

const _$InvoiceStatusEnumMap = {
  InvoiceStatus.DRAFT: 'DRAFT',
  InvoiceStatus.UNPAID: 'UNPAID',
  InvoiceStatus.SCHEDULED: 'SCHEDULED',
  InvoiceStatus.PARTIALLY_PAID: 'PARTIALLY_PAID',
  InvoiceStatus.PAID: 'PAID',
  InvoiceStatus.PARTIALLY_REFUNDED: 'PARTIALLY_REFUNDED',
  InvoiceStatus.REFUNDED: 'REFUNDED',
  InvoiceStatus.CANCELED: 'CANCELED',
  InvoiceStatus.FAILED: 'FAILED',
  InvoiceStatus.PAYMENT_PENDING: 'PAYMENT_PENDING',
};

InvoiceRecipient _$InvoiceRecipientFromJson(Map<String, dynamic> json) =>
    InvoiceRecipient(
      customerId: json['customer_id'] as String?,
      emailAddress: json['email_address'] as String?,
      address: json['address'] == null
          ? null
          : Address.fromJson(json['address'] as Map<String, dynamic>),
      phoneNumber: json['phone_number'] as String?,
      companyName: json['company_name'] as String?,
      givenName: json['given_name'] as String?,
      familyName: json['family_name'] as String?,
      taxIds: json['tax_ids'] == null
          ? null
          : InvoiceRecipientTaxIds.fromJson(
              json['tax_ids'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$InvoiceRecipientToJson(InvoiceRecipient instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('address', instance.address);
  writeNotNull('company_name', instance.companyName);
  writeNotNull('customer_id', instance.customerId);
  writeNotNull('email_address', instance.emailAddress);
  writeNotNull('family_name', instance.familyName);
  writeNotNull('given_name', instance.givenName);
  writeNotNull('phone_number', instance.phoneNumber);
  writeNotNull('tax_ids', instance.taxIds);
  return val;
}

InvoiceRecipientTaxIds _$InvoiceRecipientTaxIdsFromJson(
        Map<String, dynamic> json) =>
    InvoiceRecipientTaxIds(
      euVat: json['eu_vat'] as String?,
    );

Map<String, dynamic> _$InvoiceRecipientTaxIdsToJson(
    InvoiceRecipientTaxIds instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('eu_vat', instance.euVat);
  return val;
}

InvoicePaymentRequest _$InvoicePaymentRequestFromJson(
        Map<String, dynamic> json) =>
    InvoicePaymentRequest(
      cardId: json['card_id'] as String?,
      uid: json['uid'] as String?,
      dueDate: json['due_date'] as String?,
      automaticPaymentSource: $enumDecodeNullable(
          _$InvoiceAutomaticPaymentSourceEnumMap,
          json['automatic_payment_source']),
      computedAmountMoney: json['computed_amount_money'] == null
          ? null
          : Money.fromJson(
              json['computed_amount_money'] as Map<String, dynamic>),
      fixedAmountRequestedMoney: json['fixed_amount_requested_money'] == null
          ? null
          : Money.fromJson(
              json['fixed_amount_requested_money'] as Map<String, dynamic>),
      percentageRequested: json['percentage_requested'] as String?,
      reminders: (json['reminders'] as List<dynamic>?)
          ?.map(
              (e) => InvoicePaymentReminder.fromJson(e as Map<String, dynamic>))
          .toList(),
      requestMethod: $enumDecodeNullable(
          _$InvoiceRequestMethodEnumMap, json['request_method']),
      requestType: $enumDecodeNullable(
          _$InvoiceRequestTypeEnumMap, json['request_type']),
      roundingAdjustmentIncludedMoney:
          json['rounding_adjustment_included_money'] == null
              ? null
              : Money.fromJson(json['rounding_adjustment_included_money']
                  as Map<String, dynamic>),
      tippingEnabled: json['tipping_enabled'] as bool?,
      totalCompletedAmountMoney: json['total_completed_amount_money'] == null
          ? null
          : Money.fromJson(
              json['total_completed_amount_money'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$InvoicePaymentRequestToJson(
    InvoicePaymentRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('automatic_payment_source',
      _$InvoiceAutomaticPaymentSourceEnumMap[instance.automaticPaymentSource]);
  writeNotNull('card_id', instance.cardId);
  writeNotNull('computed_amount_money', instance.computedAmountMoney);
  writeNotNull('due_date', instance.dueDate);
  writeNotNull(
      'fixed_amount_requested_money', instance.fixedAmountRequestedMoney);
  writeNotNull('percentage_requested', instance.percentageRequested);
  writeNotNull('reminders', instance.reminders);
  writeNotNull(
      'request_type', _$InvoiceRequestTypeEnumMap[instance.requestType]);
  writeNotNull('rounding_adjustment_included_money',
      instance.roundingAdjustmentIncludedMoney);
  writeNotNull('tipping_enabled', instance.tippingEnabled);
  writeNotNull(
      'total_completed_amount_money', instance.totalCompletedAmountMoney);
  writeNotNull('uid', instance.uid);
  writeNotNull(
      'request_method', _$InvoiceRequestMethodEnumMap[instance.requestMethod]);
  return val;
}

const _$InvoiceAutomaticPaymentSourceEnumMap = {
  InvoiceAutomaticPaymentSource.NONE: 'NONE',
  InvoiceAutomaticPaymentSource.CARD_ON_FILE: 'CARD_ON_FILE',
  InvoiceAutomaticPaymentSource.BANK_ON_FILE: 'BANK_ON_FILE',
};

const _$InvoiceRequestMethodEnumMap = {
  InvoiceRequestMethod.EMAIL: 'EMAIL',
  InvoiceRequestMethod.CHARGE_CARD_ON_FILE: 'CHARGE_CARD_ON_FILE',
  InvoiceRequestMethod.SHARE_MANUALLY: 'SHARE_MANUALLY',
  InvoiceRequestMethod.CHARGE_BANK_ON_FILE: 'CHARGE_BANK_ON_FILE',
  InvoiceRequestMethod.SMS: 'SMS',
  InvoiceRequestMethod.SMS_CHARGE_CARD_ON_FILE: 'SMS_CHARGE_CARD_ON_FILE',
  InvoiceRequestMethod.SMS_CHARGE_BANK_ON_FILE: 'SMS_CHARGE_BANK_ON_FILE',
};

const _$InvoiceRequestTypeEnumMap = {
  InvoiceRequestType.BALANCE: 'BALANCE',
  InvoiceRequestType.DEPOSIT: 'DEPOSIT',
  InvoiceRequestType.INSTALLMENT: 'INSTALLMENT',
};

InvoicePaymentReminder _$InvoicePaymentReminderFromJson(
        Map<String, dynamic> json) =>
    InvoicePaymentReminder(
      uid: json['uid'] as String?,
      status: $enumDecodeNullable(
          _$InvoicePaymentReminderStatusEnumMap, json['status']),
      message: json['message'] as String?,
      relativeScheduledDays: json['relative_scheduled_days'] as int?,
      sentAt: json['sent_at'] as String?,
    );

Map<String, dynamic> _$InvoicePaymentReminderToJson(
    InvoicePaymentReminder instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('message', instance.message);
  writeNotNull('relative_scheduled_days', instance.relativeScheduledDays);
  writeNotNull('sent_at', instance.sentAt);
  writeNotNull(
      'status', _$InvoicePaymentReminderStatusEnumMap[instance.status]);
  writeNotNull('uid', instance.uid);
  return val;
}

const _$InvoicePaymentReminderStatusEnumMap = {
  InvoicePaymentReminderStatus.PENDING: 'PENDING',
  InvoicePaymentReminderStatus.NOT_APPLICABLE: 'NOT_APPLICABLE',
  InvoicePaymentReminderStatus.SENT: 'SENT',
};

InvoiceCustomField _$InvoiceCustomFieldFromJson(Map<String, dynamic> json) =>
    InvoiceCustomField(
      value: json['value'] as String?,
      label: json['label'] as String?,
      placement: $enumDecodeNullable(
          _$InvoiceCustomFieldPlacementEnumMap, json['placement']),
    );

Map<String, dynamic> _$InvoiceCustomFieldToJson(InvoiceCustomField instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('label', instance.label);
  writeNotNull(
      'placement', _$InvoiceCustomFieldPlacementEnumMap[instance.placement]);
  writeNotNull('value', instance.value);
  return val;
}

const _$InvoiceCustomFieldPlacementEnumMap = {
  InvoiceCustomFieldPlacement.ABOVE_LINE_ITEMS: 'ABOVE_LINE_ITEMS',
  InvoiceCustomFieldPlacement.BELOW_LINE_ITEMS: 'BELOW_LINE_ITEMS',
};

InvoiceAcceptedPaymentMethods _$InvoiceAcceptedPaymentMethodsFromJson(
        Map<String, dynamic> json) =>
    InvoiceAcceptedPaymentMethods(
      card: json['card'] as bool?,
      bankAccount: json['bank_account'] as bool?,
      squareGiftCard: json['square_gift_card'] as bool?,
    );

Map<String, dynamic> _$InvoiceAcceptedPaymentMethodsToJson(
    InvoiceAcceptedPaymentMethods instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('bank_account', instance.bankAccount);
  writeNotNull('card', instance.card);
  writeNotNull('square_gift_card', instance.squareGiftCard);
  return val;
}

InvoiceQuery _$InvoiceQueryFromJson(Map<String, dynamic> json) => InvoiceQuery(
      filter: json['filter'] == null
          ? null
          : InvoiceFilter.fromJson(json['filter'] as Map<String, dynamic>),
      sort: json['sort'] == null
          ? null
          : InvoiceSort.fromJson(json['sort'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$InvoiceQueryToJson(InvoiceQuery instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('filter', instance.filter);
  writeNotNull('sort', instance.sort);
  return val;
}

InvoiceFilter _$InvoiceFilterFromJson(Map<String, dynamic> json) =>
    InvoiceFilter(
      locationIds: (json['location_ids'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      customerIds: (json['customer_ids'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$InvoiceFilterToJson(InvoiceFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('location_ids', instance.locationIds);
  writeNotNull('customer_ids', instance.customerIds);
  return val;
}

InvoiceSort _$InvoiceSortFromJson(Map<String, dynamic> json) => InvoiceSort(
      field: $enumDecodeNullable(_$InvoiceSortFieldEnumMap, json['field']),
      order: $enumDecodeNullable(_$SortOrderEnumMap, json['order']),
    );

Map<String, dynamic> _$InvoiceSortToJson(InvoiceSort instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('field', _$InvoiceSortFieldEnumMap[instance.field]);
  writeNotNull('order', _$SortOrderEnumMap[instance.order]);
  return val;
}

const _$InvoiceSortFieldEnumMap = {
  InvoiceSortField.INVOICE_SORT_DATE: 'INVOICE_SORT_DATE',
};

const _$SortOrderEnumMap = {
  SortOrder.DESC: 'DESC',
  SortOrder.ASC: 'ASC',
};

CatalogObject _$CatalogObjectFromJson(Map<String, dynamic> json) =>
    CatalogObject(
      updatedAt: json['updated_at'] as String?,
      id: json['id'] as String?,
      version: json['version'] as int?,
      type: $enumDecodeNullable(_$CatalogObjectTypeEnumMap, json['type']),
      absentAtLocationIds: (json['absent_at_location_ids'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      catalogV1Ids: (json['catalog_v1_ids'] as List<dynamic>?)
          ?.map((e) => CatalogV1Id.fromJson(e as Map<String, dynamic>))
          .toList(),
      categoryData: json['category_data'] == null
          ? null
          : CatalogCategory.fromJson(
              json['category_data'] as Map<String, dynamic>),
      customAttributeDefinitionData: json['custom_attribute_definition_data'] ==
              null
          ? null
          : CatalogCustomAttributeDefinition.fromJson(
              json['custom_attribute_definition_data'] as Map<String, dynamic>),
      customAttributeValues:
          (json['custom_attribute_values'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(
            k, CatalogCustomAttributeValue.fromJson(e as Map<String, dynamic>)),
      ),
      discountData: json['discount_data'] == null
          ? null
          : CatalogDiscount.fromJson(
              json['discount_data'] as Map<String, dynamic>),
      imageData: json['image_data'] == null
          ? null
          : CatalogImage.fromJson(json['image_data'] as Map<String, dynamic>),
      isDeleted: json['is_deleted'] as bool?,
      itemData: json['item_data'] == null
          ? null
          : CatalogItem.fromJson(json['item_data'] as Map<String, dynamic>),
      itemOptionData: json['item_option_data'] == null
          ? null
          : CatalogItemOption.fromJson(
              json['item_option_data'] as Map<String, dynamic>),
      itemOptionValueData: json['item_option_value_data'] == null
          ? null
          : CatalogItemOptionValue.fromJson(
              json['item_option_value_data'] as Map<String, dynamic>),
      itemVariationData: json['item_variation_data'] == null
          ? null
          : CatalogItemVariation.fromJson(
              json['item_variation_data'] as Map<String, dynamic>),
      measurementUnitData: json['measurement_unit_data'] == null
          ? null
          : CatalogMeasurementUnit.fromJson(
              json['measurement_unit_data'] as Map<String, dynamic>),
      modifierData: json['modifier_data'] == null
          ? null
          : CatalogModifier.fromJson(
              json['modifier_data'] as Map<String, dynamic>),
      modifierListData: json['modifier_list_data'] == null
          ? null
          : CatalogModifierList.fromJson(
              json['modifier_list_data'] as Map<String, dynamic>),
      presentAtAllLocations: json['present_at_all_locations'] as bool?,
      presentAtLocationIds: (json['present_at_location_ids'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      pricingRuleData: json['pricing_rule_data'] == null
          ? null
          : CatalogPricingRule.fromJson(
              json['pricing_rule_data'] as Map<String, dynamic>),
      productSetData: json['product_set_data'] == null
          ? null
          : CatalogProductSet.fromJson(
              json['product_set_data'] as Map<String, dynamic>),
      quickAmountsSettingsData: json['quick_amounts_settings_data'] == null
          ? null
          : CatalogQuickAmountsSettings.fromJson(
              json['quick_amounts_settings_data'] as Map<String, dynamic>),
      subscriptionPlanData: json['subscription_plan_data'] == null
          ? null
          : CatalogSubscriptionPlan.fromJson(
              json['subscription_plan_data'] as Map<String, dynamic>),
      taxData: json['tax_data'] == null
          ? null
          : CatalogTax.fromJson(json['tax_data'] as Map<String, dynamic>),
      timePeriodData: json['time_period_data'] == null
          ? null
          : CatalogTimePeriod.fromJson(
              json['time_period_data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CatalogObjectToJson(CatalogObject instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('type', _$CatalogObjectTypeEnumMap[instance.type]);
  writeNotNull('absent_at_location_ids', instance.absentAtLocationIds);
  writeNotNull('catalog_v1_ids', instance.catalogV1Ids);
  writeNotNull('category_data', instance.categoryData);
  writeNotNull('custom_attribute_definition_data',
      instance.customAttributeDefinitionData);
  writeNotNull('custom_attribute_values', instance.customAttributeValues);
  writeNotNull('discount_data', instance.discountData);
  writeNotNull('image_data', instance.imageData);
  writeNotNull('is_deleted', instance.isDeleted);
  writeNotNull('item_data', instance.itemData);
  writeNotNull('item_option_data', instance.itemOptionData);
  writeNotNull('item_option_value_data', instance.itemOptionValueData);
  writeNotNull('item_variation_data', instance.itemVariationData);
  writeNotNull('measurement_unit_data', instance.measurementUnitData);
  writeNotNull('modifier_data', instance.modifierData);
  writeNotNull('modifier_list_data', instance.modifierListData);
  writeNotNull('present_at_all_locations', instance.presentAtAllLocations);
  writeNotNull('present_at_location_ids', instance.presentAtLocationIds);
  writeNotNull('pricing_rule_data', instance.pricingRuleData);
  writeNotNull('product_set_data', instance.productSetData);
  writeNotNull(
      'quick_amounts_settings_data', instance.quickAmountsSettingsData);
  writeNotNull('subscription_plan_data', instance.subscriptionPlanData);
  writeNotNull('tax_data', instance.taxData);
  writeNotNull('time_period_data', instance.timePeriodData);
  writeNotNull('updated_at', instance.updatedAt);
  writeNotNull('version', instance.version);
  return val;
}

const _$CatalogObjectTypeEnumMap = {
  CatalogObjectType.ITEM: 'ITEM',
  CatalogObjectType.IMAGE: 'IMAGE',
  CatalogObjectType.CATEGORY: 'CATEGORY',
  CatalogObjectType.ITEM_VARIATION: 'ITEM_VARIATION',
  CatalogObjectType.TAX: 'TAX',
  CatalogObjectType.DISCOUNT: 'DISCOUNT',
  CatalogObjectType.MODIFIER_LIST: 'MODIFIER_LIST',
  CatalogObjectType.MODIFIER: 'MODIFIER',
  CatalogObjectType.PRICING_RULE: 'PRICING_RULE',
  CatalogObjectType.PRODUCT_SET: 'PRODUCT_SET',
  CatalogObjectType.TIME_PERIOD: 'TIME_PERIOD',
  CatalogObjectType.MEASUREMENT_UNIT: 'MEASUREMENT_UNIT',
  CatalogObjectType.SUBSCRIPTION_PLAN: 'SUBSCRIPTION_PLAN',
  CatalogObjectType.ITEM_OPTION: 'ITEM_OPTION',
  CatalogObjectType.ITEM_OPTION_VAL: 'ITEM_OPTION_VAL',
  CatalogObjectType.CUSTOM_ATTRIBUTE_DEFINITION: 'CUSTOM_ATTRIBUTE_DEFINITION',
  CatalogObjectType.QUICK_AMOUNTS_SETTINGS: 'QUICK_AMOUNTS_SETTINGS',
};

CatalogTimePeriod _$CatalogTimePeriodFromJson(Map<String, dynamic> json) =>
    CatalogTimePeriod(
      event: json['event'] as String?,
    );

Map<String, dynamic> _$CatalogTimePeriodToJson(CatalogTimePeriod instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('event', instance.event);
  return val;
}

CatalogTax _$CatalogTaxFromJson(Map<String, dynamic> json) => CatalogTax(
      name: json['name'] as String?,
      enabled: json['enabled'] as bool?,
      percentage: json['percentage'] as String?,
      calculationPhase: $enumDecodeNullable(
          _$TaxCalculationPhaseEnumMap, json['calculation_phase']),
      appliesToCustomAmounts: json['applies_to_custom_amounts'] as String?,
      inclusionType: $enumDecodeNullable(
          _$TaxInclusionTypeEnumMap, json['inclusion_type']),
    );

Map<String, dynamic> _$CatalogTaxToJson(CatalogTax instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('applies_to_custom_amounts', instance.appliesToCustomAmounts);
  writeNotNull('calculation_phase',
      _$TaxCalculationPhaseEnumMap[instance.calculationPhase]);
  writeNotNull('enabled', instance.enabled);
  writeNotNull(
      'inclusion_type', _$TaxInclusionTypeEnumMap[instance.inclusionType]);
  writeNotNull('name', instance.name);
  writeNotNull('percentage', instance.percentage);
  return val;
}

const _$TaxCalculationPhaseEnumMap = {
  TaxCalculationPhase.TAX_SUBTOTAL_PHASE: 'TAX_SUBTOTAL_PHASE',
  TaxCalculationPhase.TAX_TOTAL_PHASE: 'TAX_TOTAL_PHASE',
};

const _$TaxInclusionTypeEnumMap = {
  TaxInclusionType.ADDITIVE: 'ADDITIVE',
  TaxInclusionType.INCLUSIVE: 'INCLUSIVE',
};

CatalogSubscriptionPlan _$CatalogSubscriptionPlanFromJson(
        Map<String, dynamic> json) =>
    CatalogSubscriptionPlan(
      name: json['name'] as String?,
      phases: (json['phases'] as List<dynamic>?)
          ?.map((e) => SubscriptionPhase.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CatalogSubscriptionPlanToJson(
    CatalogSubscriptionPlan instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  writeNotNull('phases', instance.phases);
  return val;
}

SubscriptionPhase _$SubscriptionPhaseFromJson(Map<String, dynamic> json) =>
    SubscriptionPhase(
      uid: json['uid'] as String?,
      cadence:
          $enumDecodeNullable(_$SubscriptionCadenceEnumMap, json['cadence']),
      ordinal: json['ordinal'] as int?,
      periods: json['periods'] as int?,
      recurringPriceMoney: json['recurring_price_money'] == null
          ? null
          : Money.fromJson(
              json['recurring_price_money'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SubscriptionPhaseToJson(SubscriptionPhase instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('cadence', _$SubscriptionCadenceEnumMap[instance.cadence]);
  writeNotNull('recurring_price_money', instance.recurringPriceMoney);
  writeNotNull('ordinal', instance.ordinal);
  writeNotNull('periods', instance.periods);
  writeNotNull('uid', instance.uid);
  return val;
}

const _$SubscriptionCadenceEnumMap = {
  SubscriptionCadence.DAILY: 'DAILY',
  SubscriptionCadence.WEEKLY: 'WEEKLY',
  SubscriptionCadence.EVERY_TWO_WEEKS: 'EVERY_TWO_WEEKS',
  SubscriptionCadence.THIRTY_DAYS: 'THIRTY_DAYS',
  SubscriptionCadence.SIXTY_DAYS: 'SIXTY_DAYS',
  SubscriptionCadence.NINETY_DAYS: 'NINETY_DAYS',
  SubscriptionCadence.MONTHLY: 'MONTHLY',
  SubscriptionCadence.EVERY_TWO_MONTHS: 'EVERY_TWO_MONTHS',
  SubscriptionCadence.QUARTERLY: 'QUARTERLY',
  SubscriptionCadence.EVERY_FOUR_MONTHS: 'EVERY_FOUR_MONTHS',
  SubscriptionCadence.EVERY_SIX_MONTHS: 'EVERY_SIX_MONTHS',
  SubscriptionCadence.ANNUAL: 'ANNUAL',
  SubscriptionCadence.EVERY_TWO_YEARS: 'EVERY_TWO_YEARS',
};

CatalogQuickAmountsSettings _$CatalogQuickAmountsSettingsFromJson(
        Map<String, dynamic> json) =>
    CatalogQuickAmountsSettings(
      option: $enumDecodeNullable(
          _$CatalogQuickAmountsSettingsOptionEnumMap, json['option']),
      amounts: (json['amounts'] as List<dynamic>?)
          ?.map((e) => CatalogQuickAmount.fromJson(e as Map<String, dynamic>))
          .toList(),
      eligibleForAutoAmounts: json['eligible_for_auto_amounts'] as bool?,
    );

Map<String, dynamic> _$CatalogQuickAmountsSettingsToJson(
    CatalogQuickAmountsSettings instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(
      'option', _$CatalogQuickAmountsSettingsOptionEnumMap[instance.option]);
  writeNotNull('amounts', instance.amounts);
  writeNotNull('eligible_for_auto_amounts', instance.eligibleForAutoAmounts);
  return val;
}

const _$CatalogQuickAmountsSettingsOptionEnumMap = {
  CatalogQuickAmountsSettingsOption.DISABLED: 'DISABLED',
  CatalogQuickAmountsSettingsOption.MANUAL: 'MANUAL',
  CatalogQuickAmountsSettingsOption.AUTO: 'AUTO',
};

CatalogQuickAmount _$CatalogQuickAmountFromJson(Map<String, dynamic> json) =>
    CatalogQuickAmount(
      ordinal: json['ordinal'] as int?,
      type: $enumDecodeNullable(_$CatalogQuickAmountTypeEnumMap, json['type']),
      amount: json['amount'] == null
          ? null
          : Money.fromJson(json['amount'] as Map<String, dynamic>),
      score: json['score'] as int?,
    );

Map<String, dynamic> _$CatalogQuickAmountToJson(CatalogQuickAmount instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('amount', instance.amount);
  writeNotNull('type', _$CatalogQuickAmountTypeEnumMap[instance.type]);
  writeNotNull('ordinal', instance.ordinal);
  writeNotNull('score', instance.score);
  return val;
}

const _$CatalogQuickAmountTypeEnumMap = {
  CatalogQuickAmountType.QUICK_AMOUNT_TYPE_MANUAL: 'QUICK_AMOUNT_TYPE_MANUAL',
  CatalogQuickAmountType.QUICK_AMOUNT_TYPE_AUTO: 'QUICK_AMOUNT_TYPE_AUTO',
};

CatalogProductSet _$CatalogProductSetFromJson(Map<String, dynamic> json) =>
    CatalogProductSet(
      name: json['name'] as String?,
      allProducts: json['all_products'] as bool?,
      productIdsAll: (json['product_ids_all'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      productIdsAny: (json['product_ids_any'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      quantityExact: json['quantity_exact'] as int?,
      quantityMax: json['quantity_max'] as int?,
      quantityMin: json['quantity_min'] as int?,
    );

Map<String, dynamic> _$CatalogProductSetToJson(CatalogProductSet instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('all_products', instance.allProducts);
  writeNotNull('name', instance.name);
  writeNotNull('product_ids_all', instance.productIdsAll);
  writeNotNull('product_ids_any', instance.productIdsAny);
  writeNotNull('quantity_exact', instance.quantityExact);
  writeNotNull('quantity_max', instance.quantityMax);
  writeNotNull('quantity_min', instance.quantityMin);
  return val;
}

CatalogPricingRule _$CatalogPricingRuleFromJson(Map<String, dynamic> json) =>
    CatalogPricingRule(
      name: json['name'] as String?,
      applyProductsId: json['apply_products_id'] as String?,
      customerGroupIdsAny: (json['customer_group_ids_any'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      discountId: json['discount_id'] as String?,
      excludeProductsId: json['exclude_products_id'] as String?,
      excludeStrategy: $enumDecodeNullable(
          _$ExcludeStrategyEnumMap, json['exclude_strategy']),
      matchProductsId: json['match_products_id'] as String?,
      minimumOrderSubtotalMoney: json['minimum_order_subtotal_money'] == null
          ? null
          : Money.fromJson(
              json['minimum_order_subtotal_money'] as Map<String, dynamic>),
      timePeriodIds: (json['time_period_ids'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      validFromDate: json['valid_from_date'] as String?,
      validFromLocalTime: json['valid_from_local_time'] as String?,
      validUntilDate: json['valid_until_date'] as String?,
      validUntilLocalTime: json['valid_until_local_time'] as String?,
    );

Map<String, dynamic> _$CatalogPricingRuleToJson(CatalogPricingRule instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('customer_group_ids_any', instance.customerGroupIdsAny);
  writeNotNull('discount_id', instance.discountId);
  writeNotNull('exclude_products_id', instance.excludeProductsId);
  writeNotNull(
      'exclude_strategy', _$ExcludeStrategyEnumMap[instance.excludeStrategy]);
  writeNotNull('match_products_id', instance.matchProductsId);
  writeNotNull(
      'minimum_order_subtotal_money', instance.minimumOrderSubtotalMoney);
  writeNotNull('name', instance.name);
  writeNotNull('time_period_ids', instance.timePeriodIds);
  writeNotNull('valid_from_date', instance.validFromDate);
  writeNotNull('valid_from_local_time', instance.validFromLocalTime);
  writeNotNull('valid_until_date', instance.validUntilDate);
  writeNotNull('valid_until_local_time', instance.validUntilLocalTime);
  writeNotNull('apply_products_id', instance.applyProductsId);
  return val;
}

const _$ExcludeStrategyEnumMap = {
  ExcludeStrategy.LEAST_EXPENSIVE: 'LEAST_EXPENSIVE',
  ExcludeStrategy.MOST_EXPENSIVE: 'MOST_EXPENSIVE',
};

CatalogModifierList _$CatalogModifierListFromJson(Map<String, dynamic> json) =>
    CatalogModifierList(
      name: json['name'] as String?,
      ordinal: json['ordinal'] as int?,
      modifiers: (json['modifiers'] as List<dynamic>?)
          ?.map((e) => CatalogObject.fromJson(e as Map<String, dynamic>))
          .toList(),
      imageIds: (json['image_ids'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      selectionType: $enumDecodeNullable(
          _$CatalogModifierListSelectionTypeEnumMap, json['selection_type']),
    );

Map<String, dynamic> _$CatalogModifierListToJson(CatalogModifierList instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('image_ids', instance.imageIds);
  writeNotNull('modifiers', instance.modifiers);
  writeNotNull('name', instance.name);
  writeNotNull('ordinal', instance.ordinal);
  writeNotNull('selection_type',
      _$CatalogModifierListSelectionTypeEnumMap[instance.selectionType]);
  return val;
}

const _$CatalogModifierListSelectionTypeEnumMap = {
  CatalogModifierListSelectionType.SINGLE: 'SINGLE',
  CatalogModifierListSelectionType.MULTIPLE: 'MULTIPLE',
};

CatalogModifier _$CatalogModifierFromJson(Map<String, dynamic> json) =>
    CatalogModifier(
      ordinal: json['ordinal'] as int?,
      name: json['name'] as String?,
      modifierListId: json['modifier_list_id'] as String?,
      priceMoney: json['price_money'] == null
          ? null
          : Money.fromJson(json['price_money'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CatalogModifierToJson(CatalogModifier instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('modifier_list_id', instance.modifierListId);
  writeNotNull('name', instance.name);
  writeNotNull('ordinal', instance.ordinal);
  writeNotNull('price_money', instance.priceMoney);
  return val;
}

CatalogMeasurementUnit _$CatalogMeasurementUnitFromJson(
        Map<String, dynamic> json) =>
    CatalogMeasurementUnit(
      precision: json['precision'] as int?,
      measurementUnit: json['measurement_unit'] == null
          ? null
          : MeasurementUnit.fromJson(
              json['measurement_unit'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CatalogMeasurementUnitToJson(
    CatalogMeasurementUnit instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('measurement_unit', instance.measurementUnit);
  writeNotNull('precision', instance.precision);
  return val;
}

CatalogItemVariation _$CatalogItemVariationFromJson(
        Map<String, dynamic> json) =>
    CatalogItemVariation(
      priceMoney: json['price_money'] == null
          ? null
          : Money.fromJson(json['price_money'] as Map<String, dynamic>),
      name: json['name'] as String?,
      ordinal: json['ordinal'] as int?,
      imageIds: (json['image_ids'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      sku: json['sku'] as String?,
      availableForBooking: json['available_for_booking'] as bool?,
      inventoryAlertThreshold: json['inventory_alert_threshold'] as int?,
      inventoryAlertType: $enumDecodeNullable(
          _$InventoryAlertTypeEnumMap, json['inventory_alert_type']),
      itemId: json['item_id'] as String?,
      itemOptionValues: (json['item_option_values'] as List<dynamic>?)
          ?.map((e) => CatalogItemOptionValueForItemVariation.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      locationOverrides: (json['location_overrides'] as List<dynamic>?)
          ?.map((e) => ItemVariationLocationOverrides.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      measurementUnitId: json['measurement_unit_id'] as String?,
      pricingType: $enumDecodeNullable(
          _$CatalogPricingTypeEnumMap, json['pricing_type']),
      serviceDuration: json['service_duration'] as int?,
      stockable: json['stockable'] as bool?,
      stockableConversion: json['stockable_conversion'] == null
          ? null
          : CatalogStockConversion.fromJson(
              json['stockable_conversion'] as Map<String, dynamic>),
      teamMemberIds: (json['team_member_ids'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      trackInventory: json['track_inventory'] as bool?,
      upc: json['upc'] as String?,
      userData: json['user_data'] as String?,
    );

Map<String, dynamic> _$CatalogItemVariationToJson(
    CatalogItemVariation instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('available_for_booking', instance.availableForBooking);
  writeNotNull('image_ids', instance.imageIds);
  writeNotNull('inventory_alert_threshold', instance.inventoryAlertThreshold);
  writeNotNull('inventory_alert_type',
      _$InventoryAlertTypeEnumMap[instance.inventoryAlertType]);
  writeNotNull('item_id', instance.itemId);
  writeNotNull('item_option_values', instance.itemOptionValues);
  writeNotNull('location_overrides', instance.locationOverrides);
  writeNotNull('measurement_unit_id', instance.measurementUnitId);
  writeNotNull('name', instance.name);
  writeNotNull('ordinal', instance.ordinal);
  writeNotNull('price_money', instance.priceMoney);
  writeNotNull(
      'pricing_type', _$CatalogPricingTypeEnumMap[instance.pricingType]);
  writeNotNull('service_duration', instance.serviceDuration);
  writeNotNull('sku', instance.sku);
  writeNotNull('stockable', instance.stockable);
  writeNotNull('stockable_conversion', instance.stockableConversion);
  writeNotNull('team_member_ids', instance.teamMemberIds);
  writeNotNull('track_inventory', instance.trackInventory);
  writeNotNull('upc', instance.upc);
  writeNotNull('user_data', instance.userData);
  return val;
}

const _$InventoryAlertTypeEnumMap = {
  InventoryAlertType.NONE: 'NONE',
  InventoryAlertType.LOW_QUANTITY: 'LOW_QUANTITY',
};

const _$CatalogPricingTypeEnumMap = {
  CatalogPricingType.FIXED_PRICING: 'FIXED_PRICING',
  CatalogPricingType.VARIABLE_PRICING: 'VARIABLE_PRICING',
};

CatalogStockConversion _$CatalogStockConversionFromJson(
        Map<String, dynamic> json) =>
    CatalogStockConversion(
      nonstockableQuantity: json['nonstockable_quantity'] as String?,
      stockableItemVariationId: json['stockable_item_variation_id'] as String?,
      stockableQuantity: json['stockable_quantity'] as String?,
    );

Map<String, dynamic> _$CatalogStockConversionToJson(
    CatalogStockConversion instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('nonstockable_quantity', instance.nonstockableQuantity);
  writeNotNull(
      'stockable_item_variation_id', instance.stockableItemVariationId);
  writeNotNull('stockable_quantity', instance.stockableQuantity);
  return val;
}

ItemVariationLocationOverrides _$ItemVariationLocationOverridesFromJson(
        Map<String, dynamic> json) =>
    ItemVariationLocationOverrides(
      trackInventory: json['track_inventory'] as bool?,
      pricingType: $enumDecodeNullable(
          _$CatalogPricingTypeEnumMap, json['pricing_type']),
      inventoryAlertType: $enumDecodeNullable(
          _$InventoryAlertTypeEnumMap, json['inventory_alert_type']),
      inventoryAlertThreshold: json['inventory_alert_threshold'] as int?,
      priceMoney: json['price_money'] == null
          ? null
          : Money.fromJson(json['price_money'] as Map<String, dynamic>),
      locationId: json['location_id'] as String?,
    );

Map<String, dynamic> _$ItemVariationLocationOverridesToJson(
    ItemVariationLocationOverrides instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('inventory_alert_threshold', instance.inventoryAlertThreshold);
  writeNotNull('inventory_alert_type',
      _$InventoryAlertTypeEnumMap[instance.inventoryAlertType]);
  writeNotNull('location_id', instance.locationId);
  writeNotNull('price_money', instance.priceMoney);
  writeNotNull(
      'pricing_type', _$CatalogPricingTypeEnumMap[instance.pricingType]);
  writeNotNull('track_inventory', instance.trackInventory);
  return val;
}

CatalogItemOptionValueForItemVariation
    _$CatalogItemOptionValueForItemVariationFromJson(
            Map<String, dynamic> json) =>
        CatalogItemOptionValueForItemVariation(
          itemOptionId: json['item_option_id'] as String?,
          itemOptionValueId: json['item_option_value_id'] as String?,
        );

Map<String, dynamic> _$CatalogItemOptionValueForItemVariationToJson(
    CatalogItemOptionValueForItemVariation instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('item_option_id', instance.itemOptionId);
  writeNotNull('item_option_value_id', instance.itemOptionValueId);
  return val;
}

CatalogItemOptionValue _$CatalogItemOptionValueFromJson(
        Map<String, dynamic> json) =>
    CatalogItemOptionValue(
      itemOptionId: json['item_option_id'] as String?,
      ordinal: json['ordinal'] as int?,
      name: json['name'] as String?,
      description: json['description'] as String?,
      color: json['color'] as String?,
    );

Map<String, dynamic> _$CatalogItemOptionValueToJson(
    CatalogItemOptionValue instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('color', instance.color);
  writeNotNull('description', instance.description);
  writeNotNull('item_option_id', instance.itemOptionId);
  writeNotNull('name', instance.name);
  writeNotNull('ordinal', instance.ordinal);
  return val;
}

CatalogItemOption _$CatalogItemOptionFromJson(Map<String, dynamic> json) =>
    CatalogItemOption(
      description: json['description'] as String?,
      name: json['name'] as String?,
      displayName: json['display_name'] as String?,
      showColors: json['show_colors'] as bool?,
      values: (json['values'] as List<dynamic>?)
          ?.map((e) => CatalogObject.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CatalogItemOptionToJson(CatalogItemOption instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('description', instance.description);
  writeNotNull('display_name', instance.displayName);
  writeNotNull('name', instance.name);
  writeNotNull('show_colors', instance.showColors);
  writeNotNull('values', instance.values);
  return val;
}

CatalogItem _$CatalogItemFromJson(Map<String, dynamic> json) => CatalogItem(
      name: json['name'] as String?,
      description: json['description'] as String?,
      imageIds: (json['image_ids'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      taxIds:
          (json['tax_ids'] as List<dynamic>?)?.map((e) => e as String).toList(),
      abbreviation: json['abbreviation'] as String?,
      availableElectronically: json['available_electronically'] as bool?,
      availableForPickup: json['available_for_pickup'] as bool?,
      availableOnline: json['available_online'] as bool?,
      categoryId: json['category_id'] as String?,
      itemOptions: (json['item_options'] as List<dynamic>?)
          ?.map((e) =>
              CatalogItemOptionForItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      labelColor: json['label_color'] as String?,
      modifierListInfo: (json['modifier_list_info'] as List<dynamic>?)
          ?.map((e) =>
              CatalogItemModifierListInfo.fromJson(e as Map<String, dynamic>))
          .toList(),
      productType: $enumDecodeNullable(
          _$CatalogItemProductTypeEnumMap, json['product_type']),
      skipModifierScreen: json['skip_modifier_screen'] as bool?,
      sortName: json['sort_name'] as String?,
      variations: (json['variations'] as List<dynamic>?)
          ?.map((e) => CatalogObject.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CatalogItemToJson(CatalogItem instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('abbreviation', instance.abbreviation);
  writeNotNull('available_electronically', instance.availableElectronically);
  writeNotNull('available_for_pickup', instance.availableForPickup);
  writeNotNull('available_online', instance.availableOnline);
  writeNotNull('category_id', instance.categoryId);
  writeNotNull('description', instance.description);
  writeNotNull('image_ids', instance.imageIds);
  writeNotNull('item_options', instance.itemOptions);
  writeNotNull('label_color', instance.labelColor);
  writeNotNull('modifier_list_info', instance.modifierListInfo);
  writeNotNull('name', instance.name);
  writeNotNull(
      'product_type', _$CatalogItemProductTypeEnumMap[instance.productType]);
  writeNotNull('skip_modifier_screen', instance.skipModifierScreen);
  writeNotNull('sort_name', instance.sortName);
  writeNotNull('tax_ids', instance.taxIds);
  writeNotNull('variations', instance.variations);
  return val;
}

const _$CatalogItemProductTypeEnumMap = {
  CatalogItemProductType.REGULAR: 'REGULAR',
  CatalogItemProductType.GIFT_CARD: 'GIFT_CARD',
  CatalogItemProductType.APPOINTMENTS_SERVICE: 'APPOINTMENTS_SERVICE',
};

CatalogItemModifierListInfo _$CatalogItemModifierListInfoFromJson(
        Map<String, dynamic> json) =>
    CatalogItemModifierListInfo(
      modifierListId: json['modifier_list_id'] as String?,
      enabled: json['enabled'] as bool?,
      maxSelectedModifiers: json['max_selected_modifiers'] as int?,
      minSelectedModifiers: json['min_selected_modifiers'] as int?,
      modifierOverrides: (json['modifier_overrides'] as List<dynamic>?)
          ?.map((e) =>
              CatalogModifierOverride.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CatalogItemModifierListInfoToJson(
    CatalogItemModifierListInfo instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('modifier_list_id', instance.modifierListId);
  writeNotNull('enabled', instance.enabled);
  writeNotNull('max_selected_modifiers', instance.maxSelectedModifiers);
  writeNotNull('min_selected_modifiers', instance.minSelectedModifiers);
  writeNotNull('modifier_overrides', instance.modifierOverrides);
  return val;
}

CatalogModifierOverride _$CatalogModifierOverrideFromJson(
        Map<String, dynamic> json) =>
    CatalogModifierOverride(
      modifierId: json['modifier_id'] as String?,
      onByDefault: json['on_by_default'] as bool?,
    );

Map<String, dynamic> _$CatalogModifierOverrideToJson(
    CatalogModifierOverride instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('modifier_id', instance.modifierId);
  writeNotNull('on_by_default', instance.onByDefault);
  return val;
}

CatalogItemOptionForItem _$CatalogItemOptionForItemFromJson(
        Map<String, dynamic> json) =>
    CatalogItemOptionForItem(
      itemOptionId: json['item_option_id'] as String?,
    );

Map<String, dynamic> _$CatalogItemOptionForItemToJson(
    CatalogItemOptionForItem instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('item_option_id', instance.itemOptionId);
  return val;
}

CatalogImage _$CatalogImageFromJson(Map<String, dynamic> json) => CatalogImage(
      name: json['name'] as String?,
      caption: json['caption'] as String?,
      url: json['url'] as String?,
      photoStudioOrderId: json['photo_studio_order_id'] as String?,
    );

Map<String, dynamic> _$CatalogImageToJson(CatalogImage instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('caption', instance.caption);
  writeNotNull('name', instance.name);
  writeNotNull('photo_studio_order_id', instance.photoStudioOrderId);
  writeNotNull('url', instance.url);
  return val;
}

CatalogDiscount _$CatalogDiscountFromJson(Map<String, dynamic> json) =>
    CatalogDiscount(
      name: json['name'] as String?,
      labelColor: json['label_color'] as String?,
      percentage: json['percentage'] as String?,
      amountMoney: json['amount_money'] == null
          ? null
          : Money.fromJson(json['amount_money'] as Map<String, dynamic>),
      discountType: $enumDecodeNullable(
          _$CatalogDiscountTypeEnumMap, json['discount_type']),
      maximumAmountMoney: json['maximum_amount_money'] == null
          ? null
          : Money.fromJson(
              json['maximum_amount_money'] as Map<String, dynamic>),
      modifyTaxBasis: $enumDecodeNullable(
          _$CatalogDiscountModifyTaxBasisEnumMap, json['modify_tax_basis']),
      pinRequired: json['pin_required'] as bool?,
    );

Map<String, dynamic> _$CatalogDiscountToJson(CatalogDiscount instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('amount_money', instance.amountMoney);
  writeNotNull(
      'discount_type', _$CatalogDiscountTypeEnumMap[instance.discountType]);
  writeNotNull('label_color', instance.labelColor);
  writeNotNull('maximum_amount_money', instance.maximumAmountMoney);
  writeNotNull('modify_tax_basis',
      _$CatalogDiscountModifyTaxBasisEnumMap[instance.modifyTaxBasis]);
  writeNotNull('name', instance.name);
  writeNotNull('percentage', instance.percentage);
  writeNotNull('pin_required', instance.pinRequired);
  return val;
}

const _$CatalogDiscountTypeEnumMap = {
  CatalogDiscountType.FIXED_PERCENTAGE: 'FIXED_PERCENTAGE',
  CatalogDiscountType.FIXED_AMOUNT: 'FIXED_AMOUNT',
  CatalogDiscountType.VARIABLE_PERCENTAGE: 'VARIABLE_PERCENTAGE',
};

const _$CatalogDiscountModifyTaxBasisEnumMap = {
  CatalogDiscountModifyTaxBasis.MODIFY_TAX_BASIS: 'MODIFY_TAX_BASIS',
  CatalogDiscountModifyTaxBasis.DO_NOT_MODIFY_TAX_BASIS:
      'DO_NOT_MODIFY_TAX_BASIS',
};

CatalogCustomAttributeValue _$CatalogCustomAttributeValueFromJson(
        Map<String, dynamic> json) =>
    CatalogCustomAttributeValue(
      name: json['name'] as String?,
      type: $enumDecodeNullable(
          _$CatalogCustomAttributeDefinitionTypeEnumMap, json['type']),
      booleanValue: json['boolean_value'] as bool?,
      stringValue: json['string_value'] as String?,
      customAttributeDefinitionId:
          json['custom_attribute_definition_id'] as String?,
      key: json['key'] as String?,
      numberValue: json['number_value'] as String?,
    );

Map<String, dynamic> _$CatalogCustomAttributeValueToJson(
    CatalogCustomAttributeValue instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('boolean_value', instance.booleanValue);
  writeNotNull(
      'custom_attribute_definition_id', instance.customAttributeDefinitionId);
  writeNotNull('key', instance.key);
  writeNotNull('name', instance.name);
  writeNotNull('number_value', instance.numberValue);
  writeNotNull('string_value', instance.stringValue);
  writeNotNull(
      'type', _$CatalogCustomAttributeDefinitionTypeEnumMap[instance.type]);
  return val;
}

const _$CatalogCustomAttributeDefinitionTypeEnumMap = {
  CatalogCustomAttributeDefinitionType.STRING: 'STRING',
  CatalogCustomAttributeDefinitionType.BOOLEAN: 'BOOLEAN',
  CatalogCustomAttributeDefinitionType.NUMBER: 'NUMBER',
  CatalogCustomAttributeDefinitionType.SELECTION: 'SELECTION',
};

CatalogCustomAttributeDefinition _$CatalogCustomAttributeDefinitionFromJson(
        Map<String, dynamic> json) =>
    CatalogCustomAttributeDefinition(
      key: json['key'] as String?,
      type: $enumDecodeNullable(
          _$CatalogCustomAttributeDefinitionTypeEnumMap, json['type']),
      name: json['name'] as String?,
      description: json['description'] as String?,
      allowedObjectTypes: (json['allowed_object_types'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$CatalogObjectTypeEnumMap, e))
          .toList(),
      appVisibility: $enumDecodeNullable(
          _$CatalogCustomAttributeDefinitionAppVisibilityEnumMap,
          json['app_visibility']),
      customAttributeUsageCount: json['custom_attribute_usage_count'] as int?,
      numberConfig: json['number_config'] == null
          ? null
          : CatalogCustomAttributeDefinitionNumberConfig.fromJson(
              json['number_config'] as Map<String, dynamic>),
      selectionConfig: json['selection_config'] == null
          ? null
          : CatalogCustomAttributeDefinitionSelectionConfig.fromJson(
              json['selection_config'] as Map<String, dynamic>),
      sellerVisibility: $enumDecodeNullable(
          _$CatalogCustomAttributeDefinitionSellerVisibilityEnumMap,
          json['seller_visibility']),
      sourceApplication: json['sourceApplication'] == null
          ? null
          : SourceApplication.fromJson(
              json['sourceApplication'] as Map<String, dynamic>),
      stringConfig: json['string_config'] == null
          ? null
          : CatalogCustomAttributeDefinitionStringConfig.fromJson(
              json['string_config'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CatalogCustomAttributeDefinitionToJson(
    CatalogCustomAttributeDefinition instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(
      'allowed_object_types',
      instance.allowedObjectTypes
          ?.map((e) => _$CatalogObjectTypeEnumMap[e])
          .toList());
  writeNotNull('name', instance.name);
  writeNotNull(
      'type', _$CatalogCustomAttributeDefinitionTypeEnumMap[instance.type]);
  writeNotNull(
      'app_visibility',
      _$CatalogCustomAttributeDefinitionAppVisibilityEnumMap[
          instance.appVisibility]);
  writeNotNull(
      'custom_attribute_usage_count', instance.customAttributeUsageCount);
  writeNotNull('description', instance.description);
  writeNotNull('key', instance.key);
  writeNotNull('number_config', instance.numberConfig);
  writeNotNull('selection_config', instance.selectionConfig);
  writeNotNull(
      'seller_visibility',
      _$CatalogCustomAttributeDefinitionSellerVisibilityEnumMap[
          instance.sellerVisibility]);
  writeNotNull('sourceApplication', instance.sourceApplication);
  writeNotNull('string_config', instance.stringConfig);
  return val;
}

const _$CatalogCustomAttributeDefinitionAppVisibilityEnumMap = {
  CatalogCustomAttributeDefinitionAppVisibility.APP_VISIBILITY_HIDDEN:
      'APP_VISIBILITY_HIDDEN',
  CatalogCustomAttributeDefinitionAppVisibility.APP_VISIBILITY_READ_ONLY:
      'APP_VISIBILITY_READ_ONLY',
  CatalogCustomAttributeDefinitionAppVisibility
      .APP_VISIBILITY_READ_WRITE_VALUES: 'APP_VISIBILITY_READ_WRITE_VALUES',
};

const _$CatalogCustomAttributeDefinitionSellerVisibilityEnumMap = {
  CatalogCustomAttributeDefinitionSellerVisibility.SELLER_VISIBILITY_HIDDEN:
      'SELLER_VISIBILITY_HIDDEN',
  CatalogCustomAttributeDefinitionSellerVisibility
          .SELLER_VISIBILITY_READ_WRITE_VALUES:
      'SELLER_VISIBILITY_READ_WRITE_VALUES',
};

CatalogCustomAttributeDefinitionStringConfig
    _$CatalogCustomAttributeDefinitionStringConfigFromJson(
            Map<String, dynamic> json) =>
        CatalogCustomAttributeDefinitionStringConfig(
          enforceUniqueness: json['enforce_uniqueness'] as bool?,
        );

Map<String, dynamic> _$CatalogCustomAttributeDefinitionStringConfigToJson(
    CatalogCustomAttributeDefinitionStringConfig instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('enforce_uniqueness', instance.enforceUniqueness);
  return val;
}

SourceApplication _$SourceApplicationFromJson(Map<String, dynamic> json) =>
    SourceApplication(
      name: json['name'] as String?,
      applicationId: json['application_id'] as String?,
      product: $enumDecodeNullable(_$ProductValueEnumMap, json['product']),
    );

Map<String, dynamic> _$SourceApplicationToJson(SourceApplication instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('application_id', instance.applicationId);
  writeNotNull('name', instance.name);
  writeNotNull('product', _$ProductValueEnumMap[instance.product]);
  return val;
}

const _$ProductValueEnumMap = {
  ProductValue.SQUARE_POS: 'SQUARE_POS',
  ProductValue.EXTERNAL_API: 'EXTERNAL_API',
  ProductValue.BILLING: 'BILLING',
  ProductValue.APPOINTMENTS: 'APPOINTMENTS',
  ProductValue.INVOICES: 'INVOICES',
  ProductValue.ONLINE_STORE: 'ONLINE_STORE',
  ProductValue.PAYROLL: 'PAYROLL',
  ProductValue.DASHBOARD: 'DASHBOARD',
  ProductValue.ITEM_LIBRARY_IMPORT: 'ITEM_LIBRARY_IMPORT',
  ProductValue.OTHER: 'OTHER',
};

CatalogCustomAttributeDefinitionSelectionConfig
    _$CatalogCustomAttributeDefinitionSelectionConfigFromJson(
            Map<String, dynamic> json) =>
        CatalogCustomAttributeDefinitionSelectionConfig(
          allowedSelections: (json['allowed_selections'] as List<dynamic>?)
              ?.map((e) =>
                  CatalogCustomAttributeDefinitionSelectionConfigCustomAttributeSelection
                      .fromJson(e as Map<String, dynamic>))
              .toList(),
          maxAllowedSelections: json['max_allowed_selections'] as int?,
        );

Map<String, dynamic> _$CatalogCustomAttributeDefinitionSelectionConfigToJson(
    CatalogCustomAttributeDefinitionSelectionConfig instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('allowed_selections', instance.allowedSelections);
  writeNotNull('max_allowed_selections', instance.maxAllowedSelections);
  return val;
}

CatalogCustomAttributeDefinitionSelectionConfigCustomAttributeSelection
    _$CatalogCustomAttributeDefinitionSelectionConfigCustomAttributeSelectionFromJson(
            Map<String, dynamic> json) =>
        CatalogCustomAttributeDefinitionSelectionConfigCustomAttributeSelection(
          name: json['name'] as String?,
          uid: json['uid'] as String?,
        );

Map<String, dynamic>
    _$CatalogCustomAttributeDefinitionSelectionConfigCustomAttributeSelectionToJson(
        CatalogCustomAttributeDefinitionSelectionConfigCustomAttributeSelection
            instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  writeNotNull('uid', instance.uid);
  return val;
}

CatalogCustomAttributeDefinitionNumberConfig
    _$CatalogCustomAttributeDefinitionNumberConfigFromJson(
            Map<String, dynamic> json) =>
        CatalogCustomAttributeDefinitionNumberConfig(
          precision: json['precision'] as int?,
        );

Map<String, dynamic> _$CatalogCustomAttributeDefinitionNumberConfigToJson(
    CatalogCustomAttributeDefinitionNumberConfig instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('precision', instance.precision);
  return val;
}

CatalogCategory _$CatalogCategoryFromJson(Map<String, dynamic> json) =>
    CatalogCategory(
      name: json['name'] as String?,
      imageIds: (json['image_ids'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$CatalogCategoryToJson(CatalogCategory instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('image_ids', instance.imageIds);
  writeNotNull('name', instance.name);
  return val;
}

CatalogV1Id _$CatalogV1IdFromJson(Map<String, dynamic> json) => CatalogV1Id(
      locationId: json['location_id'] as String?,
      catalogV1Id: json['catalog_v1_id'] as String?,
    );

Map<String, dynamic> _$CatalogV1IdToJson(CatalogV1Id instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('catalog_v1_id', instance.catalogV1Id);
  writeNotNull('location_id', instance.locationId);
  return val;
}

CatalogInfoResponseLimits _$CatalogInfoResponseLimitsFromJson(
        Map<String, dynamic> json) =>
    CatalogInfoResponseLimits(
      batchDeleteMaxObjectIds: json['batch_delete_max_object_ids'] as int?,
      batchRetrieveMaxObjectIds: json['batch_retrieve_max_object_ids'] as int?,
      batchUpsertMaxObjectsPerBatch:
          json['batch_upsert_max_objects_per_batch'] as int?,
      batchUpsertMaxTotalObjects:
          json['batch_upsert_max_total_objects'] as int?,
      searchMaxPageLimit: json['search_max_page_limit'] as int?,
      updateItemModifierListsMaxModifierListsToDisable:
          json['update_item_modifier_lists_max_modifier_lists_to_disable']
              as int?,
      updateItemModifierListsMaxModifierListsToEnable:
          json['update_item_modifier_lists_max_modifier_lists_to_enable']
              as int?,
      updateItemTaxesMaxTaxesToDisable:
          json['update_item_taxes_max_taxes_to_disable'] as int?,
      updateItemTaxesMaxTaxesToEnable:
          json['update_item_taxes_max_taxes_to_enable'] as int?,
    );

Map<String, dynamic> _$CatalogInfoResponseLimitsToJson(
    CatalogInfoResponseLimits instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('batch_delete_max_object_ids', instance.batchDeleteMaxObjectIds);
  writeNotNull(
      'batch_retrieve_max_object_ids', instance.batchRetrieveMaxObjectIds);
  writeNotNull('batch_upsert_max_objects_per_batch',
      instance.batchUpsertMaxObjectsPerBatch);
  writeNotNull(
      'batch_upsert_max_total_objects', instance.batchUpsertMaxTotalObjects);
  writeNotNull('search_max_page_limit', instance.searchMaxPageLimit);
  writeNotNull('update_item_modifier_lists_max_modifier_lists_to_disable',
      instance.updateItemModifierListsMaxModifierListsToDisable);
  writeNotNull('update_item_modifier_lists_max_modifier_lists_to_enable',
      instance.updateItemModifierListsMaxModifierListsToEnable);
  writeNotNull('update_item_taxes_max_taxes_to_disable',
      instance.updateItemTaxesMaxTaxesToDisable);
  writeNotNull('update_item_taxes_max_taxes_to_enable',
      instance.updateItemTaxesMaxTaxesToEnable);
  return val;
}

StandardUnitDescriptionGroup _$StandardUnitDescriptionGroupFromJson(
        Map<String, dynamic> json) =>
    StandardUnitDescriptionGroup(
      languageCode: json['language_code'] as String?,
      standardUnitDescriptions:
          (json['standard_unit_descriptions'] as List<dynamic>?)
              ?.map((e) =>
                  StandardUnitDescription.fromJson(e as Map<String, dynamic>))
              .toList(),
    );

Map<String, dynamic> _$StandardUnitDescriptionGroupToJson(
    StandardUnitDescriptionGroup instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('language_code', instance.languageCode);
  writeNotNull('standard_unit_descriptions', instance.standardUnitDescriptions);
  return val;
}

StandardUnitDescription _$StandardUnitDescriptionFromJson(
        Map<String, dynamic> json) =>
    StandardUnitDescription(
      name: json['name'] as String?,
      abbreviation: json['abbreviation'] as String?,
      unit: json['unit'] == null
          ? null
          : MeasurementUnit.fromJson(json['unit'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$StandardUnitDescriptionToJson(
    StandardUnitDescription instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('abbreviation', instance.abbreviation);
  writeNotNull('name', instance.name);
  writeNotNull('unit', instance.unit);
  return val;
}

CatalogIdMapping _$CatalogIdMappingFromJson(Map<String, dynamic> json) =>
    CatalogIdMapping(
      clientObjectId: json['client_object_id'] as String?,
      objectId: json['object_id'] as String?,
    );

Map<String, dynamic> _$CatalogIdMappingToJson(CatalogIdMapping instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('client_object_id', instance.clientObjectId);
  writeNotNull('object_id', instance.objectId);
  return val;
}

CatalogQuery _$CatalogQueryFromJson(Map<String, dynamic> json) => CatalogQuery(
      exactQuery: json['exact_query'] == null
          ? null
          : CatalogQueryExact.fromJson(
              json['exact_query'] as Map<String, dynamic>),
      itemsForItemOptionsQuery: json['items_for_item_options_query'] == null
          ? null
          : CatalogQueryItemsForItemOptions.fromJson(
              json['items_for_item_options_query'] as Map<String, dynamic>),
      itemsForModifierListQuery: json['items_for_modifier_list_query'] == null
          ? null
          : CatalogQueryItemsForModifierList.fromJson(
              json['items_for_modifier_list_query'] as Map<String, dynamic>),
      itemsForTaxQuery: json['items_for_tax_query'] == null
          ? null
          : CatalogQueryItemsForTax.fromJson(
              json['items_for_tax_query'] as Map<String, dynamic>),
      itemVariationsForItemOptionValuesQuery:
          json['item_variations_for_item_option_values_query'] == null
              ? null
              : CatalogQueryItemVariationsForItemOptionValues.fromJson(
                  json['item_variations_for_item_option_values_query']
                      as Map<String, dynamic>),
      prefixQuery: json['prefix_query'] == null
          ? null
          : CatalogQueryPrefix.fromJson(
              json['prefix_query'] as Map<String, dynamic>),
      rangeQuery: json['range_query'] == null
          ? null
          : CatalogQueryRange.fromJson(
              json['range_query'] as Map<String, dynamic>),
      setQuery: json['set_query'] == null
          ? null
          : CatalogQuerySet.fromJson(json['set_query'] as Map<String, dynamic>),
      sortedAttributeQuery: json['sorted_attribute_query'] == null
          ? null
          : CatalogQuerySortedAttribute.fromJson(
              json['sorted_attribute_query'] as Map<String, dynamic>),
      textQuery: json['text_query'] == null
          ? null
          : CatalogQueryText.fromJson(
              json['text_query'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CatalogQueryToJson(CatalogQuery instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('exact_query', instance.exactQuery);
  writeNotNull('item_variations_for_item_option_values_query',
      instance.itemVariationsForItemOptionValuesQuery);
  writeNotNull(
      'items_for_item_options_query', instance.itemsForItemOptionsQuery);
  writeNotNull(
      'items_for_modifier_list_query', instance.itemsForModifierListQuery);
  writeNotNull('items_for_tax_query', instance.itemsForTaxQuery);
  writeNotNull('prefix_query', instance.prefixQuery);
  writeNotNull('range_query', instance.rangeQuery);
  writeNotNull('set_query', instance.setQuery);
  writeNotNull('sorted_attribute_query', instance.sortedAttributeQuery);
  writeNotNull('text_query', instance.textQuery);
  return val;
}

CatalogQueryText _$CatalogQueryTextFromJson(Map<String, dynamic> json) =>
    CatalogQueryText(
      keywords: (json['keywords'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$CatalogQueryTextToJson(CatalogQueryText instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('keywords', instance.keywords);
  return val;
}

CatalogQuerySortedAttribute _$CatalogQuerySortedAttributeFromJson(
        Map<String, dynamic> json) =>
    CatalogQuerySortedAttribute(
      attributeName: json['attribute_name'] as String?,
      initialAttributeValue: json['initial_attribute_value'] as String?,
      sortOrder: $enumDecodeNullable(_$SortOrderEnumMap, json['sort_order']),
    );

Map<String, dynamic> _$CatalogQuerySortedAttributeToJson(
    CatalogQuerySortedAttribute instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('attribute_name', instance.attributeName);
  writeNotNull('initial_attribute_value', instance.initialAttributeValue);
  writeNotNull('sort_order', _$SortOrderEnumMap[instance.sortOrder]);
  return val;
}

CatalogQuerySet _$CatalogQuerySetFromJson(Map<String, dynamic> json) =>
    CatalogQuerySet(
      attributeName: json['attribute_name'] as String?,
      attributeValues: (json['attribute_values'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$CatalogQuerySetToJson(CatalogQuerySet instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('attribute_name', instance.attributeName);
  writeNotNull('attribute_values', instance.attributeValues);
  return val;
}

CatalogQueryRange _$CatalogQueryRangeFromJson(Map<String, dynamic> json) =>
    CatalogQueryRange(
      attributeName: json['attribute_name'] as String?,
      attributeMaxValue: json['attribute_max_value'] as int?,
      attributeMinValue: json['attribute_min_value'] as int?,
    );

Map<String, dynamic> _$CatalogQueryRangeToJson(CatalogQueryRange instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('attribute_name', instance.attributeName);
  writeNotNull('attribute_max_value', instance.attributeMaxValue);
  writeNotNull('attribute_min_value', instance.attributeMinValue);
  return val;
}

CatalogQueryPrefix _$CatalogQueryPrefixFromJson(Map<String, dynamic> json) =>
    CatalogQueryPrefix(
      attributeName: json['attribute_name'] as String?,
      attributePrefix: json['attribute_prefix'] as String?,
    );

Map<String, dynamic> _$CatalogQueryPrefixToJson(CatalogQueryPrefix instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('attribute_name', instance.attributeName);
  writeNotNull('attribute_prefix', instance.attributePrefix);
  return val;
}

CatalogQueryItemsForTax _$CatalogQueryItemsForTaxFromJson(
        Map<String, dynamic> json) =>
    CatalogQueryItemsForTax(
      taxIds:
          (json['tax_ids'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$CatalogQueryItemsForTaxToJson(
    CatalogQueryItemsForTax instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('tax_ids', instance.taxIds);
  return val;
}

CatalogQueryItemsForModifierList _$CatalogQueryItemsForModifierListFromJson(
        Map<String, dynamic> json) =>
    CatalogQueryItemsForModifierList(
      modifierListIds: (json['modifier_list_ids'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$CatalogQueryItemsForModifierListToJson(
    CatalogQueryItemsForModifierList instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('modifier_list_ids', instance.modifierListIds);
  return val;
}

CatalogQueryItemsForItemOptions _$CatalogQueryItemsForItemOptionsFromJson(
        Map<String, dynamic> json) =>
    CatalogQueryItemsForItemOptions(
      itemOptionIds: (json['item_option_ids'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$CatalogQueryItemsForItemOptionsToJson(
    CatalogQueryItemsForItemOptions instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('item_option_ids', instance.itemOptionIds);
  return val;
}

CatalogQueryItemVariationsForItemOptionValues
    _$CatalogQueryItemVariationsForItemOptionValuesFromJson(
            Map<String, dynamic> json) =>
        CatalogQueryItemVariationsForItemOptionValues(
          itemOptionValueIds: (json['item_option_value_ids'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList(),
        );

Map<String, dynamic> _$CatalogQueryItemVariationsForItemOptionValuesToJson(
    CatalogQueryItemVariationsForItemOptionValues instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('item_option_value_ids', instance.itemOptionValueIds);
  return val;
}

CatalogQueryExact _$CatalogQueryExactFromJson(Map<String, dynamic> json) =>
    CatalogQueryExact(
      attributeName: json['attribute_name'] as String?,
      attributeValue: json['attribute_value'] as String?,
    );

Map<String, dynamic> _$CatalogQueryExactToJson(CatalogQueryExact instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('attribute_name', instance.attributeName);
  writeNotNull('attribute_value', instance.attributeValue);
  return val;
}

CatalogResponse _$CatalogResponseFromJson(Map<String, dynamic> json) =>
    CatalogResponse(
      cursor: json['cursor'] as String?,
      errors: (json['errors'] as List<dynamic>?)
          ?.map((e) => SquareError.fromJson(e as Map<String, dynamic>))
          .toList(),
      latestTime: json['latest_time'] as String?,
      objects: (json['objects'] as List<dynamic>?)
          ?.map((e) => CatalogObject.fromJson(e as Map<String, dynamic>))
          .toList(),
      relatedObjects: (json['related_objects'] as List<dynamic>?)
          ?.map((e) => CatalogObject.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CatalogResponseToJson(CatalogResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('errors', instance.errors);
  writeNotNull('cursor', instance.cursor);
  writeNotNull('objects', instance.objects);
  writeNotNull('related_objects', instance.relatedObjects);
  writeNotNull('latest_time', instance.latestTime);
  return val;
}

InventoryAdjustment _$InventoryAdjustmentFromJson(Map<String, dynamic> json) =>
    InventoryAdjustment(
      locationId: json['location_id'] as String?,
      id: json['id'] as String?,
      createdAt: json['created_at'] as String?,
      source: json['source'] == null
          ? null
          : SourceApplication.fromJson(json['source'] as Map<String, dynamic>),
      totalPriceMoney: json['total_price_money'] == null
          ? null
          : Money.fromJson(json['total_price_money'] as Map<String, dynamic>),
      catalogObjectId: json['catalog_object_id'] as String?,
      referenceId: json['reference_id'] as String?,
      quantity: json['quantity'] as String?,
      transactionId: json['transaction_id'] as String?,
      refundId: json['refund_id'] as String?,
      employeeId: json['employee_id'] as String?,
      adjustmentGroup: json['adjustment_group'] == null
          ? null
          : InventoryAdjustmentGroup.fromJson(
              json['adjustment_group'] as Map<String, dynamic>),
      catalogObjectType: json['catalog_object_type'] as String?,
      fromState: json['from_state'] as String?,
      goodsReceiptId: json['goods_receipt_id'] as String?,
      occurredAt: json['occurred_at'] as String?,
      purchaseOrderId: json['purchase_order_id'] as String?,
      toState: json['to_state'] as String?,
    );

Map<String, dynamic> _$InventoryAdjustmentToJson(InventoryAdjustment instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('adjustment_group', instance.adjustmentGroup);
  writeNotNull('catalog_object_id', instance.catalogObjectId);
  writeNotNull('catalog_object_type', instance.catalogObjectType);
  writeNotNull('created_at', instance.createdAt);
  writeNotNull('employee_id', instance.employeeId);
  writeNotNull('from_state', instance.fromState);
  writeNotNull('goods_receipt_id', instance.goodsReceiptId);
  writeNotNull('location_id', instance.locationId);
  writeNotNull('occurred_at', instance.occurredAt);
  writeNotNull('purchase_order_id', instance.purchaseOrderId);
  writeNotNull('quantity', instance.quantity);
  writeNotNull('reference_id', instance.referenceId);
  writeNotNull('refund_id', instance.refundId);
  writeNotNull('source', instance.source);
  writeNotNull('to_state', instance.toState);
  writeNotNull('total_price_money', instance.totalPriceMoney);
  writeNotNull('transaction_id', instance.transactionId);
  return val;
}

InventoryAdjustmentGroup _$InventoryAdjustmentGroupFromJson(
        Map<String, dynamic> json) =>
    InventoryAdjustmentGroup(
      toState: $enumDecodeNullable(_$InventoryStateEnumMap, json['to_state']),
      fromState:
          $enumDecodeNullable(_$InventoryStateEnumMap, json['from_state']),
      id: json['id'] as String?,
      rootAdjustmentId: json['root_adjustment_id'] as String?,
    );

Map<String, dynamic> _$InventoryAdjustmentGroupToJson(
    InventoryAdjustmentGroup instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('from_state', _$InventoryStateEnumMap[instance.fromState]);
  writeNotNull('root_adjustment_id', instance.rootAdjustmentId);
  writeNotNull('to_state', _$InventoryStateEnumMap[instance.toState]);
  return val;
}

const _$InventoryStateEnumMap = {
  InventoryState.CUSTOM: 'CUSTOM',
  InventoryState.IN_STOCK: 'IN_STOCK',
  InventoryState.SOLD: 'SOLD',
  InventoryState.RETURNED_BY_CUSTOMER: 'RETURNED_BY_CUSTOMER',
  InventoryState.RESERVED_FOR_SALE: 'RESERVED_FOR_SALE',
  InventoryState.SOLD_ONLINE: 'SOLD_ONLINE',
  InventoryState.ORDERED_FROM_VENDOR: 'ORDERED_FROM_VENDOR',
  InventoryState.RECEIVED_FROM_VENDOR: 'RECEIVED_FROM_VENDOR',
  InventoryState.IN_TRANSIT_TO: 'IN_TRANSIT_TO',
  InventoryState.NONE: 'NONE',
  InventoryState.WASTE: 'WASTE',
  InventoryState.UNLINKED_RETURN: 'UNLINKED_RETURN',
  InventoryState.COMPOSED: 'COMPOSED',
  InventoryState.DECOMPOSED: 'DECOMPOSED',
  InventoryState.SUPPORTED_BY_NEWER_VERSION: 'SUPPORTED_BY_NEWER_VERSION',
};

InventoryPhysicalCount _$InventoryPhysicalCountFromJson(
        Map<String, dynamic> json) =>
    InventoryPhysicalCount(
      id: json['id'] as String?,
      occurredAt: json['occurred_at'] as String?,
      catalogObjectType: json['catalog_object_type'] as String?,
      employeeId: json['employee_id'] as String?,
      quantity: json['quantity'] as String?,
      referenceId: json['reference_id'] as String?,
      catalogObjectId: json['catalog_object_id'] as String?,
      source: json['source'] == null
          ? null
          : SourceApplication.fromJson(json['source'] as Map<String, dynamic>),
      createdAt: json['created_at'] as String?,
      locationId: json['location_id'] as String?,
      state: $enumDecodeNullable(_$InventoryStateEnumMap, json['state']),
    );

Map<String, dynamic> _$InventoryPhysicalCountToJson(
    InventoryPhysicalCount instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('catalog_object_id', instance.catalogObjectId);
  writeNotNull('catalog_object_type', instance.catalogObjectType);
  writeNotNull('created_at', instance.createdAt);
  writeNotNull('employee_id', instance.employeeId);
  writeNotNull('location_id', instance.locationId);
  writeNotNull('occurred_at', instance.occurredAt);
  writeNotNull('quantity', instance.quantity);
  writeNotNull('reference_id', instance.referenceId);
  writeNotNull('source', instance.source);
  writeNotNull('state', _$InventoryStateEnumMap[instance.state]);
  return val;
}

InventoryTransfer _$InventoryTransferFromJson(Map<String, dynamic> json) =>
    InventoryTransfer(
      state: $enumDecodeNullable(_$InventoryStateEnumMap, json['state']),
      createdAt: json['created_at'] as String?,
      source: json['source'] == null
          ? null
          : SourceApplication.fromJson(json['source'] as Map<String, dynamic>),
      catalogObjectId: json['catalog_object_id'] as String?,
      referenceId: json['reference_id'] as String?,
      quantity: json['quantity'] as String?,
      employeeId: json['employee_id'] as String?,
      catalogObjectType: json['catalog_object_type'] as String?,
      occurredAt: json['occurred_at'] as String?,
      id: json['id'] as String?,
      fromLocationId: json['from_location_id'] as String?,
      toLocationId: json['to_location_id'] as String?,
    );

Map<String, dynamic> _$InventoryTransferToJson(InventoryTransfer instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('catalog_object_id', instance.catalogObjectId);
  writeNotNull('catalog_object_type', instance.catalogObjectType);
  writeNotNull('created_at', instance.createdAt);
  writeNotNull('employee_id', instance.employeeId);
  writeNotNull('from_location_id', instance.fromLocationId);
  writeNotNull('occurred_at', instance.occurredAt);
  writeNotNull('quantity', instance.quantity);
  writeNotNull('reference_id', instance.referenceId);
  writeNotNull('source', instance.source);
  writeNotNull('state', _$InventoryStateEnumMap[instance.state]);
  writeNotNull('to_location_id', instance.toLocationId);
  return val;
}

InventoryChange _$InventoryChangeFromJson(Map<String, dynamic> json) =>
    InventoryChange(
      type: $enumDecodeNullable(_$InventoryChangeTypeEnumMap, json['type']),
      measurementUnitId: json['measurement_unit_id'] as String?,
      measurementUnit: json['measurement_unit'] == null
          ? null
          : CatalogMeasurementUnit.fromJson(
              json['measurement_unit'] as Map<String, dynamic>),
      adjustment: json['adjustment'] == null
          ? null
          : InventoryAdjustment.fromJson(
              json['adjustment'] as Map<String, dynamic>),
      physicalCount: json['physical_count'] == null
          ? null
          : InventoryPhysicalCount.fromJson(
              json['physical_count'] as Map<String, dynamic>),
      transfer: json['transfer'] == null
          ? null
          : InventoryTransfer.fromJson(
              json['transfer'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$InventoryChangeToJson(InventoryChange instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('adjustment', instance.adjustment);
  writeNotNull('measurement_unit', instance.measurementUnit);
  writeNotNull('measurement_unit_id', instance.measurementUnitId);
  writeNotNull('physical_count', instance.physicalCount);
  writeNotNull('transfer', instance.transfer);
  writeNotNull('type', _$InventoryChangeTypeEnumMap[instance.type]);
  return val;
}

const _$InventoryChangeTypeEnumMap = {
  InventoryChangeType.PHYSICAL_COUNT: 'PHYSICAL_COUNT',
  InventoryChangeType.ADJUSTMENT: 'ADJUSTMENT',
  InventoryChangeType.TRANSFER: 'TRANSFER',
};

Customer _$CustomerFromJson(Map<String, dynamic> json) => Customer(
      id: json['id'] as String?,
      referenceId: json['reference_id'] as String?,
      createdAt: json['created_at'] as String?,
      taxIds: json['tax_ids'] == null
          ? null
          : CustomerTaxIds.fromJson(json['tax_ids'] as Map<String, dynamic>),
      version: json['version'] as int?,
      updatedAt: json['updated_at'] as String?,
      familyName: json['family_name'] as String?,
      givenName: json['given_name'] as String?,
      companyName: json['company_name'] as String?,
      phoneNumber: json['phone_number'] as String?,
      address: json['address'] == null
          ? null
          : Address.fromJson(json['address'] as Map<String, dynamic>),
      emailAddress: json['email_address'] as String?,
      note: json['note'] as String?,
      preferences: json['preferences'] == null
          ? null
          : CustomerPreferences.fromJson(
              json['preferences'] as Map<String, dynamic>),
      birthday: json['birthday'] as String?,
      cards: (json['cards'] as List<dynamic>?)
          ?.map((e) => Card.fromJson(e as Map<String, dynamic>))
          .toList(),
      creationSource: $enumDecodeNullable(
          _$CustomerCreationSourceEnumMap, json['creation_source']),
      groupIds: (json['group_ids'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      nickname: json['nickname'] as String?,
      segmentIds: (json['segment_ids'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$CustomerToJson(Customer instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('address', instance.address);
  writeNotNull('birthday', instance.birthday);
  writeNotNull('company_name', instance.companyName);
  writeNotNull('created_at', instance.createdAt);
  writeNotNull('creation_source',
      _$CustomerCreationSourceEnumMap[instance.creationSource]);
  writeNotNull('email_address', instance.emailAddress);
  writeNotNull('family_name', instance.familyName);
  writeNotNull('given_name', instance.givenName);
  writeNotNull('group_ids', instance.groupIds);
  writeNotNull('nickname', instance.nickname);
  writeNotNull('note', instance.note);
  writeNotNull('phone_number', instance.phoneNumber);
  writeNotNull('preferences', instance.preferences);
  writeNotNull('reference_id', instance.referenceId);
  writeNotNull('segment_ids', instance.segmentIds);
  writeNotNull('tax_ids', instance.taxIds);
  writeNotNull('updated_at', instance.updatedAt);
  writeNotNull('version', instance.version);
  writeNotNull('cards', instance.cards);
  return val;
}

const _$CustomerCreationSourceEnumMap = {
  CustomerCreationSource.OTHER: 'OTHER',
  CustomerCreationSource.APPOINTMENTS: 'APPOINTMENTS',
  CustomerCreationSource.COUPON: 'COUPON',
  CustomerCreationSource.DELETION_RECOVERY: 'DELETION_RECOVERY',
  CustomerCreationSource.DIRECTORY: 'DIRECTORY',
  CustomerCreationSource.EGIFTING: 'EGIFTING',
  CustomerCreationSource.EMAIL_COLLECTION: 'EMAIL_COLLECTION',
  CustomerCreationSource.FEEDBACK: 'FEEDBACK',
  CustomerCreationSource.IMPORT: 'IMPORT',
  CustomerCreationSource.INVOICES: 'INVOICES',
  CustomerCreationSource.LOYALTY: 'LOYALTY',
  CustomerCreationSource.MARKETING: 'MARKETING',
  CustomerCreationSource.MERGE: 'MERGE',
  CustomerCreationSource.ONLINE_STORE: 'ONLINE_STORE',
  CustomerCreationSource.INSTANT_PROFILE: 'INSTANT_PROFILE',
  CustomerCreationSource.TERMINAL: 'TERMINAL',
  CustomerCreationSource.THIRD_PARTY: 'THIRD_PARTY',
  CustomerCreationSource.THIRD_PARTY_IMPORT: 'THIRD_PARTY_IMPORT',
  CustomerCreationSource.UNMERGE_RECOVERY: 'UNMERGE_RECOVERY',
};

CustomerTaxIds _$CustomerTaxIdsFromJson(Map<String, dynamic> json) =>
    CustomerTaxIds(
      euVat: json['eu_vat'] as String?,
    );

Map<String, dynamic> _$CustomerTaxIdsToJson(CustomerTaxIds instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('eu_vat', instance.euVat);
  return val;
}

CustomerPreferences _$CustomerPreferencesFromJson(Map<String, dynamic> json) =>
    CustomerPreferences(
      emailUnsubscribed: json['email_unsubscribed'] as bool?,
    );

Map<String, dynamic> _$CustomerPreferencesToJson(CustomerPreferences instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('email_unsubscribed', instance.emailUnsubscribed);
  return val;
}

CustomerQuery _$CustomerQueryFromJson(Map<String, dynamic> json) =>
    CustomerQuery(
      groupIds: json['group_ids'] == null
          ? null
          : FilterValue.fromJson(json['group_ids'] as Map<String, dynamic>),
      creationSource: json[' creation_source'] == null
          ? null
          : CustomerCreationSourceFilter.fromJson(
              json[' creation_source'] as Map<String, dynamic>),
      emailAddress: json['email_address'] == null
          ? null
          : CustomerTextFilter.fromJson(
              json['email_address'] as Map<String, dynamic>),
      phoneNumber: json['phone_number'] == null
          ? null
          : CustomerTextFilter.fromJson(
              json['phone_number'] as Map<String, dynamic>),
      createdAt: json['created_at'] == null
          ? null
          : TimeRange.fromJson(json['created_at'] as Map<String, dynamic>),
      referenceId: json['reference_id'] == null
          ? null
          : CustomerTextFilter.fromJson(
              json['reference_id'] as Map<String, dynamic>),
      updated_at: json['updated_at'] == null
          ? null
          : TimeRange.fromJson(json['updated_at'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CustomerQueryToJson(CustomerQuery instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('created_at', instance.createdAt);
  writeNotNull(' creation_source', instance.creationSource);
  writeNotNull('email_address', instance.emailAddress);
  writeNotNull('group_ids', instance.groupIds);
  writeNotNull('phone_number', instance.phoneNumber);
  writeNotNull('reference_id', instance.referenceId);
  writeNotNull('updated_at', instance.updated_at);
  return val;
}

FilterValue _$FilterValueFromJson(Map<String, dynamic> json) => FilterValue(
      all: (json['all'] as List<dynamic>?)?.map((e) => e as String).toList(),
      any: (json['any'] as List<dynamic>?)?.map((e) => e as String).toList(),
      none: (json['none'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$FilterValueToJson(FilterValue instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('all', instance.all);
  writeNotNull('any', instance.any);
  writeNotNull('none', instance.none);
  return val;
}

CustomerTextFilter _$CustomerTextFilterFromJson(Map<String, dynamic> json) =>
    CustomerTextFilter(
      exact: json['exact'] as String?,
      fuzzy: json['fuzzy'] as String?,
    );

Map<String, dynamic> _$CustomerTextFilterToJson(CustomerTextFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('exact', instance.exact);
  writeNotNull('fuzzy', instance.fuzzy);
  return val;
}

CustomerCreationSourceFilter _$CustomerCreationSourceFilterFromJson(
        Map<String, dynamic> json) =>
    CustomerCreationSourceFilter(
      values: (json['values'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$CustomerCreationSourceEnumMap, e))
          .toList(),
      rule: $enumDecodeNullable(
          _$CustomerInclusionExclusionEnumMap, json['rule']),
    );

Map<String, dynamic> _$CustomerCreationSourceFilterToJson(
    CustomerCreationSourceFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('rule', _$CustomerInclusionExclusionEnumMap[instance.rule]);
  writeNotNull('values',
      instance.values?.map((e) => _$CustomerCreationSourceEnumMap[e]).toList());
  return val;
}

const _$CustomerInclusionExclusionEnumMap = {
  CustomerInclusionExclusion.INCLUDE: 'INCLUDE',
  CustomerInclusionExclusion.EXCLUDE: 'EXCLUDE',
};

TimeRange _$TimeRangeFromJson(Map<String, dynamic> json) => TimeRange(
      endAt: json['end_at'] as String?,
      startAt: json['start_at'] as String?,
    );

Map<String, dynamic> _$TimeRangeToJson(TimeRange instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('end_at', instance.endAt);
  writeNotNull('start_at', instance.startAt);
  return val;
}

CustomerFilter _$CustomerFilterFromJson(Map<String, dynamic> json) =>
    CustomerFilter(
      referenceId: json['reference_id'] == null
          ? null
          : CustomerTextFilter.fromJson(
              json['reference_id'] as Map<String, dynamic>),
      createdAt: json['created_at'] == null
          ? null
          : TimeRange.fromJson(json['created_at'] as Map<String, dynamic>),
      phoneNumber: json['phone_number'] == null
          ? null
          : CustomerTextFilter.fromJson(
              json['phone_number'] as Map<String, dynamic>),
      emailAddress: json['email_address'] == null
          ? null
          : CustomerTextFilter.fromJson(
              json['email_address'] as Map<String, dynamic>),
      creationSource: json['creation_source'] == null
          ? null
          : CustomerCreationSourceFilter.fromJson(
              json['creation_source'] as Map<String, dynamic>),
      groupIds: json['group_ids'] == null
          ? null
          : FilterValue.fromJson(json['group_ids'] as Map<String, dynamic>),
      updatedAt: json['updated_at'] == null
          ? null
          : TimeRange.fromJson(json['updated_at'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CustomerFilterToJson(CustomerFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('created_at', instance.createdAt);
  writeNotNull('creation_source', instance.creationSource);
  writeNotNull('email_address', instance.emailAddress);
  writeNotNull('group_ids', instance.groupIds);
  writeNotNull('phone_number', instance.phoneNumber);
  writeNotNull('reference_id', instance.referenceId);
  writeNotNull('updated_at', instance.updatedAt);
  return val;
}

CustomerSort _$CustomerSortFromJson(Map<String, dynamic> json) => CustomerSort(
      order: $enumDecodeNullable(_$SortOrderEnumMap, json['order']),
      field: $enumDecodeNullable(_$CustomerSortFieldEnumMap, json['field']),
    );

Map<String, dynamic> _$CustomerSortToJson(CustomerSort instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('field', _$CustomerSortFieldEnumMap[instance.field]);
  writeNotNull('order', _$SortOrderEnumMap[instance.order]);
  return val;
}

const _$CustomerSortFieldEnumMap = {
  CustomerSortField.DEFAULT: 'DEFAULT',
  CustomerSortField.CREATED_AT: 'CREATED_AT',
};

CustomerGroup _$CustomerGroupFromJson(Map<String, dynamic> json) =>
    CustomerGroup(
      updatedAt: json['updated_at'] as String?,
      createdAt: json['created_at'] as String?,
      id: json['id'] as String?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$CustomerGroupToJson(CustomerGroup instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('name', instance.name);
  writeNotNull('created_at', instance.createdAt);
  writeNotNull('updated_at', instance.updatedAt);
  return val;
}

CustomerSegment _$CustomerSegmentFromJson(Map<String, dynamic> json) =>
    CustomerSegment(
      name: json['name'] as String?,
      id: json['id'] as String?,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
    );

Map<String, dynamic> _$CustomerSegmentToJson(CustomerSegment instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('name', instance.name);
  writeNotNull('created_at', instance.createdAt);
  writeNotNull('updated_at', instance.updatedAt);
  return val;
}

LoyaltyAccount _$LoyaltyAccountFromJson(Map<String, dynamic> json) =>
    LoyaltyAccount(
      updatedAt: json['updated_at'] as String?,
      createdAt: json['created_at'] as String?,
      id: json['id'] as String?,
      customerId: json['customer_id'] as String?,
      balance: json['balance'] as int?,
      enrolledAt: json['enrolled_at'] as String?,
      expiringPointDeadlines:
          (json['expiring_point_deadlines'] as List<dynamic>?)
              ?.map((e) => LoyaltyAccountExpiringPointDeadline.fromJson(
                  e as Map<String, dynamic>))
              .toList(),
      lifetimePoints: json['lifetime_points'] as int?,
      mapping: json['mapping'] == null
          ? null
          : LoyaltyAccountMapping.fromJson(
              json['mapping'] as Map<String, dynamic>),
      programId: json['program_id'] as String?,
    );

Map<String, dynamic> _$LoyaltyAccountToJson(LoyaltyAccount instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('program_id', instance.programId);
  writeNotNull('balance', instance.balance);
  writeNotNull('created_at', instance.createdAt);
  writeNotNull('customer_id', instance.customerId);
  writeNotNull('enrolled_at', instance.enrolledAt);
  writeNotNull('expiring_point_deadlines', instance.expiringPointDeadlines);
  writeNotNull('lifetime_points', instance.lifetimePoints);
  writeNotNull('mapping', instance.mapping);
  writeNotNull('updated_at', instance.updatedAt);
  return val;
}

LoyaltyAccountMapping _$LoyaltyAccountMappingFromJson(
        Map<String, dynamic> json) =>
    LoyaltyAccountMapping(
      id: json['id'] as String?,
      createdAt: json['created_at'] as String?,
      phoneNumber: json['phone_number'] as String?,
    );

Map<String, dynamic> _$LoyaltyAccountMappingToJson(
    LoyaltyAccountMapping instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('created_at', instance.createdAt);
  writeNotNull('phone_number', instance.phoneNumber);
  return val;
}

LoyaltyAccountExpiringPointDeadline
    _$LoyaltyAccountExpiringPointDeadlineFromJson(Map<String, dynamic> json) =>
        LoyaltyAccountExpiringPointDeadline(
          expiresAt: json['expires_at'] as String?,
          points: json['points'] as int?,
        );

Map<String, dynamic> _$LoyaltyAccountExpiringPointDeadlineToJson(
    LoyaltyAccountExpiringPointDeadline instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('expires_at', instance.expiresAt);
  writeNotNull('points', instance.points);
  return val;
}

SearchLoyaltyAccountsRequestLoyaltyAccountQuery
    _$SearchLoyaltyAccountsRequestLoyaltyAccountQueryFromJson(
            Map<String, dynamic> json) =>
        SearchLoyaltyAccountsRequestLoyaltyAccountQuery(
          customerIds: (json['customer_ids'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList(),
          mappings: (json['mappings'] as List<dynamic>?)
              ?.map((e) =>
                  LoyaltyAccountMapping.fromJson(e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$SearchLoyaltyAccountsRequestLoyaltyAccountQueryToJson(
    SearchLoyaltyAccountsRequestLoyaltyAccountQuery instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('customer_ids', instance.customerIds);
  writeNotNull('mappings', instance.mappings);
  return val;
}

LoyaltyProgram _$LoyaltyProgramFromJson(Map<String, dynamic> json) =>
    LoyaltyProgram(
      createdAt: json['created_at'] as String?,
      id: json['id'] as String?,
      updatedAt: json['updated_at'] as String?,
      locationIds: (json['location_ids'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      status:
          $enumDecodeNullable(_$LoyaltyProgramStatusEnumMap, json['status']),
      accrualRules: (json['accrual_rules'] as List<dynamic>?)
          ?.map((e) =>
              LoyaltyProgramAccrualRule.fromJson(e as Map<String, dynamic>))
          .toList(),
      expirationPolicy: json['expiration_policy'] == null
          ? null
          : LoyaltyProgramExpirationPolicy.fromJson(
              json['expiration_policy'] as Map<String, dynamic>),
      rewardTiers: (json['reward_tiers'] as List<dynamic>?)
          ?.map((e) =>
              LoyaltyProgramRewardTier.fromJson(e as Map<String, dynamic>))
          .toList(),
      terminology: json['terminology'] == null
          ? null
          : LoyaltyProgramTerminology.fromJson(
              json['terminology'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$LoyaltyProgramToJson(LoyaltyProgram instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('accrual_rules', instance.accrualRules);
  writeNotNull('created_at', instance.createdAt);
  writeNotNull('location_ids', instance.locationIds);
  writeNotNull('reward_tiers', instance.rewardTiers);
  writeNotNull('status', _$LoyaltyProgramStatusEnumMap[instance.status]);
  writeNotNull('terminology', instance.terminology);
  writeNotNull('updated_at', instance.updatedAt);
  writeNotNull('expiration_policy', instance.expirationPolicy);
  return val;
}

const _$LoyaltyProgramStatusEnumMap = {
  LoyaltyProgramStatus.INACTIVE: 'INACTIVE',
  LoyaltyProgramStatus.ACTIVE: 'ACTIVE',
};

LoyaltyProgramExpirationPolicy _$LoyaltyProgramExpirationPolicyFromJson(
        Map<String, dynamic> json) =>
    LoyaltyProgramExpirationPolicy(
      expirationDuration: json['expiration_duration'] as String?,
    );

Map<String, dynamic> _$LoyaltyProgramExpirationPolicyToJson(
    LoyaltyProgramExpirationPolicy instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('expiration_duration', instance.expirationDuration);
  return val;
}

LoyaltyProgramTerminology _$LoyaltyProgramTerminologyFromJson(
        Map<String, dynamic> json) =>
    LoyaltyProgramTerminology(
      one: json['one'] as String?,
      other: json['other'] as String?,
    );

Map<String, dynamic> _$LoyaltyProgramTerminologyToJson(
    LoyaltyProgramTerminology instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('one', instance.one);
  writeNotNull('other', instance.other);
  return val;
}

LoyaltyProgramRewardTier _$LoyaltyProgramRewardTierFromJson(
        Map<String, dynamic> json) =>
    LoyaltyProgramRewardTier(
      id: json['id'] as String?,
      createdAt: json['created_at'] as String?,
      points: json['points'] as int?,
      name: json['name'] as String?,
      definition: json['definition'] == null
          ? null
          : LoyaltyProgramRewardDefinition.fromJson(
              json['definition'] as Map<String, dynamic>),
      pricingRuleReference: json['pricing_rule_reference'] == null
          ? null
          : CatalogObjectReference.fromJson(
              json['pricing_rule_reference'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$LoyaltyProgramRewardTierToJson(
    LoyaltyProgramRewardTier instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('created_at', instance.createdAt);
  writeNotNull('name', instance.name);
  writeNotNull('points', instance.points);
  writeNotNull('pricing_rule_reference', instance.pricingRuleReference);
  writeNotNull('definition', instance.definition);
  return val;
}

LoyaltyProgramRewardDefinition _$LoyaltyProgramRewardDefinitionFromJson(
        Map<String, dynamic> json) =>
    LoyaltyProgramRewardDefinition(
      discountType: $enumDecodeNullable(
          _$LoyaltyProgramRewardDefinitionTypeEnumMap, json['discount_type']),
      scope: $enumDecodeNullable(
          _$LoyaltyProgramRewardDefinitionScopeEnumMap, json['scope']),
      catalogObjectIds: (json['catalog_object_ids'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      fixedDiscountMoney: json['fixed_discount_money'] == null
          ? null
          : Money.fromJson(
              json['fixed_discount_money'] as Map<String, dynamic>),
      maxDiscountMoney: json['max_discount_money'] == null
          ? null
          : Money.fromJson(json['max_discount_money'] as Map<String, dynamic>),
      percentageDiscount: json['percentage_discount'] as String?,
    );

Map<String, dynamic> _$LoyaltyProgramRewardDefinitionToJson(
    LoyaltyProgramRewardDefinition instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('discount_type',
      _$LoyaltyProgramRewardDefinitionTypeEnumMap[instance.discountType]);
  writeNotNull(
      'scope', _$LoyaltyProgramRewardDefinitionScopeEnumMap[instance.scope]);
  writeNotNull('catalog_object_ids', instance.catalogObjectIds);
  writeNotNull('fixed_discount_money', instance.fixedDiscountMoney);
  writeNotNull('max_discount_money', instance.maxDiscountMoney);
  writeNotNull('percentage_discount', instance.percentageDiscount);
  return val;
}

const _$LoyaltyProgramRewardDefinitionTypeEnumMap = {
  LoyaltyProgramRewardDefinitionType.FIXED_AMOUNT: 'FIXED_AMOUNT',
  LoyaltyProgramRewardDefinitionType.FIXED_PERCENTAGE: 'FIXED_PERCENTAGE',
};

const _$LoyaltyProgramRewardDefinitionScopeEnumMap = {
  LoyaltyProgramRewardDefinitionScope.ORDER: 'ORDER',
  LoyaltyProgramRewardDefinitionScope.ITEM_VARIATION: 'ITEM_VARIATION',
  LoyaltyProgramRewardDefinitionScope.CATEGORY: 'CATEGORY',
};

CatalogObjectReference _$CatalogObjectReferenceFromJson(
        Map<String, dynamic> json) =>
    CatalogObjectReference(
      objectId: json['object_id'] as String?,
      catalogVersion: json['catalog_version'] as int?,
    );

Map<String, dynamic> _$CatalogObjectReferenceToJson(
    CatalogObjectReference instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('catalog_version', instance.catalogVersion);
  writeNotNull('object_id', instance.objectId);
  return val;
}

LoyaltyProgramAccrualRule _$LoyaltyProgramAccrualRuleFromJson(
        Map<String, dynamic> json) =>
    LoyaltyProgramAccrualRule(
      points: json['points'] as int?,
      itemVariationData: json['item_variation_data'] == null
          ? null
          : LoyaltyProgramAccrualRuleItemVariationData.fromJson(
              json['item_variation_data'] as Map<String, dynamic>),
      categoryData: json['category_data'] == null
          ? null
          : LoyaltyProgramAccrualRuleCategoryData.fromJson(
              json['category_data'] as Map<String, dynamic>),
      accrualType: $enumDecodeNullable(
          _$LoyaltyProgramAccrualRuleTypeEnumMap, json['accrual_type']),
      spendData: json['spend_data'] == null
          ? null
          : LoyaltyProgramAccrualRuleSpendData.fromJson(
              json['spend_data'] as Map<String, dynamic>),
      visitData: json['visit_data'] == null
          ? null
          : LoyaltyProgramAccrualRuleVisitData.fromJson(
              json['visit_data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$LoyaltyProgramAccrualRuleToJson(
    LoyaltyProgramAccrualRule instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('accrual_type',
      _$LoyaltyProgramAccrualRuleTypeEnumMap[instance.accrualType]);
  writeNotNull('category_data', instance.categoryData);
  writeNotNull('item_variation_data', instance.itemVariationData);
  writeNotNull('points', instance.points);
  writeNotNull('spend_data', instance.spendData);
  writeNotNull('visit_data', instance.visitData);
  return val;
}

const _$LoyaltyProgramAccrualRuleTypeEnumMap = {
  LoyaltyProgramAccrualRuleType.VISIT: 'VISIT',
  LoyaltyProgramAccrualRuleType.SPEND: 'SPEND',
  LoyaltyProgramAccrualRuleType.ITEM_VARIATION: 'ITEM_VARIATION',
  LoyaltyProgramAccrualRuleType.CATEGORY: 'CATEGORY',
};

LoyaltyProgramAccrualRuleVisitData _$LoyaltyProgramAccrualRuleVisitDataFromJson(
        Map<String, dynamic> json) =>
    LoyaltyProgramAccrualRuleVisitData(
      minimumAmountMoney: json['minimum_amount_money'] == null
          ? null
          : Money.fromJson(
              json['minimum_amount_money'] as Map<String, dynamic>),
      taxMode: $enumDecodeNullable(
          _$LoyaltyProgramAccrualRuleTaxModeEnumMap, json['tax_mode']),
    );

Map<String, dynamic> _$LoyaltyProgramAccrualRuleVisitDataToJson(
    LoyaltyProgramAccrualRuleVisitData instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(
      'tax_mode', _$LoyaltyProgramAccrualRuleTaxModeEnumMap[instance.taxMode]);
  writeNotNull('minimum_amount_money', instance.minimumAmountMoney);
  return val;
}

const _$LoyaltyProgramAccrualRuleTaxModeEnumMap = {
  LoyaltyProgramAccrualRuleTaxMode.BEFORE_TAX: 'BEFORE_TAX',
  LoyaltyProgramAccrualRuleTaxMode.AFTER_TAX: 'AFTER_TAX',
};

LoyaltyProgramAccrualRuleSpendData _$LoyaltyProgramAccrualRuleSpendDataFromJson(
        Map<String, dynamic> json) =>
    LoyaltyProgramAccrualRuleSpendData(
      taxMode: $enumDecodeNullable(
          _$LoyaltyProgramAccrualRuleTaxModeEnumMap, json['tax_mode']),
      amountMoney: json['amount_money'] == null
          ? null
          : Money.fromJson(json['amount_money'] as Map<String, dynamic>),
      excludedCategoryIds: (json['excluded_category_ids'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      excludedItemVariationIds:
          (json['excluded_item_variation_ids'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList(),
    );

Map<String, dynamic> _$LoyaltyProgramAccrualRuleSpendDataToJson(
    LoyaltyProgramAccrualRuleSpendData instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('amount_money', instance.amountMoney);
  writeNotNull(
      'tax_mode', _$LoyaltyProgramAccrualRuleTaxModeEnumMap[instance.taxMode]);
  writeNotNull('excluded_category_ids', instance.excludedCategoryIds);
  writeNotNull(
      'excluded_item_variation_ids', instance.excludedItemVariationIds);
  return val;
}

LoyaltyProgramAccrualRuleItemVariationData
    _$LoyaltyProgramAccrualRuleItemVariationDataFromJson(
            Map<String, dynamic> json) =>
        LoyaltyProgramAccrualRuleItemVariationData(
          itemVariationId: json['item_variation_id'] as String?,
        );

Map<String, dynamic> _$LoyaltyProgramAccrualRuleItemVariationDataToJson(
    LoyaltyProgramAccrualRuleItemVariationData instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('item_variation_id', instance.itemVariationId);
  return val;
}

LoyaltyProgramAccrualRuleCategoryData
    _$LoyaltyProgramAccrualRuleCategoryDataFromJson(
            Map<String, dynamic> json) =>
        LoyaltyProgramAccrualRuleCategoryData(
          categoryId: json['category_id'] as String?,
        );

Map<String, dynamic> _$LoyaltyProgramAccrualRuleCategoryDataToJson(
    LoyaltyProgramAccrualRuleCategoryData instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('category_id', instance.categoryId);
  return val;
}

LoyaltyReward _$LoyaltyRewardFromJson(Map<String, dynamic> json) =>
    LoyaltyReward(
      points: json['points'] as int?,
      createdAt: json['created_at'] as String?,
      id: json['id'] as String?,
      status: $enumDecodeNullable(_$LoyaltyRewardStatusEnumMap, json['status']),
      updatedAt: json['updated_at'] as String?,
      orderId: json['order_id'] as String?,
      rewardTierId: json['reward_tier_id'] as String?,
      loyaltyAccountId: json['loyalty_account_id'] as String?,
      redeemedAt: json['redeemed_at'] as String?,
    );

Map<String, dynamic> _$LoyaltyRewardToJson(LoyaltyReward instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('loyalty_account_id', instance.loyaltyAccountId);
  writeNotNull('reward_tier_id', instance.rewardTierId);
  writeNotNull('created_at', instance.createdAt);
  writeNotNull('order_id', instance.orderId);
  writeNotNull('points', instance.points);
  writeNotNull('redeemed_at', instance.redeemedAt);
  writeNotNull('status', _$LoyaltyRewardStatusEnumMap[instance.status]);
  writeNotNull('updated_at', instance.updatedAt);
  return val;
}

const _$LoyaltyRewardStatusEnumMap = {
  LoyaltyRewardStatus.ISSUED: 'ISSUED',
  LoyaltyRewardStatus.REDEEMED: 'REDEEMED',
  LoyaltyRewardStatus.DELETED: 'DELETED',
};

SearchLoyaltyRewardsRequestLoyaltyRewardQuery
    _$SearchLoyaltyRewardsRequestLoyaltyRewardQueryFromJson(
            Map<String, dynamic> json) =>
        SearchLoyaltyRewardsRequestLoyaltyRewardQuery(
          loyaltyAccountId: json['loyalty_account_id'] as String?,
          status:
              $enumDecodeNullable(_$LoyaltyRewardStatusEnumMap, json['status']),
        );

Map<String, dynamic> _$SearchLoyaltyRewardsRequestLoyaltyRewardQueryToJson(
    SearchLoyaltyRewardsRequestLoyaltyRewardQuery instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('loyalty_account_id', instance.loyaltyAccountId);
  writeNotNull('status', _$LoyaltyRewardStatusEnumMap[instance.status]);
  return val;
}

GiftCard _$GiftCardFromJson(Map<String, dynamic> json) => GiftCard(
      status: $enumDecodeNullable(_$GiftCardStatusEnumMap, json['status']),
      id: json['id'] as String?,
      createdAt: json['created_at'] as String?,
      customerIds: (json['customer_ids'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      type: $enumDecodeNullable(_$GiftCardTypeEnumMap, json['type']),
      balanceMoney: json['balance_money'] == null
          ? null
          : Money.fromJson(json['balance_money'] as Map<String, dynamic>),
      gan: json['gan'] as String?,
      ganSource:
          $enumDecodeNullable(_$GiftCardGANSourceEnumMap, json['gan_source']),
    );

Map<String, dynamic> _$GiftCardToJson(GiftCard instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('type', _$GiftCardTypeEnumMap[instance.type]);
  writeNotNull('balance_money', instance.balanceMoney);
  writeNotNull('created_at', instance.createdAt);
  writeNotNull('customer_ids', instance.customerIds);
  writeNotNull('gan', instance.gan);
  writeNotNull('gan_source', _$GiftCardGANSourceEnumMap[instance.ganSource]);
  writeNotNull('status', _$GiftCardStatusEnumMap[instance.status]);
  return val;
}

const _$GiftCardStatusEnumMap = {
  GiftCardStatus.ACTIVE: 'ACTIVE',
  GiftCardStatus.DEACTIVATED: 'DEACTIVATED',
  GiftCardStatus.BLOCKED: 'BLOCKED',
  GiftCardStatus.PENDING: 'PENDING',
};

const _$GiftCardTypeEnumMap = {
  GiftCardType.PHYSICAL: 'PHYSICAL',
  GiftCardType.DIGITAL: 'DIGITAL',
};

const _$GiftCardGANSourceEnumMap = {
  GiftCardGANSource.SQUARE: 'SQUARE',
  GiftCardGANSource.OTHER: 'OTHER',
};

GiftCardActivity _$GiftCardActivityFromJson(Map<String, dynamic> json) =>
    GiftCardActivity(
      type: $enumDecodeNullable(_$GiftCardActivityTypeEnumMap, json['type']),
      createdAt: json['created_at'] as String?,
      id: json['id'] as String?,
      locationId: json['location_id'] as String?,
      activateActivityDetails: json['activate_activity_details'] == null
          ? null
          : GiftCardActivityActivate.fromJson(
              json['activate_activity_details'] as Map<String, dynamic>),
      adjustDecrementActivityDetails:
          json['adjust_decrement_activity_details'] == null
              ? null
              : GiftCardActivityAdjustDecrement.fromJson(
                  json['adjust_decrement_activity_details']
                      as Map<String, dynamic>),
      adjustIncrementActivityDetails:
          json['adjust_increment_activity_details'] == null
              ? null
              : GiftCardActivityAdjustIncrement.fromJson(
                  json['adjust_increment_activity_details']
                      as Map<String, dynamic>),
      blockActivityDetails: json['block_activity_details'] == null
          ? null
          : GiftCardActivityBlock.fromJson(
              json['block_activity_details'] as Map<String, dynamic>),
      clearBalanceActivityDetails: json['clear_balance_activity_details'] ==
              null
          ? null
          : GiftCardActivityClearBalance.fromJson(
              json['clear_balance_activity_details'] as Map<String, dynamic>),
      deactivateActivityDetails: json['deactivate_activity_details'] == null
          ? null
          : GiftCardActivityDeactivate.fromJson(
              json['deactivate_activity_details'] as Map<String, dynamic>),
      giftCardBalanceMoney: json['gift_card_balance_money'] == null
          ? null
          : Money.fromJson(
              json['gift_card_balance_money'] as Map<String, dynamic>),
      giftCardGan: json['gift_card_gan'] as String?,
      giftCardId: json['gift_card_id'] as String?,
      importActivityDetails: json['import_activity_details'] == null
          ? null
          : GiftCardActivityImport.fromJson(
              json['import_activity_details'] as Map<String, dynamic>),
      importReversalActivityDetails: json['import_reversal_activity_details'] ==
              null
          ? null
          : GiftCardActivityImportReversal.fromJson(
              json['import_reversal_activity_details'] as Map<String, dynamic>),
      loadActivityDetails: json['load_activity_details'] == null
          ? null
          : GiftCardActivityLoad.fromJson(
              json['load_activity_details'] as Map<String, dynamic>),
      redeemActivityDetails: json['redeem_activity_details'] == null
          ? null
          : GiftCardActivityRedeem.fromJson(
              json['redeem_activity_details'] as Map<String, dynamic>),
      refundActivityDetails: json['refund_activity_details'] == null
          ? null
          : GiftCardActivityRefund.fromJson(
              json['refund_activity_details'] as Map<String, dynamic>),
      unblockActivityDetails: json['unblock_activity_details'] == null
          ? null
          : GiftCardActivityUnblock.fromJson(
              json['unblock_activity_details'] as Map<String, dynamic>),
      unlinkedActivityRefundActivityDetails:
          json['unlinked_activity_refund_activity_details'] == null
              ? null
              : GiftCardActivityUnlinkedActivityRefund.fromJson(
                  json['unlinked_activity_refund_activity_details']
                      as Map<String, dynamic>),
    );

Map<String, dynamic> _$GiftCardActivityToJson(GiftCardActivity instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('location_id', instance.locationId);
  writeNotNull('type', _$GiftCardActivityTypeEnumMap[instance.type]);
  writeNotNull('activate_activity_details', instance.activateActivityDetails);
  writeNotNull('adjust_decrement_activity_details',
      instance.adjustDecrementActivityDetails);
  writeNotNull('adjust_increment_activity_details',
      instance.adjustIncrementActivityDetails);
  writeNotNull('block_activity_details', instance.blockActivityDetails);
  writeNotNull(
      'clear_balance_activity_details', instance.clearBalanceActivityDetails);
  writeNotNull('created_at', instance.createdAt);
  writeNotNull(
      'deactivate_activity_details', instance.deactivateActivityDetails);
  writeNotNull('gift_card_balance_money', instance.giftCardBalanceMoney);
  writeNotNull('gift_card_gan', instance.giftCardGan);
  writeNotNull('gift_card_id', instance.giftCardId);
  writeNotNull('import_activity_details', instance.importActivityDetails);
  writeNotNull('import_reversal_activity_details',
      instance.importReversalActivityDetails);
  writeNotNull('load_activity_details', instance.loadActivityDetails);
  writeNotNull('redeem_activity_details', instance.redeemActivityDetails);
  writeNotNull('refund_activity_details', instance.refundActivityDetails);
  writeNotNull('unblock_activity_details', instance.unblockActivityDetails);
  writeNotNull('unlinked_activity_refund_activity_details',
      instance.unlinkedActivityRefundActivityDetails);
  return val;
}

const _$GiftCardActivityTypeEnumMap = {
  GiftCardActivityType.ACTIVATE: 'ACTIVATE',
  GiftCardActivityType.LOAD: 'LOAD',
  GiftCardActivityType.REDEEM: 'REDEEM',
  GiftCardActivityType.CLEAR_BALANCE: 'CLEAR_BALANCE',
  GiftCardActivityType.DEACTIVATE: 'DEACTIVATE',
  GiftCardActivityType.ADJUST_INCREMENT: 'ADJUST_INCREMENT',
  GiftCardActivityType.ADJUST_DECREMENT: 'ADJUST_DECREMENT',
  GiftCardActivityType.REFUND: 'REFUND',
  GiftCardActivityType.UNLINKED_ACTIVITY_REFUND: 'UNLINKED_ACTIVITY_REFUND',
  GiftCardActivityType.IMPORT: 'IMPORT',
  GiftCardActivityType.BLOCK: 'BLOCK',
  GiftCardActivityType.UNBLOCK: 'UNBLOCK',
  GiftCardActivityType.IMPORT_REVERSAL: 'IMPORT_REVERSAL',
};

GiftCardActivityUnlinkedActivityRefund
    _$GiftCardActivityUnlinkedActivityRefundFromJson(
            Map<String, dynamic> json) =>
        GiftCardActivityUnlinkedActivityRefund(
          amountMoney: json['amount_money'] == null
              ? null
              : Money.fromJson(json['amount_money'] as Map<String, dynamic>),
          referenceId: json['reference_id'] as String?,
          paymentId: json['payment_id'] as String?,
        );

Map<String, dynamic> _$GiftCardActivityUnlinkedActivityRefundToJson(
    GiftCardActivityUnlinkedActivityRefund instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('amount_money', instance.amountMoney);
  writeNotNull('payment_id', instance.paymentId);
  writeNotNull('reference_id', instance.referenceId);
  return val;
}

GiftCardActivityUnblock _$GiftCardActivityUnblockFromJson(
        Map<String, dynamic> json) =>
    GiftCardActivityUnblock(
      reason: json['reason'] as String?,
    );

Map<String, dynamic> _$GiftCardActivityUnblockToJson(
    GiftCardActivityUnblock instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('reason', instance.reason);
  return val;
}

GiftCardActivityRefund _$GiftCardActivityRefundFromJson(
        Map<String, dynamic> json) =>
    GiftCardActivityRefund(
      paymentId: json['payment_id'] as String?,
      referenceId: json['reference_id'] as String?,
      amountMoney: json['amount_money'] == null
          ? null
          : Money.fromJson(json['amount_money'] as Map<String, dynamic>),
      redeemActivityId: json['redeem_activity_id'] as String?,
    );

Map<String, dynamic> _$GiftCardActivityRefundToJson(
    GiftCardActivityRefund instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('redeem_activity_id', instance.redeemActivityId);
  writeNotNull('amount_money', instance.amountMoney);
  writeNotNull('payment_id', instance.paymentId);
  writeNotNull('reference_id', instance.referenceId);
  return val;
}

GiftCardActivityRedeem _$GiftCardActivityRedeemFromJson(
        Map<String, dynamic> json) =>
    GiftCardActivityRedeem(
      amountMoney: json['amount_money'] == null
          ? null
          : Money.fromJson(json['amount_money'] as Map<String, dynamic>),
      referenceId: json['reference_id'] as String?,
      paymentId: json['payment_id'] as String?,
    );

Map<String, dynamic> _$GiftCardActivityRedeemToJson(
    GiftCardActivityRedeem instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('amount_money', instance.amountMoney);
  writeNotNull('payment_id', instance.paymentId);
  writeNotNull('reference_id', instance.referenceId);
  return val;
}

GiftCardActivityLoad _$GiftCardActivityLoadFromJson(
        Map<String, dynamic> json) =>
    GiftCardActivityLoad(
      referenceId: json['reference_id'] as String?,
      amountMoney: json['amount_money'] == null
          ? null
          : Money.fromJson(json['amount_money'] as Map<String, dynamic>),
      orderId: json['order_id'] as String?,
      buyerPaymentInstrumentIds:
          (json['buyer_payment_instrument_ids'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList(),
      lineItemUid: json['line_item_uid'] as String?,
    );

Map<String, dynamic> _$GiftCardActivityLoadToJson(
    GiftCardActivityLoad instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('amount_money', instance.amountMoney);
  writeNotNull(
      'buyer_payment_instrument_ids', instance.buyerPaymentInstrumentIds);
  writeNotNull('line_item_uid', instance.lineItemUid);
  writeNotNull('order_id', instance.orderId);
  writeNotNull('reference_id', instance.referenceId);
  return val;
}

GiftCardActivityImportReversal _$GiftCardActivityImportReversalFromJson(
        Map<String, dynamic> json) =>
    GiftCardActivityImportReversal(
      amountMoney: json['amount_money'] == null
          ? null
          : Money.fromJson(json['amount_money'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GiftCardActivityImportReversalToJson(
    GiftCardActivityImportReversal instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('amount_money', instance.amountMoney);
  return val;
}

GiftCardActivityImport _$GiftCardActivityImportFromJson(
        Map<String, dynamic> json) =>
    GiftCardActivityImport(
      amountMoney: json['amount_money'] == null
          ? null
          : Money.fromJson(json['amount_money'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GiftCardActivityImportToJson(
    GiftCardActivityImport instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('amount_money', instance.amountMoney);
  return val;
}

GiftCardActivityDeactivate _$GiftCardActivityDeactivateFromJson(
        Map<String, dynamic> json) =>
    GiftCardActivityDeactivate(
      reason: json['reason'] as String?,
    );

Map<String, dynamic> _$GiftCardActivityDeactivateToJson(
    GiftCardActivityDeactivate instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('reason', instance.reason);
  return val;
}

GiftCardActivityClearBalance _$GiftCardActivityClearBalanceFromJson(
        Map<String, dynamic> json) =>
    GiftCardActivityClearBalance(
      reason: json['reason'] as String?,
    );

Map<String, dynamic> _$GiftCardActivityClearBalanceToJson(
    GiftCardActivityClearBalance instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('reason', instance.reason);
  return val;
}

GiftCardActivityBlock _$GiftCardActivityBlockFromJson(
        Map<String, dynamic> json) =>
    GiftCardActivityBlock(
      reason: json['reason'] as String?,
    );

Map<String, dynamic> _$GiftCardActivityBlockToJson(
    GiftCardActivityBlock instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('reason', instance.reason);
  return val;
}

GiftCardActivityAdjustIncrement _$GiftCardActivityAdjustIncrementFromJson(
        Map<String, dynamic> json) =>
    GiftCardActivityAdjustIncrement(
      amountMoney: json['amount_money'] == null
          ? null
          : Money.fromJson(json['amount_money'] as Map<String, dynamic>),
      reason: json['reason'] as String?,
    );

Map<String, dynamic> _$GiftCardActivityAdjustIncrementToJson(
    GiftCardActivityAdjustIncrement instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('amount_money', instance.amountMoney);
  writeNotNull('reason', instance.reason);
  return val;
}

GiftCardActivityAdjustDecrement _$GiftCardActivityAdjustDecrementFromJson(
        Map<String, dynamic> json) =>
    GiftCardActivityAdjustDecrement(
      amountMoney: json['amount_money'] == null
          ? null
          : Money.fromJson(json['amount_money'] as Map<String, dynamic>),
      reason: json['reason'] as String?,
    );

Map<String, dynamic> _$GiftCardActivityAdjustDecrementToJson(
    GiftCardActivityAdjustDecrement instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('amount_money', instance.amountMoney);
  writeNotNull('reason', instance.reason);
  return val;
}

GiftCardActivityActivate _$GiftCardActivityActivateFromJson(
        Map<String, dynamic> json) =>
    GiftCardActivityActivate(
      referenceId: json['reference_id'] as String?,
      amountMoney: json['amount_money'] == null
          ? null
          : Money.fromJson(json['amount_money'] as Map<String, dynamic>),
      orderId: json['order_id'] as String?,
      buyerPaymentInstrumentIds:
          (json['buyer_payment_instrument_ids'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList(),
      lineItemUid: json['line_item_uid'] as String?,
    );

Map<String, dynamic> _$GiftCardActivityActivateToJson(
    GiftCardActivityActivate instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('amount_money', instance.amountMoney);
  writeNotNull(
      'buyer_payment_instrument_ids', instance.buyerPaymentInstrumentIds);
  writeNotNull('line_item_uid', instance.lineItemUid);
  writeNotNull('order_id', instance.orderId);
  writeNotNull('reference_id', instance.referenceId);
  return val;
}

Booking _$BookingFromJson(Map<String, dynamic> json) => Booking(
      locationId: json['location_id'] as String?,
      id: json['id'] as String?,
      createdAt: json['created_at'] as String?,
      status: $enumDecodeNullable(_$BookingStatusEnumMap, json['status']),
      updatedAt: json['updated_at'] as String?,
      customerId: json['customer_id'] as String?,
      startAt: json['start_at'] as String?,
      version: json['version'] as int?,
      source:
          $enumDecodeNullable(_$BookingBookingSourceEnumMap, json['source']),
      allDay: json['all_day'] as bool?,
      appointmentSegments: (json['appointment_segments'] as List<dynamic>?)
          ?.map((e) => AppointmentSegment.fromJson(e as Map<String, dynamic>))
          .toList(),
      creatorDetails: json['creator_details'] == null
          ? null
          : BookingCreatorDetails.fromJson(
              json['creator_details'] as Map<String, dynamic>),
      customerNote: json['customer_note'] as String?,
      locationType: $enumDecodeNullable(
          _$BusinessAppointmentSettingsBookingLocationTypeEnumMap,
          json['location_type']),
      sellerNote: json['seller_note'] as String?,
      transitionTimeMinutes: json['transition_time_minutes'] as int?,
    );

Map<String, dynamic> _$BookingToJson(Booking instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('all_day', instance.allDay);
  writeNotNull('appointment_segments', instance.appointmentSegments);
  writeNotNull('created_at', instance.createdAt);
  writeNotNull('creator_details', instance.creatorDetails);
  writeNotNull('customer_id', instance.customerId);
  writeNotNull('customer_note', instance.customerNote);
  writeNotNull('location_id', instance.locationId);
  writeNotNull(
      'location_type',
      _$BusinessAppointmentSettingsBookingLocationTypeEnumMap[
          instance.locationType]);
  writeNotNull('seller_note', instance.sellerNote);
  writeNotNull('source', _$BookingBookingSourceEnumMap[instance.source]);
  writeNotNull('start_at', instance.startAt);
  writeNotNull('status', _$BookingStatusEnumMap[instance.status]);
  writeNotNull('transition_time_minutes', instance.transitionTimeMinutes);
  writeNotNull('updated_at', instance.updatedAt);
  writeNotNull('version', instance.version);
  return val;
}

const _$BookingStatusEnumMap = {
  BookingStatus.PENDING: 'PENDING',
  BookingStatus.CANCELLED_BY_CUSTOMER: 'CANCELLED_BY_CUSTOMER',
  BookingStatus.CANCELLED_BY_SELLER: 'CANCELLED_BY_SELLER',
  BookingStatus.DECLINED: 'DECLINED',
  BookingStatus.ACCEPTED: 'ACCEPTED',
  BookingStatus.NO_SHOW: 'NO_SHOW',
};

const _$BookingBookingSourceEnumMap = {
  BookingBookingSource.FIRST_PARTY_MERCHANT: 'FIRST_PARTY_MERCHANT',
  BookingBookingSource.FIRST_PARTY_BUYER: 'FIRST_PARTY_BUYER',
  BookingBookingSource.THIRD_PARTY_BUYER: 'THIRD_PARTY_BUYER',
  BookingBookingSource.API: 'API',
};

const _$BusinessAppointmentSettingsBookingLocationTypeEnumMap = {
  BusinessAppointmentSettingsBookingLocationType.BUSINESS_LOCATION:
      'BUSINESS_LOCATION',
  BusinessAppointmentSettingsBookingLocationType.CUSTOMER_LOCATION:
      'CUSTOMER_LOCATION',
  BusinessAppointmentSettingsBookingLocationType.PHONE: 'PHONE',
};

BookingCreatorDetails _$BookingCreatorDetailsFromJson(
        Map<String, dynamic> json) =>
    BookingCreatorDetails(
      customerId: json['customer_id'] as String?,
      creatorType: $enumDecodeNullable(
          _$BookingCreatorDetailsCreatorTypeEnumMap, json['creator_type']),
      teamMemberId: json['team_member_id'] as String?,
    );

Map<String, dynamic> _$BookingCreatorDetailsToJson(
    BookingCreatorDetails instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('creator_type',
      _$BookingCreatorDetailsCreatorTypeEnumMap[instance.creatorType]);
  writeNotNull('customer_id', instance.customerId);
  writeNotNull('team_member_id', instance.teamMemberId);
  return val;
}

const _$BookingCreatorDetailsCreatorTypeEnumMap = {
  BookingCreatorDetailsCreatorType.TEAM_MEMBER: 'TEAM_MEMBER',
  BookingCreatorDetailsCreatorType.CUSTOMER: 'CUSTOMER',
};

AppointmentSegment _$AppointmentSegmentFromJson(Map<String, dynamic> json) =>
    AppointmentSegment(
      teamMemberId: json['team_member_id'] as String?,
      anyTeamMember: json['any_team_member'] as bool?,
      durationMinutes: json['duration_minutes'] as int?,
      intermissionMinutes: json['intermission_minutes'] as int?,
      resourceIds: (json['resource_ids'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      serviceVariationId: json['service_variation_id'] as int?,
      serviceVariationVersion: json['service_variation_version'] as String?,
    );

Map<String, dynamic> _$AppointmentSegmentToJson(AppointmentSegment instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('duration_minutes', instance.durationMinutes);
  writeNotNull('service_variation_id', instance.serviceVariationId);
  writeNotNull('service_variation_version', instance.serviceVariationVersion);
  writeNotNull('team_member_id', instance.teamMemberId);
  writeNotNull('any_team_member', instance.anyTeamMember);
  writeNotNull('intermission_minutes', instance.intermissionMinutes);
  writeNotNull('resource_ids', instance.resourceIds);
  return val;
}

SearchAvailabilityQuery _$SearchAvailabilityQueryFromJson(
        Map<String, dynamic> json) =>
    SearchAvailabilityQuery(
      filter: json['filter'] == null
          ? null
          : SearchAvailabilityFilter.fromJson(
              json['filter'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SearchAvailabilityQueryToJson(
    SearchAvailabilityQuery instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('filter', instance.filter);
  return val;
}

SearchAvailabilityFilter _$SearchAvailabilityFilterFromJson(
        Map<String, dynamic> json) =>
    SearchAvailabilityFilter(
      locationId: json['location_id'] as String?,
      bookingId: json['booking_id'] as String?,
      segmentFilters: (json['segment_filters'] as List<dynamic>?)
          ?.map((e) => SegmentFilter.fromJson(e as Map<String, dynamic>))
          .toList(),
      startAtRange: json['start_at_range'] == null
          ? null
          : TimeRange.fromJson(json['start_at_range'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SearchAvailabilityFilterToJson(
    SearchAvailabilityFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('start_at_range', instance.startAtRange);
  writeNotNull('booking_id', instance.bookingId);
  writeNotNull('location_id', instance.locationId);
  writeNotNull('segment_filters', instance.segmentFilters);
  return val;
}

SegmentFilter _$SegmentFilterFromJson(Map<String, dynamic> json) =>
    SegmentFilter(
      serviceVariationId: json['service_variation_id'] as String?,
      team_memberIdFilter: json['team_member_id_filter'] == null
          ? null
          : FilterValue.fromJson(
              json['team_member_id_filter'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SegmentFilterToJson(SegmentFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('service_variation_id', instance.serviceVariationId);
  writeNotNull('team_member_id_filter', instance.team_memberIdFilter);
  return val;
}

Availability _$AvailabilityFromJson(Map<String, dynamic> json) => Availability(
      locationId: json['location_id'] as String?,
      appointmentSegments: (json['appointment_segments'] as List<dynamic>?)
          ?.map((e) => AppointmentSegment.fromJson(e as Map<String, dynamic>))
          .toList(),
      startAt: json['start_at'] as String?,
    );

Map<String, dynamic> _$AvailabilityToJson(Availability instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('appointment_segments', instance.appointmentSegments);
  writeNotNull('location_id', instance.locationId);
  writeNotNull('start_at', instance.startAt);
  return val;
}

BusinessBookingProfile _$BusinessBookingProfileFromJson(
        Map<String, dynamic> json) =>
    BusinessBookingProfile(
      createdAt: json['created_at'] as String?,
      allowUserCancel: json['allow_user_cancel'] as bool?,
      bookingEnabled: json['booking_enabled'] as bool?,
      bookingPolicy: $enumDecodeNullable(
          _$BusinessBookingProfileBookingPolicyEnumMap, json['booking_policy']),
      businessAppointmentSettings: json['business_appointment_settings'] == null
          ? null
          : BusinessAppointmentSettings.fromJson(
              json['business_appointment_settings'] as Map<String, dynamic>),
      customerTimezoneChoice: $enumDecodeNullable(
          _$BusinessBookingProfileCustomerTimezoneChoiceEnumMap,
          json['customer_timezone_choice']),
      sellerId: json['seller_id'] as String?,
    );

Map<String, dynamic> _$BusinessBookingProfileToJson(
    BusinessBookingProfile instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('allow_user_cancel', instance.allowUserCancel);
  writeNotNull('booking_enabled', instance.bookingEnabled);
  writeNotNull('booking_policy',
      _$BusinessBookingProfileBookingPolicyEnumMap[instance.bookingPolicy]);
  writeNotNull(
      'business_appointment_settings', instance.businessAppointmentSettings);
  writeNotNull('created_at', instance.createdAt);
  writeNotNull(
      'customer_timezone_choice',
      _$BusinessBookingProfileCustomerTimezoneChoiceEnumMap[
          instance.customerTimezoneChoice]);
  writeNotNull('seller_id', instance.sellerId);
  return val;
}

const _$BusinessBookingProfileBookingPolicyEnumMap = {
  BusinessBookingProfileBookingPolicy.ACCEPT_ALL: 'ACCEPT_ALL',
  BusinessBookingProfileBookingPolicy.REQUIRES_ACCEPTANCE:
      'REQUIRES_ACCEPTANCE',
};

const _$BusinessBookingProfileCustomerTimezoneChoiceEnumMap = {
  BusinessBookingProfileCustomerTimezoneChoice.BUSINESS_LOCATION_TIMEZONE:
      'BUSINESS_LOCATION_TIMEZONE',
  BusinessBookingProfileCustomerTimezoneChoice.CUSTOMER_CHOICE:
      'CUSTOMER_CHOICE',
};

BusinessAppointmentSettings _$BusinessAppointmentSettingsFromJson(
        Map<String, dynamic> json) =>
    BusinessAppointmentSettings(
      alignmentTime: $enumDecodeNullable(
          _$BusinessAppointmentSettingsAlignmentTimeEnumMap,
          json['alignment_time']),
      anyTeamMemberBookingEnabled:
          json['any_team_member_booking_enabled'] as bool?,
      cancellation_policy: $enumDecodeNullable(
          _$BusinessAppointmentSettingsCancellationPolicyEnumMap,
          json['cancellation_policy']),
      cancellationFeeMoney: json['cancellation_fee_money'] == null
          ? null
          : Money.fromJson(
              json['cancellation_fee_money'] as Map<String, dynamic>),
      cancellationPolicyText: json['cancellation_policy_text'] as String?,
      cancellationWindowSeconds: json['cancellation_window_seconds'] as int?,
      locationTypes: (json['location_types'] as List<dynamic>?)
          ?.map((e) => $enumDecode(
              _$BusinessAppointmentSettingsBookingLocationTypeEnumMap, e))
          .toList(),
      maxAppointmentsPerDayLimit:
          json['max_appointments_per_day_limit'] as int?,
      maxAppointmentsPerDayLimitType: $enumDecodeNullable(
          _$BusinessAppointmentSettingsMaxAppointmentsPerDayLimitTypeEnumMap,
          json['max_appointments_per_day_limit_type']),
      maxBookingLeadTimeSeconds: json['max_booking_lead_time_seconds'] as int?,
      minBookingLeadTimeSeconds: json['min_booking_lead_time_seconds'] as int?,
      multipleServiceBookingEnabled:
          json['multiple_service_booking_enabled'] as bool?,
    );

Map<String, dynamic> _$BusinessAppointmentSettingsToJson(
    BusinessAppointmentSettings instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(
      'alignment_time',
      _$BusinessAppointmentSettingsAlignmentTimeEnumMap[
          instance.alignmentTime]);
  writeNotNull(
      'any_team_member_booking_enabled', instance.anyTeamMemberBookingEnabled);
  writeNotNull('cancellation_fee_money', instance.cancellationFeeMoney);
  writeNotNull(
      'cancellation_policy',
      _$BusinessAppointmentSettingsCancellationPolicyEnumMap[
          instance.cancellation_policy]);
  writeNotNull('cancellation_policy_text', instance.cancellationPolicyText);
  writeNotNull(
      'cancellation_window_seconds', instance.cancellationWindowSeconds);
  writeNotNull(
      'location_types',
      instance.locationTypes
          ?.map(
              (e) => _$BusinessAppointmentSettingsBookingLocationTypeEnumMap[e])
          .toList());
  writeNotNull(
      'max_appointments_per_day_limit', instance.maxAppointmentsPerDayLimit);
  writeNotNull(
      'max_appointments_per_day_limit_type',
      _$BusinessAppointmentSettingsMaxAppointmentsPerDayLimitTypeEnumMap[
          instance.maxAppointmentsPerDayLimitType]);
  writeNotNull(
      'max_booking_lead_time_seconds', instance.maxBookingLeadTimeSeconds);
  writeNotNull(
      'min_booking_lead_time_seconds', instance.minBookingLeadTimeSeconds);
  writeNotNull('multiple_service_booking_enabled',
      instance.multipleServiceBookingEnabled);
  return val;
}

const _$BusinessAppointmentSettingsAlignmentTimeEnumMap = {
  BusinessAppointmentSettingsAlignmentTime.SERVICE_DURATION: 'SERVICE_DURATION',
  BusinessAppointmentSettingsAlignmentTime.QUARTER_HOURLY: 'QUARTER_HOURLY',
  BusinessAppointmentSettingsAlignmentTime.HALF_HOURLY: 'HALF_HOURLY',
  BusinessAppointmentSettingsAlignmentTime.HOURLY: 'HOURLY',
};

const _$BusinessAppointmentSettingsCancellationPolicyEnumMap = {
  BusinessAppointmentSettingsCancellationPolicy.CANCELLATION_TREATED_AS_NO_SHOW:
      'CANCELLATION_TREATED_AS_NO_SHOW',
  BusinessAppointmentSettingsCancellationPolicy.CUSTOM_POLICY: 'CUSTOM_POLICY',
};

const _$BusinessAppointmentSettingsMaxAppointmentsPerDayLimitTypeEnumMap = {
  BusinessAppointmentSettingsMaxAppointmentsPerDayLimitType.PER_TEAM_MEMBER:
      'PER_TEAM_MEMBER',
  BusinessAppointmentSettingsMaxAppointmentsPerDayLimitType.PER_LOCATION:
      'PER_LOCATION',
};

TeamMemberBookingProfile _$TeamMemberBookingProfileFromJson(
        Map<String, dynamic> json) =>
    TeamMemberBookingProfile(
      teamMemberId: json['team_member_id'] as String?,
      description: json['description'] as String?,
      displayName: json['display_name'] as String?,
      isBookable: json['is_bookable'] as bool?,
      profileImageUrl: json['profile_image_url'] as String?,
    );

Map<String, dynamic> _$TeamMemberBookingProfileToJson(
    TeamMemberBookingProfile instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('description', instance.description);
  writeNotNull('display_name', instance.displayName);
  writeNotNull('is_bookable', instance.isBookable);
  writeNotNull('profile_image_url', instance.profileImageUrl);
  writeNotNull('team_member_id', instance.teamMemberId);
  return val;
}

Merchant _$MerchantFromJson(Map<String, dynamic> json) => Merchant(
      createdAt: json['created_at'] as String?,
      status: $enumDecodeNullable(_$MerchantStatusEnumMap, json['status']),
      id: json['id'] as String?,
      languageCode: json['language_code'] as String?,
      country: json['country'] as String?,
      currency: json['currency'] as String?,
      businessName: json['business_name'] as String?,
      mainLocationId: json['main_location_id'] as String?,
    );

Map<String, dynamic> _$MerchantToJson(Merchant instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('country', instance.country);
  writeNotNull('business_name', instance.businessName);
  writeNotNull('created_at', instance.createdAt);
  writeNotNull('currency', instance.currency);
  writeNotNull('language_code', instance.languageCode);
  writeNotNull('main_location_id', instance.mainLocationId);
  writeNotNull('status', _$MerchantStatusEnumMap[instance.status]);
  return val;
}

const _$MerchantStatusEnumMap = {
  MerchantStatus.ACTIVE: 'ACTIVE',
  MerchantStatus.INACTIVE: 'INACTIVE',
};

Location _$LocationFromJson(Map<String, dynamic> json) => Location(
      businessName: json['business_name'] as String?,
      currency: json['currency'] as String?,
      country: json['country'] as String?,
      languageCode: json['language_code'] as String?,
      id: json['id'] as String?,
      status: $enumDecodeNullable(_$LocationStatusEnumMap, json['status']),
      createdAt: json['created_at'] as String?,
      description: json['description'] as String?,
      type: $enumDecodeNullable(_$LocationTypeEnumMap, json['type']),
      name: json['name'] as String?,
      phoneNumber: json['phone_number'] as String?,
      address: json['address'] == null
          ? null
          : Address.fromJson(json['address'] as Map<String, dynamic>),
      taxIds: json['tax_ids'] == null
          ? null
          : TaxIds.fromJson(json['tax_ids'] as Map<String, dynamic>),
      timezone: json['timezone'] as String?,
      merchantId: json['merchant_id'] as String?,
      businessEmail: json['business_email'] as String?,
      businessHours: json['business_hours'] == null
          ? null
          : BusinessHours.fromJson(
              json['business_hours'] as Map<String, dynamic>),
      capabilities: (json['capabilities'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$LocationCapabilityEnumMap, e))
          .toList(),
      coordinates: json['coordinates'] == null
          ? null
          : SquareCoordinates.fromJson(
              json['coordinates'] as Map<String, dynamic>),
      facebookUrl: json['facebook_url'] as String?,
      fullFormatLogoUrl: json['full_format_logo_url'] as String?,
      instagramUsername: json['instagram_username'] as String?,
      logoUrl: json['logo_url'] as String?,
      mcc: json['mcc'] as String?,
      posBackgroundUrl: json['pos_background_url'] as String?,
      twitterUsername: json['twitter_username'] as String?,
      websiteUrl: json['website_url'] as String?,
    );

Map<String, dynamic> _$LocationToJson(Location instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('address', instance.address);
  writeNotNull('business_email', instance.businessEmail);
  writeNotNull('business_hours', instance.businessHours);
  writeNotNull('business_name', instance.businessName);
  writeNotNull(
      'capabilities',
      instance.capabilities
          ?.map((e) => _$LocationCapabilityEnumMap[e])
          .toList());
  writeNotNull('coordinates', instance.coordinates);
  writeNotNull('country', instance.country);
  writeNotNull('created_at', instance.createdAt);
  writeNotNull('currency', instance.currency);
  writeNotNull('description', instance.description);
  writeNotNull('facebook_url', instance.facebookUrl);
  writeNotNull('full_format_logo_url', instance.fullFormatLogoUrl);
  writeNotNull('instagram_username', instance.instagramUsername);
  writeNotNull('language_code', instance.languageCode);
  writeNotNull('logo_url', instance.logoUrl);
  writeNotNull('mcc', instance.mcc);
  writeNotNull('merchant_id', instance.merchantId);
  writeNotNull('name', instance.name);
  writeNotNull('phone_number', instance.phoneNumber);
  writeNotNull('pos_background_url', instance.posBackgroundUrl);
  writeNotNull('status', _$LocationStatusEnumMap[instance.status]);
  writeNotNull('tax_ids', instance.taxIds);
  writeNotNull('timezone', instance.timezone);
  writeNotNull('twitter_username', instance.twitterUsername);
  writeNotNull('type', _$LocationTypeEnumMap[instance.type]);
  writeNotNull('website_url', instance.websiteUrl);
  return val;
}

const _$LocationStatusEnumMap = {
  LocationStatus.ACTIVE: 'ACTIVE',
  LocationStatus.INACTIVE: 'INACTIVE',
};

const _$LocationTypeEnumMap = {
  LocationType.PHYSICAL: 'PHYSICAL',
  LocationType.MOBILE: 'MOBILE',
};

const _$LocationCapabilityEnumMap = {
  LocationCapability.CREDIT_CARD_PROCESSING: 'CREDIT_CARD_PROCESSING',
  LocationCapability.AUTOMATIC_TRANSFERS: 'AUTOMATIC_TRANSFERS',
};

TaxIds _$TaxIdsFromJson(Map<String, dynamic> json) => TaxIds(
      euVat: json['eu_vat'] as String?,
      frNaf: json['fr_naf'] as String?,
      frSiret: json['fr_siret'] as String?,
    );

Map<String, dynamic> _$TaxIdsToJson(TaxIds instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('eu_vat', instance.euVat);
  writeNotNull('fr_naf', instance.frNaf);
  writeNotNull('fr_siret', instance.frSiret);
  return val;
}

SquareCoordinates _$SquareCoordinatesFromJson(Map<String, dynamic> json) =>
    SquareCoordinates(
      longitude: json['longitude'] as String?,
      latitude: json['latitude'] as String?,
    );

Map<String, dynamic> _$SquareCoordinatesToJson(SquareCoordinates instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('latitude', instance.latitude);
  writeNotNull('longitude', instance.longitude);
  return val;
}

BusinessHours _$BusinessHoursFromJson(Map<String, dynamic> json) =>
    BusinessHours(
      periods: (json['periods'] as List<dynamic>?)
          ?.map((e) => BusinessHoursPeriod.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$BusinessHoursToJson(BusinessHours instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('periods', instance.periods);
  return val;
}

BusinessHoursPeriod _$BusinessHoursPeriodFromJson(Map<String, dynamic> json) =>
    BusinessHoursPeriod(
      dayOfWeek: $enumDecodeNullable(_$DayOfWeekEnumMap, json['day_of_week']),
      endLocalTime: json['end_local_time'] as String?,
      startLocalTime: json['start_local_time'] as String?,
    );

Map<String, dynamic> _$BusinessHoursPeriodToJson(BusinessHoursPeriod instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('day_of_week', _$DayOfWeekEnumMap[instance.dayOfWeek]);
  writeNotNull('end_local_time', instance.endLocalTime);
  writeNotNull('start_local_time', instance.startLocalTime);
  return val;
}

const _$DayOfWeekEnumMap = {
  DayOfWeek.SUN: 'SUN',
  DayOfWeek.MON: 'MON',
  DayOfWeek.TUE: 'TUE',
  DayOfWeek.WED: 'WED',
  DayOfWeek.THU: 'THU',
  DayOfWeek.FRI: 'FRI',
  DayOfWeek.SAT: 'SAT',
};

DeviceCode _$DeviceCodeFromJson(Map<String, dynamic> json) => DeviceCode(
      name: json['name'] as String?,
      createdAt: json['created_at'] as String?,
      status: $enumDecodeNullable(_$DeviceCodeStatusEnumMap, json['status']),
      id: json['id'] as String?,
      locationId: json['location_id'] as String?,
      productType:
          $enumDecodeNullable(_$ProductTypeEnumMap, json['product_type']),
      code: json['code'] as String?,
      deviceId: json['device_id'] as String?,
      pairBy: json['pair_by'] as String?,
      pairedAt: json['paired_at'] as String?,
      statusChangedAt: json['status_changed_at'] as String?,
    );

Map<String, dynamic> _$DeviceCodeToJson(DeviceCode instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('product_type', _$ProductTypeEnumMap[instance.productType]);
  writeNotNull('code', instance.code);
  writeNotNull('created_at', instance.createdAt);
  writeNotNull('device_id', instance.deviceId);
  writeNotNull('location_id', instance.locationId);
  writeNotNull('name', instance.name);
  writeNotNull('pair_by', instance.pairBy);
  writeNotNull('paired_at', instance.pairedAt);
  writeNotNull('status', _$DeviceCodeStatusEnumMap[instance.status]);
  writeNotNull('status_changed_at', instance.statusChangedAt);
  return val;
}

const _$DeviceCodeStatusEnumMap = {
  DeviceCodeStatus.UNKNOWN: 'UNKNOWN',
  DeviceCodeStatus.UNPAIRED: 'UNPAIRED',
  DeviceCodeStatus.PAIRED: 'PAIRED',
  DeviceCodeStatus.EXPIRED: 'EXPIRED',
};

const _$ProductTypeEnumMap = {
  ProductType.TERMINAL_API: 'TERMINAL_API',
};

CashDrawerShiftSummary _$CashDrawerShiftSummaryFromJson(
        Map<String, dynamic> json) =>
    CashDrawerShiftSummary(
      id: json['id'] as String?,
      description: json['description'] as String?,
      state: $enumDecodeNullable(_$CashDrawerShiftStateEnumMap, json['state']),
      closedAt: json['closed_at'] as String?,
      closedCashMoney: json['closed_cash_money'] == null
          ? null
          : Money.fromJson(json['closed_cash_money'] as Map<String, dynamic>),
      endedAt: json['ended_at'] as String?,
      expectedCashMoney: json['expected_cash_money'] == null
          ? null
          : Money.fromJson(json['expected_cash_money'] as Map<String, dynamic>),
      openedAt: json['opened_at'] as String?,
      openedCashMoney: json['opened_cash_money'] == null
          ? null
          : Money.fromJson(json['opened_cash_money'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CashDrawerShiftSummaryToJson(
    CashDrawerShiftSummary instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('closed_at', instance.closedAt);
  writeNotNull('closed_cash_money', instance.closedCashMoney);
  writeNotNull('description', instance.description);
  writeNotNull('ended_at', instance.endedAt);
  writeNotNull('expected_cash_money', instance.expectedCashMoney);
  writeNotNull('opened_at', instance.openedAt);
  writeNotNull('opened_cash_money', instance.openedCashMoney);
  writeNotNull('state', _$CashDrawerShiftStateEnumMap[instance.state]);
  return val;
}

const _$CashDrawerShiftStateEnumMap = {
  CashDrawerShiftState.OPEN: 'OPEN',
  CashDrawerShiftState.ENDED: 'ENDED',
  CashDrawerShiftState.CLOSED: 'CLOSED',
};

CashDrawerShiftEvent _$CashDrawerShiftEventFromJson(
        Map<String, dynamic> json) =>
    CashDrawerShiftEvent(
      description: json['description'] as String?,
      id: json['id'] as String?,
      createdAt: json['created_at'] as String?,
      employeeId: json['employee_id'] as String?,
      eventMoney: json['event_money'] == null
          ? null
          : Money.fromJson(json['event_money'] as Map<String, dynamic>),
      eventType:
          $enumDecodeNullable(_$CashDrawerEventTypeEnumMap, json['event_type']),
    );

Map<String, dynamic> _$CashDrawerShiftEventToJson(
    CashDrawerShiftEvent instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('created_at', instance.createdAt);
  writeNotNull('description', instance.description);
  writeNotNull('employee_id', instance.employeeId);
  writeNotNull('event_money', instance.eventMoney);
  writeNotNull('event_type', _$CashDrawerEventTypeEnumMap[instance.eventType]);
  return val;
}

const _$CashDrawerEventTypeEnumMap = {
  CashDrawerEventType.NO_SALE: 'NO_SALE',
  CashDrawerEventType.CASH_TENDER_PAYMENT: 'CASH_TENDER_PAYMENT',
  CashDrawerEventType.OTHER_TENDER_PAYMENT: 'OTHER_TENDER_PAYMENT',
  CashDrawerEventType.CASH_TENDER_CANCELLED_PAYMENT:
      'CASH_TENDER_CANCELLED_PAYMENT',
  CashDrawerEventType.OTHER_TENDER_CANCELLED_PAYMENT:
      'OTHER_TENDER_CANCELLED_PAYMENT',
  CashDrawerEventType.CASH_TENDER_REFUND: 'CASH_TENDER_REFUND',
  CashDrawerEventType.OTHER_TENDER_REFUND: 'OTHER_TENDER_REFUND',
  CashDrawerEventType.PAID_IN: 'PAID_IN',
  CashDrawerEventType.PAID_OUT: 'PAID_OUT',
};

TeamMember _$TeamMemberFromJson(Map<String, dynamic> json) => TeamMember(
      createdAt: json['created_at'] as String?,
      id: json['id'] as String?,
      status: $enumDecodeNullable(_$TeamMemberStatusEnumMap, json['status']),
      phoneNumber: json['phone_number'] as String?,
      updatedAt: json['updated_at'] as String?,
      referenceId: json['reference_id'] as String?,
      emailAddress: json['email_address'] as String?,
      givenName: json['given_name'] as String?,
      familyName: json['family_name'] as String?,
      assignedLocations: json['assigned_locations'] == null
          ? null
          : TeamMemberAssignedLocations.fromJson(
              json['assigned_locations'] as Map<String, dynamic>),
      is_owner: json['is_owner'] as bool?,
    );

Map<String, dynamic> _$TeamMemberToJson(TeamMember instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('assigned_locations', instance.assignedLocations);
  writeNotNull('created_at', instance.createdAt);
  writeNotNull('email_address', instance.emailAddress);
  writeNotNull('family_name', instance.familyName);
  writeNotNull('given_name', instance.givenName);
  writeNotNull('is_owner', instance.is_owner);
  writeNotNull('phone_number', instance.phoneNumber);
  writeNotNull('reference_id', instance.referenceId);
  writeNotNull('status', _$TeamMemberStatusEnumMap[instance.status]);
  writeNotNull('updated_at', instance.updatedAt);
  return val;
}

const _$TeamMemberStatusEnumMap = {
  TeamMemberStatus.ACTIVE: 'ACTIVE',
  TeamMemberStatus.INACTIVE: 'INACTIVE',
};

TeamMemberAssignedLocations _$TeamMemberAssignedLocationsFromJson(
        Map<String, dynamic> json) =>
    TeamMemberAssignedLocations(
      locationIds: (json['location_ids'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      assignment_type: $enumDecodeNullable(
          _$TeamMemberAssignedLocationsAssignmentTypeEnumMap,
          json['assignment_type']),
    );

Map<String, dynamic> _$TeamMemberAssignedLocationsToJson(
    TeamMemberAssignedLocations instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(
      'assignment_type',
      _$TeamMemberAssignedLocationsAssignmentTypeEnumMap[
          instance.assignment_type]);
  writeNotNull('location_ids', instance.locationIds);
  return val;
}

const _$TeamMemberAssignedLocationsAssignmentTypeEnumMap = {
  TeamMemberAssignedLocationsAssignmentType.ALL_CURRENT_AND_FUTURE_LOCATIONS:
      'ALL_CURRENT_AND_FUTURE_LOCATIONS',
  TeamMemberAssignedLocationsAssignmentType.EXPLICIT_LOCATIONS:
      'EXPLICIT_LOCATIONS',
};

BreakType _$BreakTypeFromJson(Map<String, dynamic> json) => BreakType(
      updatedAt: json['updated_at'] as String?,
      id: json['id'] as String?,
      createdAt: json['created_at'] as String?,
      locationId: json['location_id'] as String?,
      version: json['version'] as int?,
      breakMame: json['break_name'] as String?,
      expectedDuration: json['expected_duration'] as String?,
      isPaid: json['is_paid'] as bool?,
    );

Map<String, dynamic> _$BreakTypeToJson(BreakType instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('break_name', instance.breakMame);
  writeNotNull('expected_duration', instance.expectedDuration);
  writeNotNull('is_paid', instance.isPaid);
  writeNotNull('location_id', instance.locationId);
  writeNotNull('created_at', instance.createdAt);
  writeNotNull('updated_at', instance.updatedAt);
  writeNotNull('version', instance.version);
  return val;
}

Shift _$ShiftFromJson(Map<String, dynamic> json) => Shift(
      version: json['version'] as int?,
      locationId: json['location_id'] as String?,
      createdAt: json['created_at'] as String?,
      id: json['id'] as String?,
      updatedAt: json['updated_at'] as String?,
      status: $enumDecodeNullable(_$ShiftStatusEnumMap, json['status']),
      employeeId: json['employee_id'] as String?,
      timezone: json['timezone'] as String?,
      teamMemberId: json['team_member_id'] as String?,
      startAt: json['start_at'] as String?,
      endAt: json['end_at'] as String?,
      breaks: (json['breaks'] as List<dynamic>?)
          ?.map((e) => Break.fromJson(e as Map<String, dynamic>))
          .toList(),
      wage: json['wage'] == null
          ? null
          : ShiftWage.fromJson(json['wage'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ShiftToJson(Shift instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('start_at', instance.startAt);
  writeNotNull('breaks', instance.breaks);
  writeNotNull('created_at', instance.createdAt);
  writeNotNull('end_at', instance.endAt);
  writeNotNull('location_id', instance.locationId);
  writeNotNull('status', _$ShiftStatusEnumMap[instance.status]);
  writeNotNull('team_member_id', instance.teamMemberId);
  writeNotNull('timezone', instance.timezone);
  writeNotNull('updated_at', instance.updatedAt);
  writeNotNull('version', instance.version);
  writeNotNull('wage', instance.wage);
  writeNotNull('employee_id', instance.employeeId);
  return val;
}

const _$ShiftStatusEnumMap = {
  ShiftStatus.OPEN: 'OPEN',
  ShiftStatus.CLOSED: 'CLOSED',
};

Break _$BreakFromJson(Map<String, dynamic> json) => Break(
      id: json['id'] as String?,
      endAt: json['end_at'] as String?,
      startAt: json['start_at'] as String?,
      isPaid: json['is_paid'] as bool?,
      expectedDuration: json['expected_duration'] as String?,
      name: json['name'] as String?,
      breakTypeId: json['break_type_id'] as String?,
    );

Map<String, dynamic> _$BreakToJson(Break instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('break_type_id', instance.breakTypeId);
  writeNotNull('expected_duration', instance.expectedDuration);
  writeNotNull('is_paid', instance.isPaid);
  writeNotNull('name', instance.name);
  writeNotNull('start_at', instance.startAt);
  writeNotNull('end_at', instance.endAt);
  return val;
}

ShiftWage _$ShiftWageFromJson(Map<String, dynamic> json) => ShiftWage(
      title: json['title'] as String?,
      hourlyRate: json['hourly_rate'] == null
          ? null
          : Money.fromJson(json['hourly_rate'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ShiftWageToJson(ShiftWage instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('hourly_rate', instance.hourlyRate);
  writeNotNull('title', instance.title);
  return val;
}

TeamMemberWag _$TeamMemberWagFromJson(Map<String, dynamic> json) =>
    TeamMemberWag(
      hourlyRate: json['hourly_rate'] == null
          ? null
          : Money.fromJson(json['hourly_rate'] as Map<String, dynamic>),
      title: json['title'] as String?,
      teamMemberId: json['team_member_id'] as String?,
      id: json['id'] as String?,
    );

Map<String, dynamic> _$TeamMemberWagToJson(TeamMemberWag instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('hourly_rate', instance.hourlyRate);
  writeNotNull('team_member_id', instance.teamMemberId);
  writeNotNull('title', instance.title);
  return val;
}

WorkweekConfig _$WorkweekConfigFromJson(Map<String, dynamic> json) =>
    WorkweekConfig(
      id: json['id'] as String?,
      updatedAt: json['updated_at'] as String?,
      createdAt: json['created_at'] as String?,
      version: json['version'] as int?,
      startOfDayLocalTime: json['start_of_day_local_time'] as String?,
      startOfWeek: $enumDecodeNullable(_$WeekdayEnumMap, json['start_of_week']),
    );

Map<String, dynamic> _$WorkweekConfigToJson(WorkweekConfig instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('start_of_day_local_time', instance.startOfDayLocalTime);
  writeNotNull('start_of_week', _$WeekdayEnumMap[instance.startOfWeek]);
  writeNotNull('created_at', instance.createdAt);
  writeNotNull('updated_at', instance.updatedAt);
  writeNotNull('version', instance.version);
  return val;
}

const _$WeekdayEnumMap = {
  Weekday.MON: 'MON',
  Weekday.TUE: 'TUE',
  Weekday.WED: 'WED',
  Weekday.THU: 'THU',
  Weekday.FRI: 'FRI',
  Weekday.SAT: 'SAT',
  Weekday.SUN: 'SUN',
};

BankAccount _$BankAccountFromJson(Map<String, dynamic> json) => BankAccount(
      id: json['id'] as String?,
      version: json['version'] as int?,
      status: $enumDecodeNullable(_$BankAccountStatusEnumMap, json['status']),
      locationId: json['location_id'] as String?,
      referenceId: json['reference_id'] as String?,
      country: json['country'] as String?,
      currency: json['currency'] as String?,
      fingerprint: json['fingerprint'] as String?,
      accountType:
          $enumDecodeNullable(_$BankAccountTypeEnumMap, json['account_type']),
      accountNumberSuffix: json['account_number_suffix'] as String?,
      bankName: json['bank_name'] as String?,
      creditable: json['creditable'] as bool?,
      debitable: json['debitable'] as bool?,
      debitMandateReferenceId: json['debit_mandate_reference_id'] as String?,
      holderName: json['holder_name'] as String?,
      primaryBankIdentificationNumber:
          json['primary_bank_identification_number'] as String?,
      secondaryBankIdentificationNumber:
          json['secondary_bank_identification_number'] as String?,
    );

Map<String, dynamic> _$BankAccountToJson(BankAccount instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('account_number_suffix', instance.accountNumberSuffix);
  writeNotNull('account_type', _$BankAccountTypeEnumMap[instance.accountType]);
  writeNotNull('country', instance.country);
  writeNotNull('creditable', instance.creditable);
  writeNotNull('currency', instance.currency);
  writeNotNull('debitable', instance.debitable);
  writeNotNull('holder_name', instance.holderName);
  writeNotNull('primary_bank_identification_number',
      instance.primaryBankIdentificationNumber);
  writeNotNull('status', _$BankAccountStatusEnumMap[instance.status]);
  writeNotNull('bank_name', instance.bankName);
  writeNotNull('debit_mandate_reference_id', instance.debitMandateReferenceId);
  writeNotNull('fingerprint', instance.fingerprint);
  writeNotNull('location_id', instance.locationId);
  writeNotNull('reference_id', instance.referenceId);
  writeNotNull('secondary_bank_identification_number',
      instance.secondaryBankIdentificationNumber);
  writeNotNull('version', instance.version);
  return val;
}

const _$BankAccountStatusEnumMap = {
  BankAccountStatus.VERIFICATION_IN_PROGRESS: 'VERIFICATION_IN_PROGRESS',
  BankAccountStatus.VERIFIED: 'VERIFIED',
  BankAccountStatus.DISABLED: 'DISABLED',
};

const _$BankAccountTypeEnumMap = {
  BankAccountType.CHECKING: 'CHECKING',
  BankAccountType.SAVINGS: 'SAVINGS',
  BankAccountType.INVESTMENT: 'INVESTMENT',
  BankAccountType.OTHER: 'OTHER',
  BankAccountType.BUSINESS_CHECKING: 'BUSINESS_CHECKING',
};

Site _$SiteFromJson(Map<String, dynamic> json) => Site(
      id: json['id'] as String?,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      domain: json['domain'] as String?,
      isPublished: json['is_published'] as bool?,
      siteTitle: json['site_title'] as String?,
    );

Map<String, dynamic> _$SiteToJson(Site instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('created_at', instance.createdAt);
  writeNotNull('domain', instance.domain);
  writeNotNull('is_published', instance.isPublished);
  writeNotNull('site_title', instance.siteTitle);
  writeNotNull('updated_at', instance.updatedAt);
  return val;
}

TerminalCheckout _$TerminalCheckoutFromJson(Map<String, dynamic> json) =>
    TerminalCheckout(
      updatedAt: json['updated_at'] as String?,
      createdAt: json['created_at'] as String?,
      id: json['id'] as String?,
      referenceId: json['reference_id'] as String?,
      locationId: json['location_id'] as String?,
      status: json['status'] as String?,
      customerId: json['customer_id'] as String?,
      amountMoney: json['amount_money'] == null
          ? null
          : Money.fromJson(json['amount_money'] as Map<String, dynamic>),
      note: json['note'] as String?,
      cancelReason: $enumDecodeNullable(
          _$ActionCancelReasonEnumMap, json['cancel_reason']),
      appId: json['app_id'] as String?,
      deadlineDuration: json['deadline_duration'] as String?,
      deviceOptions: json['device_options'] == null
          ? null
          : DeviceCheckoutOptions.fromJson(
              json['device_options'] as Map<String, dynamic>),
      paymentIds: (json['payment_ids'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      paymentType: $enumDecodeNullable(
          _$CheckoutOptionsPaymentTypeEnumMap, json['payment_type']),
    );

Map<String, dynamic> _$TerminalCheckoutToJson(TerminalCheckout instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('amount_money', instance.amountMoney);
  writeNotNull('device_options', instance.deviceOptions);
  writeNotNull('app_id', instance.appId);
  writeNotNull(
      'cancel_reason', _$ActionCancelReasonEnumMap[instance.cancelReason]);
  writeNotNull('created_at', instance.createdAt);
  writeNotNull('customer_id', instance.customerId);
  writeNotNull('deadline_duration', instance.deadlineDuration);
  writeNotNull('location_id', instance.locationId);
  writeNotNull('note', instance.note);
  writeNotNull('payment_ids', instance.paymentIds);
  writeNotNull('payment_type',
      _$CheckoutOptionsPaymentTypeEnumMap[instance.paymentType]);
  writeNotNull('reference_id', instance.referenceId);
  writeNotNull('status', instance.status);
  writeNotNull('updated_at', instance.updatedAt);
  return val;
}

const _$ActionCancelReasonEnumMap = {
  ActionCancelReason.BUYER_CANCELED: 'BUYER_CANCELED',
  ActionCancelReason.SELLER_CANCELED: 'SELLER_CANCELED',
  ActionCancelReason.TIMED_OUT: 'TIMED_OUT',
};

const _$CheckoutOptionsPaymentTypeEnumMap = {
  CheckoutOptionsPaymentType.CARD_PRESENT: 'CARD_PRESENT',
  CheckoutOptionsPaymentType.MANUAL_CARD_ENTRY: 'MANUAL_CARD_ENTRY',
  CheckoutOptionsPaymentType.FELICA_ID: 'FELICA_ID',
  CheckoutOptionsPaymentType.FELICA_QUICPAY: 'FELICA_QUICPAY',
  CheckoutOptionsPaymentType.FELICA_TRANSPORTATION_GROUP:
      'FELICA_TRANSPORTATION_GROUP',
  CheckoutOptionsPaymentType.FELICA_ALL: 'FELICA_ALL',
};

DeviceCheckoutOptions _$DeviceCheckoutOptionsFromJson(
        Map<String, dynamic> json) =>
    DeviceCheckoutOptions(
      deviceId: json['device_id'] as String?,
      skipReceiptScreen: json['skip_receipt_screen'] as bool?,
      tipSettings: json['tip_settings'] == null
          ? null
          : TipSettings.fromJson(json['tip_settings'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DeviceCheckoutOptionsToJson(
    DeviceCheckoutOptions instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('device_id', instance.deviceId);
  writeNotNull('skip_receipt_screen', instance.skipReceiptScreen);
  writeNotNull('tip_settings', instance.tipSettings);
  return val;
}

TipSettings _$TipSettingsFromJson(Map<String, dynamic> json) => TipSettings(
      allowTipping: json['allow_tipping'] as bool?,
      customTipField: json['custom_tip_field'] as bool?,
      separateTipScreen: json['separate_tip_screen'] as bool?,
      smartTipping: json['smart_tipping'] as bool?,
      tipPercentages: (json['tip_percentages'] as List<dynamic>?)
          ?.map((e) => e as int)
          .toList(),
    );

Map<String, dynamic> _$TipSettingsToJson(TipSettings instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('allow_tipping', instance.allowTipping);
  writeNotNull('custom_tip_field', instance.customTipField);
  writeNotNull('separate_tip_screen', instance.separateTipScreen);
  writeNotNull('smart_tipping', instance.smartTipping);
  writeNotNull('tip_percentages', instance.tipPercentages);
  return val;
}

TerminalCheckoutResponse _$TerminalCheckoutResponseFromJson(
        Map<String, dynamic> json) =>
    TerminalCheckoutResponse(
      errors: (json['errors'] as List<dynamic>?)
          ?.map((e) => SquareError.fromJson(e as Map<String, dynamic>))
          .toList(),
      termCheckout: json['checkout'] == null
          ? null
          : TerminalCheckout.fromJson(json['checkout'] as Map<String, dynamic>),
      checkouts: (json['checkouts'] as List<dynamic>?)
          ?.map((e) => TerminalCheckout.fromJson(e as Map<String, dynamic>))
          .toList(),
      cursor: json['cursor'] as String?,
    );

Map<String, dynamic> _$TerminalCheckoutResponseToJson(
    TerminalCheckoutResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('errors', instance.errors);
  writeNotNull('checkout', instance.termCheckout);
  writeNotNull('checkouts', instance.checkouts);
  writeNotNull('cursor', instance.cursor);
  return val;
}

TerminalRefundResponse _$TerminalRefundResponseFromJson(
        Map<String, dynamic> json) =>
    TerminalRefundResponse(
      errors: (json['errors'] as List<dynamic>?)
          ?.map((e) => SquareError.fromJson(e as Map<String, dynamic>))
          .toList(),
      refund: json['checkout'] == null
          ? null
          : TerminalRefund.fromJson(json['checkout'] as Map<String, dynamic>),
      refunds: (json['refunds'] as List<dynamic>?)
          ?.map((e) => TerminalRefund.fromJson(e as Map<String, dynamic>))
          .toList(),
      cursor: json['cursor'] as String?,
    );

Map<String, dynamic> _$TerminalRefundResponseToJson(
    TerminalRefundResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('errors', instance.errors);
  writeNotNull('checkout', instance.refund);
  writeNotNull('refunds', instance.refunds);
  writeNotNull('cursor', instance.cursor);
  return val;
}

CreateTerminalCheckoutRequest _$CreateTerminalCheckoutRequestFromJson(
        Map<String, dynamic> json) =>
    CreateTerminalCheckoutRequest(
      idempotencyKey: json['idempotency_key'] as String,
      checkout:
          TerminalCheckout.fromJson(json['checkout'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CreateTerminalCheckoutRequestToJson(
        CreateTerminalCheckoutRequest instance) =>
    <String, dynamic>{
      'idempotency_key': instance.idempotencyKey,
      'checkout': instance.checkout,
    };

CreateOrderRequest _$CreateOrderRequestFromJson(Map<String, dynamic> json) =>
    CreateOrderRequest(
      idempotencyKey: json['idempotency_key'] as String,
      order: json['order'] == null
          ? null
          : Order.fromJson(json['order'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CreateOrderRequestToJson(CreateOrderRequest instance) {
  final val = <String, dynamic>{
    'idempotency_key': instance.idempotencyKey,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('order', instance.order);
  return val;
}

CalculateOrderRequest _$CalculateOrderRequestFromJson(
        Map<String, dynamic> json) =>
    CalculateOrderRequest(
      idempotencyKey: json['idempotency_key'] as String,
      order: json['order'] == null
          ? null
          : Order.fromJson(json['order'] as Map<String, dynamic>),
      proposedRewards: (json['proposed_rewards'] as List<dynamic>?)
          ?.map((e) => OrderReward.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CalculateOrderRequestToJson(
    CalculateOrderRequest instance) {
  final val = <String, dynamic>{
    'idempotency_key': instance.idempotencyKey,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('order', instance.order);
  writeNotNull('proposed_rewards', instance.proposedRewards);
  return val;
}

CloneOrderRequest _$CloneOrderRequestFromJson(Map<String, dynamic> json) =>
    CloneOrderRequest(
      idempotencyKey: json['idempotency_key'] as String?,
      orderId: json['order_id'] as String,
      version: json['version'] as int?,
    );

Map<String, dynamic> _$CloneOrderRequestToJson(CloneOrderRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('idempotency_key', instance.idempotencyKey);
  val['order_id'] = instance.orderId;
  writeNotNull('version', instance.version);
  return val;
}

UpdateOrderRequest _$UpdateOrderRequestFromJson(Map<String, dynamic> json) =>
    UpdateOrderRequest(
      idempotencyKey: json['idempotency_key'] as String?,
      fieldsToClear: (json['fields_to_clear'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      order: json['order'] == null
          ? null
          : Order.fromJson(json['order'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UpdateOrderRequestToJson(UpdateOrderRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('idempotency_key', instance.idempotencyKey);
  writeNotNull('order', instance.order);
  writeNotNull('fields_to_clear', instance.fieldsToClear);
  return val;
}

PayOrderRequest _$PayOrderRequestFromJson(Map<String, dynamic> json) =>
    PayOrderRequest(
      idempotencyKey: json['idempotency_key'] as String?,
      orderVersion: json['order_version'] as int?,
      paymentIds: (json['payment_ids'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$PayOrderRequestToJson(PayOrderRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('idempotency_key', instance.idempotencyKey);
  writeNotNull('order_version', instance.orderVersion);
  writeNotNull('payment_ids', instance.paymentIds);
  return val;
}

SearchOrderRequest _$SearchOrderRequestFromJson(Map<String, dynamic> json) =>
    SearchOrderRequest(
      limit: json['limit'] as int?,
      query: json['query'] == null
          ? null
          : SearchOrdersQuery.fromJson(json['query'] as Map<String, dynamic>),
      cursor: json['cursor'] as String?,
      locationIds: (json['location_ids'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      returnEntries: json['return_entries'] as bool?,
    );

Map<String, dynamic> _$SearchOrderRequestToJson(SearchOrderRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('location_ids', instance.locationIds);
  writeNotNull('cursor', instance.cursor);
  writeNotNull('query', instance.query);
  writeNotNull('limit', instance.limit);
  writeNotNull('return_entries', instance.returnEntries);
  return val;
}

SearchOrdersQuery _$SearchOrdersQueryFromJson(Map<String, dynamic> json) =>
    SearchOrdersQuery(
      sort: json['sort'] == null
          ? null
          : SearchOrdersSort.fromJson(json['sort'] as Map<String, dynamic>),
      filter: json['filter'] == null
          ? null
          : SearchOrdersFilter.fromJson(json['filter'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SearchOrdersQueryToJson(SearchOrdersQuery instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('filter', instance.filter);
  writeNotNull('sort', instance.sort);
  return val;
}

SearchOrdersSort _$SearchOrdersSortFromJson(Map<String, dynamic> json) =>
    SearchOrdersSort(
      sortOrder: $enumDecodeNullable(_$SortOrderEnumMap, json['sort_order']),
      sortField: json['sort_field'] as String?,
    );

Map<String, dynamic> _$SearchOrdersSortToJson(SearchOrdersSort instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('sort_field', instance.sortField);
  writeNotNull('sort_order', _$SortOrderEnumMap[instance.sortOrder]);
  return val;
}

SearchOrdersFilter _$SearchOrdersFilterFromJson(Map<String, dynamic> json) =>
    SearchOrdersFilter(
      customerFilter: json['customer_filter'] == null
          ? null
          : SearchOrdersCustomerFilter.fromJson(
              json['customer_filter'] as Map<String, dynamic>),
      dateTimeFilter: json['date_time_filter'] == null
          ? null
          : SearchOrdersDateTimeFilter.fromJson(
              json['date_time_filter'] as Map<String, dynamic>),
      fulfillmentFilter: json['fulfillment_filter'] == null
          ? null
          : SearchOrdersFulfillmentFilter.fromJson(
              json['fulfillment_filter'] as Map<String, dynamic>),
      sourceFilter: json['source_filter'] == null
          ? null
          : SearchOrdersSourceFilter.fromJson(
              json['source_filter'] as Map<String, dynamic>),
      stateFilter: json['state_filter'] == null
          ? null
          : SearchOrdersStateFilter.fromJson(
              json['state_filter'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SearchOrdersFilterToJson(SearchOrdersFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('customer_filter', instance.customerFilter);
  writeNotNull('date_time_filter', instance.dateTimeFilter);
  writeNotNull('fulfillment_filter', instance.fulfillmentFilter);
  writeNotNull('source_filter', instance.sourceFilter);
  writeNotNull('state_filter', instance.stateFilter);
  return val;
}

SearchOrdersStateFilter _$SearchOrdersStateFilterFromJson(
        Map<String, dynamic> json) =>
    SearchOrdersStateFilter(
      states: (json['states'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$OrderStateEnumMap, e))
          .toList(),
    );

Map<String, dynamic> _$SearchOrdersStateFilterToJson(
    SearchOrdersStateFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(
      'states', instance.states?.map((e) => _$OrderStateEnumMap[e]).toList());
  return val;
}

const _$OrderStateEnumMap = {
  OrderState.OPEN: 'OPEN',
  OrderState.COMPLETED: 'COMPLETED',
  OrderState.CANCELED: 'CANCELED',
  OrderState.DRAFT: 'DRAFT',
};

SearchOrdersSourceFilter _$SearchOrdersSourceFilterFromJson(
        Map<String, dynamic> json) =>
    SearchOrdersSourceFilter(
      sourceNames: (json['source_names'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$SearchOrdersSourceFilterToJson(
    SearchOrdersSourceFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('source_names', instance.sourceNames);
  return val;
}

SearchOrdersFulfillmentFilter _$SearchOrdersFulfillmentFilterFromJson(
        Map<String, dynamic> json) =>
    SearchOrdersFulfillmentFilter(
      fulfillmentStates: (json['fulfillment_states'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$OrderFulfillmentStateEnumMap, e))
          .toList(),
      fulfillmentTypes: (json['fulfillment_types'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$OrderFulfillmentTypeEnumMap, e))
          .toList(),
    );

Map<String, dynamic> _$SearchOrdersFulfillmentFilterToJson(
    SearchOrdersFulfillmentFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(
      'fulfillment_states',
      instance.fulfillmentStates
          ?.map((e) => _$OrderFulfillmentStateEnumMap[e])
          .toList());
  writeNotNull(
      'fulfillment_types',
      instance.fulfillmentTypes
          ?.map((e) => _$OrderFulfillmentTypeEnumMap[e])
          .toList());
  return val;
}

const _$OrderFulfillmentStateEnumMap = {
  OrderFulfillmentState.PROPOSED: 'PROPOSED',
  OrderFulfillmentState.RESERVED: 'RESERVED',
  OrderFulfillmentState.PREPARED: 'PREPARED',
  OrderFulfillmentState.COMPLETED: 'COMPLETED',
  OrderFulfillmentState.CANCELED: 'CANCELED',
  OrderFulfillmentState.FAILED: 'FAILED',
};

const _$OrderFulfillmentTypeEnumMap = {
  OrderFulfillmentType.PICKUP: 'PICKUP',
  OrderFulfillmentType.SHIPMENT: 'SHIPMENT',
};

SearchOrdersDateTimeFilter _$SearchOrdersDateTimeFilterFromJson(
        Map<String, dynamic> json) =>
    SearchOrdersDateTimeFilter(
      updatedAt: json['updated_at'] == null
          ? null
          : TimeRange.fromJson(json['updated_at'] as Map<String, dynamic>),
      createdAt: json['created_at'] == null
          ? null
          : TimeRange.fromJson(json['created_at'] as Map<String, dynamic>),
      closedAt: json['closed_at'] == null
          ? null
          : TimeRange.fromJson(json['closed_at'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SearchOrdersDateTimeFilterToJson(
    SearchOrdersDateTimeFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('closed_at', instance.closedAt);
  writeNotNull('created_at', instance.createdAt);
  writeNotNull('updated_at', instance.updatedAt);
  return val;
}

SearchOrdersCustomerFilter _$SearchOrdersCustomerFilterFromJson(
        Map<String, dynamic> json) =>
    SearchOrdersCustomerFilter(
      customerIds: (json['customer_ids'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$SearchOrdersCustomerFilterToJson(
    SearchOrdersCustomerFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('customer_ids', instance.customerIds);
  return val;
}

SearchTerminalRequest _$SearchTerminalRequestFromJson(
        Map<String, dynamic> json) =>
    SearchTerminalRequest(
      cursor: json['cursor'] as String?,
      query:
          TerminalSearchQuery.fromJson(json['query'] as Map<String, dynamic>),
      limit: json['limit'] as int,
    );

Map<String, dynamic> _$SearchTerminalRequestToJson(
    SearchTerminalRequest instance) {
  final val = <String, dynamic>{
    'query': instance.query,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('cursor', instance.cursor);
  val['limit'] = instance.limit;
  return val;
}

CreateRefundRequest _$CreateRefundRequestFromJson(Map<String, dynamic> json) =>
    CreateRefundRequest(
      idempotencyKey: json['idempotency_key'] as String,
      refund: TerminalRefund.fromJson(json['refund'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CreateRefundRequestToJson(
        CreateRefundRequest instance) =>
    <String, dynamic>{
      'idempotency_key': instance.idempotencyKey,
      'refund': instance.refund,
    };

TerminalRefund _$TerminalRefundFromJson(Map<String, dynamic> json) =>
    TerminalRefund(
      createdAt: json['created_at'] as String?,
      status:
          $enumDecodeNullable(_$TerimnalRefundStatusEnumMap, json['status']),
      deviceId: json['device_id'] as String?,
      deadlineDuration: json['deadline_duration'] as String?,
      appId: json['app_id'] as String?,
      cancelReason: $enumDecodeNullable(
          _$ActionCancelReasonEnumMap, json['cancel_reason']),
      amountMoney: json['amount_money'] == null
          ? null
          : Money.fromJson(json['amount_money'] as Map<String, dynamic>),
      locationId: json['location_id'] as String?,
      id: json['id'] as String?,
      updatedAt: json['updated_at'] as String?,
      reason: json['reason'] as String?,
      orderId: json['order_id'] as String?,
      paymentId: json['payment_id'] as String?,
      refundId: json['refund_id'] as String?,
    );

Map<String, dynamic> _$TerminalRefundToJson(TerminalRefund instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('amount_money', instance.amountMoney);
  writeNotNull('payment_id', instance.paymentId);
  writeNotNull('app_id', instance.appId);
  writeNotNull(
      'cancel_reason', _$ActionCancelReasonEnumMap[instance.cancelReason]);
  writeNotNull('created_at', instance.createdAt);
  writeNotNull('deadline_duration', instance.deadlineDuration);
  writeNotNull('device_id', instance.deviceId);
  writeNotNull('location_id', instance.locationId);
  writeNotNull('order_id', instance.orderId);
  writeNotNull('reason', instance.reason);
  writeNotNull('refund_id', instance.refundId);
  writeNotNull('status', _$TerimnalRefundStatusEnumMap[instance.status]);
  writeNotNull('updated_at', instance.updatedAt);
  return val;
}

const _$TerimnalRefundStatusEnumMap = {
  TerimnalRefundStatus.PENDING: 'PENDING',
  TerimnalRefundStatus.IN_PROGRESS: 'IN_PROGRESS',
  TerimnalRefundStatus.CANCELED: 'CANCELED',
  TerimnalRefundStatus.COMPLETED: 'COMPLETED',
};

TerminalSearchQuery _$TerminalSearchQueryFromJson(Map<String, dynamic> json) =>
    TerminalSearchQuery(
      filter: json['filter'] == null
          ? null
          : TerminalQueryFilter.fromJson(
              json['filter'] as Map<String, dynamic>),
      sort: json['sort'] == null
          ? null
          : TerminalQuerySort.fromJson(json['sort'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TerminalSearchQueryToJson(TerminalSearchQuery instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('filter', instance.filter);
  writeNotNull('sort', instance.sort);
  return val;
}

TerminalQueryFilter _$TerminalQueryFilterFromJson(Map<String, dynamic> json) =>
    TerminalQueryFilter(
      deviceId: json['device_id'] as String?,
      status: $enumDecodeNullable(_$TerminalStatusEnumMap, json['status']),
      createdAt: json['created_at'] as String?,
    );

Map<String, dynamic> _$TerminalQueryFilterToJson(TerminalQueryFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('created_at', instance.createdAt);
  writeNotNull('device_id', instance.deviceId);
  writeNotNull('status', _$TerminalStatusEnumMap[instance.status]);
  return val;
}

const _$TerminalStatusEnumMap = {
  TerminalStatus.PENDING: 'PENDING',
  TerminalStatus.IN_PROGRESS: 'IN_PROGRESS',
  TerminalStatus.CANCELED: 'CANCELED',
  TerminalStatus.COMPLETED: 'COMPLETED',
};

TerminalQuerySort _$TerminalQuerySortFromJson(Map<String, dynamic> json) =>
    TerminalQuerySort(
      sortOrder: $enumDecodeNullable(_$SortOrderEnumMap, json['sort_order']),
    );

Map<String, dynamic> _$TerminalQuerySortToJson(TerminalQuerySort instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('sort_order', _$SortOrderEnumMap[instance.sortOrder]);
  return val;
}

OrderResponse _$OrderResponseFromJson(Map<String, dynamic> json) =>
    OrderResponse(
      errors: (json['errors'] as List<dynamic>?)
          ?.map((e) => SquareError.fromJson(e as Map<String, dynamic>))
          .toList(),
      order: json['order'] == null
          ? null
          : Order.fromJson(json['order'] as Map<String, dynamic>),
      orders: (json['orders'] as List<dynamic>?)
          ?.map((e) => Order.fromJson(e as Map<String, dynamic>))
          .toList(),
      cursor: json['cursor'] as String?,
      orderEntries: json['order_entries'] == null
          ? null
          : OrderEntry.fromJson(json['order_entries'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$OrderResponseToJson(OrderResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('errors', instance.errors);
  writeNotNull('order', instance.order);
  writeNotNull('orders', instance.orders);
  writeNotNull('cursor', instance.cursor);
  writeNotNull('order_entries', instance.orderEntries);
  return val;
}

BatchOrderRequest _$BatchOrderRequestFromJson(Map<String, dynamic> json) =>
    BatchOrderRequest(
      locationId: json['location_id'] as String?,
      orderIds:
          (json['order_ids'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$BatchOrderRequestToJson(BatchOrderRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('location_id', instance.locationId);
  val['order_ids'] = instance.orderIds;
  return val;
}

CreateSubscriptionRequest _$CreateSubscriptionRequestFromJson(
        Map<String, dynamic> json) =>
    CreateSubscriptionRequest(
      locationId: json['location_id'] as String,
      idempotencyKey: json['idempotency_key'] as String?,
      customerId: json['customer_id'] as String,
      timezone: json['timezone'] as String?,
      source: json['source'] == null
          ? null
          : SubscriptionSource.fromJson(json['source'] as Map<String, dynamic>),
      cardId: json['card_id'] as String?,
      taxPercentage: json['tax_percentage'] as String?,
      startDate: json['start_date'] as String?,
      priceOverrideMoney: json['price_override_money'] == null
          ? null
          : Money.fromJson(
              json['price_override_money'] as Map<String, dynamic>),
      canceledDate: json['canceled_date'] as String?,
      planId: json['plan_id'] as String,
    );

Map<String, dynamic> _$CreateSubscriptionRequestToJson(
    CreateSubscriptionRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('idempotency_key', instance.idempotencyKey);
  val['location_id'] = instance.locationId;
  val['plan_id'] = instance.planId;
  val['customer_id'] = instance.customerId;
  writeNotNull('start_date', instance.startDate);
  writeNotNull('canceled_date', instance.canceledDate);
  writeNotNull('tax_percentage', instance.taxPercentage);
  writeNotNull('price_override_money', instance.priceOverrideMoney);
  writeNotNull('card_id', instance.cardId);
  writeNotNull('timezone', instance.timezone);
  writeNotNull('source', instance.source);
  return val;
}

SubscriptionResponse _$SubscriptionResponseFromJson(
        Map<String, dynamic> json) =>
    SubscriptionResponse(
      errors: (json['errors'] as List<dynamic>?)
          ?.map((e) => SquareError.fromJson(e as Map<String, dynamic>))
          .toList(),
      subscriptions: (json['subscriptions'] as List<dynamic>?)
          ?.map((e) => Subscription.fromJson(e as Map<String, dynamic>))
          .toList(),
      subscription: json['subscription'] == null
          ? null
          : Subscription.fromJson(json['subscription'] as Map<String, dynamic>),
      cursor: json['cursor'] as String?,
      actions: (json['actions'] as List<dynamic>?)
          ?.map((e) => SubscriptionAction.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SubscriptionResponseToJson(
    SubscriptionResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('errors', instance.errors);
  writeNotNull('subscription', instance.subscription);
  writeNotNull('subscriptions', instance.subscriptions);
  writeNotNull('cursor', instance.cursor);
  writeNotNull('actions', instance.actions);
  return val;
}

SearchSubscriptionRequest _$SearchSubscriptionRequestFromJson(
        Map<String, dynamic> json) =>
    SearchSubscriptionRequest(
      cursor: json['cursor'] as String?,
      query: json['query'] == null
          ? null
          : SearchSubscriptionsQuery.fromJson(
              json['query'] as Map<String, dynamic>),
      limit: json['limit'] as int?,
      include:
          (json['include'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$SearchSubscriptionRequestToJson(
    SearchSubscriptionRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('cursor', instance.cursor);
  writeNotNull('limit', instance.limit);
  writeNotNull('query', instance.query);
  writeNotNull('include', instance.include);
  return val;
}

SubscriptionEventResponse _$SubscriptionEventResponseFromJson(
        Map<String, dynamic> json) =>
    SubscriptionEventResponse(
      errors: (json['errors'] as List<dynamic>?)
          ?.map((e) => SquareError.fromJson(e as Map<String, dynamic>))
          .toList(),
      subscriptionEvents: (json['subscription_events'] as List<dynamic>?)
          ?.map((e) => SubscriptionEvent.fromJson(e as Map<String, dynamic>))
          .toList(),
      subscriptionEvent: json['subscription_event'] == null
          ? null
          : SubscriptionEvent.fromJson(
              json['subscription_event'] as Map<String, dynamic>),
      cursor: json['cursor'] as String?,
    );

Map<String, dynamic> _$SubscriptionEventResponseToJson(
    SubscriptionEventResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('errors', instance.errors);
  writeNotNull('subscription_event', instance.subscriptionEvent);
  writeNotNull('subscription_events', instance.subscriptionEvents);
  writeNotNull('cursor', instance.cursor);
  return val;
}

SubscriptionStateRequest _$SubscriptionStateRequestFromJson(
        Map<String, dynamic> json) =>
    SubscriptionStateRequest(
      pauseCycleDuration: json['pause_cycle_duration'] as int?,
      pauseEffectiveDate: json['pause_effective_date'] as String?,
      pauseReason: json['pause_reason'] as String?,
      resumeChangeTiming: $enumDecodeNullable(
          _$ChangeTimingEnumMap, json['resume_change_timing']),
      resumeEffectiveDate: json['resume_effective_date'] as String?,
    );

Map<String, dynamic> _$SubscriptionStateRequestToJson(
    SubscriptionStateRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('pause_effective_date', instance.pauseEffectiveDate);
  writeNotNull('pause_cycle_duration', instance.pauseCycleDuration);
  writeNotNull('resume_effective_date', instance.resumeEffectiveDate);
  writeNotNull('resume_change_timing',
      _$ChangeTimingEnumMap[instance.resumeChangeTiming]);
  writeNotNull('pause_reason', instance.pauseReason);
  return val;
}

const _$ChangeTimingEnumMap = {
  ChangeTiming.IMMEDIATE: 'IMMEDIATE',
  ChangeTiming.END_OF_BILLING_CYCLE: 'END_OF_BILLING_CYCLE',
};

InvoiceResponse _$InvoiceResponseFromJson(Map<String, dynamic> json) =>
    InvoiceResponse(
      errors: (json['errors'] as List<dynamic>?)
          ?.map((e) => SquareError.fromJson(e as Map<String, dynamic>))
          .toList(),
      invoice: json['invoice'] == null
          ? null
          : Invoice.fromJson(json['invoice'] as Map<String, dynamic>),
      invoices: (json['invoices'] as List<dynamic>?)
          ?.map((e) => Invoice.fromJson(e as Map<String, dynamic>))
          .toList(),
      cursor: json['cursor'] as String?,
    );

Map<String, dynamic> _$InvoiceResponseToJson(InvoiceResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('errors', instance.errors);
  writeNotNull('invoice', instance.invoice);
  writeNotNull('invoices', instance.invoices);
  writeNotNull('cursor', instance.cursor);
  return val;
}

CreateInvoiceRequest _$CreateInvoiceRequestFromJson(
        Map<String, dynamic> json) =>
    CreateInvoiceRequest(
      idempotencyKey: json['idempotency_key'] as String?,
      invoice: json['invoice'] == null
          ? null
          : Invoice.fromJson(json['invoice'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CreateInvoiceRequestToJson(
    CreateInvoiceRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('idempotency_key', instance.idempotencyKey);
  writeNotNull('invoice', instance.invoice);
  return val;
}

SearchInvoiceRequest _$SearchInvoiceRequestFromJson(
        Map<String, dynamic> json) =>
    SearchInvoiceRequest(
      query: InvoiceQuery.fromJson(json['query'] as Map<String, dynamic>),
      limit: json['limit'] as int?,
      cursor: json['cursor'] as String?,
    );

Map<String, dynamic> _$SearchInvoiceRequestToJson(
    SearchInvoiceRequest instance) {
  final val = <String, dynamic>{
    'query': instance.query,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('limit', instance.limit);
  writeNotNull('cursor', instance.cursor);
  return val;
}

UpdateInvoiceRequest _$UpdateInvoiceRequestFromJson(
        Map<String, dynamic> json) =>
    UpdateInvoiceRequest(
      idempotencyKey: json['idempotency_key'] as String?,
      fieldsToClear: (json['fields_to_clear'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      order: Order.fromJson(json['order'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UpdateInvoiceRequestToJson(
    UpdateInvoiceRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('idempotency_key', instance.idempotencyKey);
  val['order'] = instance.order;
  writeNotNull('fields_to_clear', instance.fieldsToClear);
  return val;
}

PublishInvoiceRequest _$PublishInvoiceRequestFromJson(
        Map<String, dynamic> json) =>
    PublishInvoiceRequest(
      version: json['version'] as int,
      idempotencyKey: json['idempotency_key'] as String?,
    );

Map<String, dynamic> _$PublishInvoiceRequestToJson(
    PublishInvoiceRequest instance) {
  final val = <String, dynamic>{
    'version': instance.version,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('idempotency_key', instance.idempotencyKey);
  return val;
}
