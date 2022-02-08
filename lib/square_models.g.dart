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

SubscriptionResponse _$SubscriptionResponseFromJson(
        Map<String, dynamic> json) =>
    SubscriptionResponse(
      erros: (json['erros'] as List<dynamic>?)
          ?.map((e) => SquareError.fromJson(e as Map<String, dynamic>))
          .toList(),
      subscription: json['subscription'] == null
          ? null
          : Subscription.fromJson(json['subscription'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SubscriptionResponseToJson(
    SubscriptionResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('erros', instance.erros);
  writeNotNull('subscription', instance.subscription);
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
    CustomerQuery();

Map<String, dynamic> _$CustomerQueryToJson(CustomerQuery instance) =>
    <String, dynamic>{};

FilterValue _$FilterValueFromJson(Map<String, dynamic> json) => FilterValue();

Map<String, dynamic> _$FilterValueToJson(FilterValue instance) =>
    <String, dynamic>{};

CustomerTextFilter _$CustomerTextFilterFromJson(Map<String, dynamic> json) =>
    CustomerTextFilter();

Map<String, dynamic> _$CustomerTextFilterToJson(CustomerTextFilter instance) =>
    <String, dynamic>{};

CustomerCreationSourceFilter _$CustomerCreationSourceFilterFromJson(
        Map<String, dynamic> json) =>
    CustomerCreationSourceFilter();

Map<String, dynamic> _$CustomerCreationSourceFilterToJson(
        CustomerCreationSourceFilter instance) =>
    <String, dynamic>{};

TimeRange _$TimeRangeFromJson(Map<String, dynamic> json) => TimeRange();

Map<String, dynamic> _$TimeRangeToJson(TimeRange instance) =>
    <String, dynamic>{};

CustomerFilter _$CustomerFilterFromJson(Map<String, dynamic> json) =>
    CustomerFilter();

Map<String, dynamic> _$CustomerFilterToJson(CustomerFilter instance) =>
    <String, dynamic>{};

CustomerSort _$CustomerSortFromJson(Map<String, dynamic> json) =>
    CustomerSort();

Map<String, dynamic> _$CustomerSortToJson(CustomerSort instance) =>
    <String, dynamic>{};
