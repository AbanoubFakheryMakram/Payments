class WalletPayResponse {
  WalletPayResponse({
    this.id,
    this.pending,
    this.amountCents,
    this.success,
    this.isAuth,
    this.isCapture,
    this.isStandalonePayment,
    this.isVoided,
    this.isRefunded,
    this.is3dSecure,
    this.integrationId,
    this.profileId,
    this.hasParentTransaction,
    this.order,
    this.createdAt,
    this.transactionProcessedCallbackResponses,
    this.currency,
    this.sourceData,
    this.apiSource,
    this.terminalId,
    this.merchantCommission,
    this.installment,
    this.discountDetails,
    this.isVoid,
    this.isRefund,
    this.data,
    this.isHidden,
    this.paymentKeyClaims,
    this.errorOccured,
    this.isLive,
    this.otherEndpointReference,
    this.refundedAmountCents,
    this.sourceId,
    this.isCaptured,
    this.capturedAmount,
    this.merchantStaffTag,
    this.updatedAt,
    this.isSettled,
    this.billBalanced,
    this.isBill,
    this.owner,
    this.parentTransaction,
    this.redirectUrl,
    this.iframeRedirectionUrl,
  });

  WalletPayResponse.fromJson(dynamic json) {
    id = json['id'];
    pending = json['pending'];
    amountCents = json['amount_cents'];
    success = json['success'];
    isAuth = json['is_auth'];
    isCapture = json['is_capture'];
    isStandalonePayment = json['is_standalone_payment'];
    isVoided = json['is_voided'];
    isRefunded = json['is_refunded'];
    is3dSecure = json['is_3d_secure'];
    integrationId = json['integration_id'];
    profileId = json['profile_id'];
    hasParentTransaction = json['has_parent_transaction'];
    order = json['order'] != null ? Order.fromJson(json['order']) : null;
    createdAt = json['created_at'];
    currency = json['currency'];
    sourceData = json['source_data'] != null ? SourceData.fromJson(json['source_data']) : null;
    apiSource = json['api_source'];
    terminalId = json['terminal_id'];
    merchantCommission = json['merchant_commission'];
    installment = json['installment'];
    isVoid = json['is_void'];
    isRefund = json['is_refund'];
    data = json['data'] != null ? Data.fromJson(json['data']) : null;
    isHidden = json['is_hidden'];
    paymentKeyClaims = json['payment_key_claims'] != null ? PaymentKeyClaims.fromJson(json['payment_key_claims']) : null;
    errorOccured = json['error_occured'];
    isLive = json['is_live'];
    otherEndpointReference = json['other_endpoint_reference'];
    refundedAmountCents = json['refunded_amount_cents'];
    sourceId = json['source_id'];
    isCaptured = json['is_captured'];
    capturedAmount = json['captured_amount'];
    merchantStaffTag = json['merchant_staff_tag'];
    updatedAt = json['updated_at'];
    isSettled = json['is_settled'];
    billBalanced = json['bill_balanced'];
    isBill = json['is_bill'];
    owner = json['owner'];
    parentTransaction = json['parent_transaction'];
    redirectUrl = json['redirect_url'];
    iframeRedirectionUrl = json['iframe_redirection_url'];
  }

  num? id;
  bool? pending;
  num? amountCents;
  bool? success;
  bool? isAuth;
  bool? isCapture;
  bool? isStandalonePayment;
  bool? isVoided;
  bool? isRefunded;
  bool? is3dSecure;
  num? integrationId;
  num? profileId;
  bool? hasParentTransaction;
  Order? order;
  String? createdAt;
  List<dynamic>? transactionProcessedCallbackResponses;
  String? currency;
  SourceData? sourceData;
  String? apiSource;
  dynamic terminalId;
  num? merchantCommission;
  dynamic installment;
  List<dynamic>? discountDetails;
  bool? isVoid;
  bool? isRefund;
  Data? data;
  bool? isHidden;
  PaymentKeyClaims? paymentKeyClaims;
  bool? errorOccured;
  bool? isLive;
  dynamic otherEndpointReference;
  num? refundedAmountCents;
  num? sourceId;
  bool? isCaptured;
  num? capturedAmount;
  dynamic merchantStaffTag;
  String? updatedAt;
  bool? isSettled;
  bool? billBalanced;
  bool? isBill;
  num? owner;
  dynamic parentTransaction;
  String? redirectUrl;
  String? iframeRedirectionUrl;

  WalletPayResponse copyWith({
    num? id,
    bool? pending,
    num? amountCents,
    bool? success,
    bool? isAuth,
    bool? isCapture,
    bool? isStandalonePayment,
    bool? isVoided,
    bool? isRefunded,
    bool? is3dSecure,
    num? integrationId,
    num? profileId,
    bool? hasParentTransaction,
    Order? order,
    String? createdAt,
    List<dynamic>? transactionProcessedCallbackResponses,
    String? currency,
    SourceData? sourceData,
    String? apiSource,
    dynamic terminalId,
    num? merchantCommission,
    dynamic installment,
    List<dynamic>? discountDetails,
    bool? isVoid,
    bool? isRefund,
    Data? data,
    bool? isHidden,
    PaymentKeyClaims? paymentKeyClaims,
    bool? errorOccured,
    bool? isLive,
    dynamic otherEndpointReference,
    num? refundedAmountCents,
    num? sourceId,
    bool? isCaptured,
    num? capturedAmount,
    dynamic merchantStaffTag,
    String? updatedAt,
    bool? isSettled,
    bool? billBalanced,
    bool? isBill,
    num? owner,
    dynamic parentTransaction,
    String? redirectUrl,
    String? iframeRedirectionUrl,
  }) =>
      WalletPayResponse(
        id: id ?? this.id,
        pending: pending ?? this.pending,
        amountCents: amountCents ?? this.amountCents,
        success: success ?? this.success,
        isAuth: isAuth ?? this.isAuth,
        isCapture: isCapture ?? this.isCapture,
        isStandalonePayment: isStandalonePayment ?? this.isStandalonePayment,
        isVoided: isVoided ?? this.isVoided,
        isRefunded: isRefunded ?? this.isRefunded,
        is3dSecure: is3dSecure ?? this.is3dSecure,
        integrationId: integrationId ?? this.integrationId,
        profileId: profileId ?? this.profileId,
        hasParentTransaction: hasParentTransaction ?? this.hasParentTransaction,
        order: order ?? this.order,
        createdAt: createdAt ?? this.createdAt,
        transactionProcessedCallbackResponses: transactionProcessedCallbackResponses ?? this.transactionProcessedCallbackResponses,
        currency: currency ?? this.currency,
        sourceData: sourceData ?? this.sourceData,
        apiSource: apiSource ?? this.apiSource,
        terminalId: terminalId ?? this.terminalId,
        merchantCommission: merchantCommission ?? this.merchantCommission,
        installment: installment ?? this.installment,
        discountDetails: discountDetails ?? this.discountDetails,
        isVoid: isVoid ?? this.isVoid,
        isRefund: isRefund ?? this.isRefund,
        data: data ?? this.data,
        isHidden: isHidden ?? this.isHidden,
        paymentKeyClaims: paymentKeyClaims ?? this.paymentKeyClaims,
        errorOccured: errorOccured ?? this.errorOccured,
        isLive: isLive ?? this.isLive,
        otherEndpointReference: otherEndpointReference ?? this.otherEndpointReference,
        refundedAmountCents: refundedAmountCents ?? this.refundedAmountCents,
        sourceId: sourceId ?? this.sourceId,
        isCaptured: isCaptured ?? this.isCaptured,
        capturedAmount: capturedAmount ?? this.capturedAmount,
        merchantStaffTag: merchantStaffTag ?? this.merchantStaffTag,
        updatedAt: updatedAt ?? this.updatedAt,
        isSettled: isSettled ?? this.isSettled,
        billBalanced: billBalanced ?? this.billBalanced,
        isBill: isBill ?? this.isBill,
        owner: owner ?? this.owner,
        parentTransaction: parentTransaction ?? this.parentTransaction,
        redirectUrl: redirectUrl ?? this.redirectUrl,
        iframeRedirectionUrl: iframeRedirectionUrl ?? this.iframeRedirectionUrl,
      );

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['pending'] = pending;
    map['amount_cents'] = amountCents;
    map['success'] = success;
    map['is_auth'] = isAuth;
    map['is_capture'] = isCapture;
    map['is_standalone_payment'] = isStandalonePayment;
    map['is_voided'] = isVoided;
    map['is_refunded'] = isRefunded;
    map['is_3d_secure'] = is3dSecure;
    map['integration_id'] = integrationId;
    map['profile_id'] = profileId;
    map['has_parent_transaction'] = hasParentTransaction;
    if (order != null) {
      map['order'] = order?.toJson();
    }
    map['created_at'] = createdAt;
    if (transactionProcessedCallbackResponses != null) {
      map['transaction_processed_callback_responses'] = transactionProcessedCallbackResponses?.map((v) => v.toJson()).toList();
    }
    map['currency'] = currency;
    if (sourceData != null) {
      map['source_data'] = sourceData?.toJson();
    }
    map['api_source'] = apiSource;
    map['terminal_id'] = terminalId;
    map['merchant_commission'] = merchantCommission;
    map['installment'] = installment;
    if (discountDetails != null) {
      map['discount_details'] = discountDetails?.map((v) => v.toJson()).toList();
    }
    map['is_void'] = isVoid;
    map['is_refund'] = isRefund;
    if (data != null) {
      map['data'] = data?.toJson();
    }
    map['is_hidden'] = isHidden;
    if (paymentKeyClaims != null) {
      map['payment_key_claims'] = paymentKeyClaims?.toJson();
    }
    map['error_occured'] = errorOccured;
    map['is_live'] = isLive;
    map['other_endpoint_reference'] = otherEndpointReference;
    map['refunded_amount_cents'] = refundedAmountCents;
    map['source_id'] = sourceId;
    map['is_captured'] = isCaptured;
    map['captured_amount'] = capturedAmount;
    map['merchant_staff_tag'] = merchantStaffTag;
    map['updated_at'] = updatedAt;
    map['is_settled'] = isSettled;
    map['bill_balanced'] = billBalanced;
    map['is_bill'] = isBill;
    map['owner'] = owner;
    map['parent_transaction'] = parentTransaction;
    map['redirect_url'] = redirectUrl;
    map['iframe_redirection_url'] = iframeRedirectionUrl;
    return map;
  }
}

class PaymentKeyClaims {
  PaymentKeyClaims({
    this.userId,
    this.amountCents,
    this.currency,
    this.integrationId,
    this.orderId,
    this.billingData,
    this.lockOrderWhenPaid,
    this.extra,
    this.singlePaymentAttempt,
    this.exp,
    this.pmkIp,
  });

  PaymentKeyClaims.fromJson(dynamic json) {
    userId = json['user_id'];
    amountCents = json['amount_cents'];
    currency = json['currency'];
    integrationId = json['integration_id'];
    orderId = json['order_id'];
    billingData = json['billing_data'] != null ? BillingData.fromJson(json['billing_data']) : null;
    lockOrderWhenPaid = json['lock_order_when_paid'];
    extra = json['extra'];
    singlePaymentAttempt = json['single_payment_attempt'];
    exp = json['exp'];
    pmkIp = json['pmk_ip'];
  }

  num? userId;
  num? amountCents;
  String? currency;
  num? integrationId;
  num? orderId;
  BillingData? billingData;
  bool? lockOrderWhenPaid;
  dynamic extra;
  bool? singlePaymentAttempt;
  num? exp;
  String? pmkIp;

  PaymentKeyClaims copyWith({
    num? userId,
    num? amountCents,
    String? currency,
    num? integrationId,
    num? orderId,
    BillingData? billingData,
    bool? lockOrderWhenPaid,
    dynamic extra,
    bool? singlePaymentAttempt,
    num? exp,
    String? pmkIp,
  }) =>
      PaymentKeyClaims(
        userId: userId ?? this.userId,
        amountCents: amountCents ?? this.amountCents,
        currency: currency ?? this.currency,
        integrationId: integrationId ?? this.integrationId,
        orderId: orderId ?? this.orderId,
        billingData: billingData ?? this.billingData,
        lockOrderWhenPaid: lockOrderWhenPaid ?? this.lockOrderWhenPaid,
        extra: extra ?? this.extra,
        singlePaymentAttempt: singlePaymentAttempt ?? this.singlePaymentAttempt,
        exp: exp ?? this.exp,
        pmkIp: pmkIp ?? this.pmkIp,
      );

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['user_id'] = userId;
    map['amount_cents'] = amountCents;
    map['currency'] = currency;
    map['integration_id'] = integrationId;
    map['order_id'] = orderId;
    if (billingData != null) {
      map['billing_data'] = billingData?.toJson();
    }
    map['lock_order_when_paid'] = lockOrderWhenPaid;
    map['extra'] = extra;
    map['single_payment_attempt'] = singlePaymentAttempt;
    map['exp'] = exp;
    map['pmk_ip'] = pmkIp;
    return map;
  }
}

class BillingData {
  BillingData({
    this.firstName,
    this.lastName,
    this.street,
    this.building,
    this.floor,
    this.apartment,
    this.city,
    this.state,
    this.country,
    this.email,
    this.phoneNumber,
    this.postalCode,
    this.extraDescription,
  });

  BillingData.fromJson(dynamic json) {
    firstName = json['first_name'];
    lastName = json['last_name'];
    street = json['street'];
    building = json['building'];
    floor = json['floor'];
    apartment = json['apartment'];
    city = json['city'];
    state = json['state'];
    country = json['country'];
    email = json['email'];
    phoneNumber = json['phone_number'];
    postalCode = json['postal_code'];
    extraDescription = json['extra_description'];
  }

  String? firstName;
  String? lastName;
  String? street;
  String? building;
  String? floor;
  String? apartment;
  String? city;
  String? state;
  String? country;
  String? email;
  String? phoneNumber;
  String? postalCode;
  String? extraDescription;

  BillingData copyWith({
    String? firstName,
    String? lastName,
    String? street,
    String? building,
    String? floor,
    String? apartment,
    String? city,
    String? state,
    String? country,
    String? email,
    String? phoneNumber,
    String? postalCode,
    String? extraDescription,
  }) =>
      BillingData(
        firstName: firstName ?? this.firstName,
        lastName: lastName ?? this.lastName,
        street: street ?? this.street,
        building: building ?? this.building,
        floor: floor ?? this.floor,
        apartment: apartment ?? this.apartment,
        city: city ?? this.city,
        state: state ?? this.state,
        country: country ?? this.country,
        email: email ?? this.email,
        phoneNumber: phoneNumber ?? this.phoneNumber,
        postalCode: postalCode ?? this.postalCode,
        extraDescription: extraDescription ?? this.extraDescription,
      );

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['first_name'] = firstName;
    map['last_name'] = lastName;
    map['street'] = street;
    map['building'] = building;
    map['floor'] = floor;
    map['apartment'] = apartment;
    map['city'] = city;
    map['state'] = state;
    map['country'] = country;
    map['email'] = email;
    map['phone_number'] = phoneNumber;
    map['postal_code'] = postalCode;
    map['extra_description'] = extraDescription;
    return map;
  }
}

class Data {
  Data({
    this.message,
  });

  Data.fromJson(dynamic json) {
    message = json['message'];
  }

  String? message;

  Data copyWith({
    String? message,
  }) =>
      Data(
        message: message ?? this.message,
      );

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['message'] = message;
    return map;
  }
}

class SourceData {
  SourceData({
    this.type,
    this.phoneNumber,
    this.ownerName,
    this.subType,
    this.pan,
  });

  SourceData.fromJson(dynamic json) {
    type = json['type'];
    phoneNumber = json['phone_number'];
    ownerName = json['owner_name'];
    subType = json['sub_type'];
    pan = json['pan'];
  }

  String? type;
  String? phoneNumber;
  dynamic ownerName;
  String? subType;
  String? pan;

  SourceData copyWith({
    String? type,
    String? phoneNumber,
    dynamic ownerName,
    String? subType,
    String? pan,
  }) =>
      SourceData(
        type: type ?? this.type,
        phoneNumber: phoneNumber ?? this.phoneNumber,
        ownerName: ownerName ?? this.ownerName,
        subType: subType ?? this.subType,
        pan: pan ?? this.pan,
      );

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['type'] = type;
    map['phone_number'] = phoneNumber;
    map['owner_name'] = ownerName;
    map['sub_type'] = subType;
    map['pan'] = pan;
    return map;
  }
}

class Order {
  Order({
    this.id,
    this.createdAt,
    this.deliveryNeeded,
    this.merchant,
    this.collector,
    this.amountCents,
    this.shippingData,
    this.currency,
    this.isPaymentLocked,
    this.isReturn,
    this.isCancel,
    this.isReturned,
    this.isCanceled,
    this.merchantOrderId,
    this.walletNotification,
    this.paidAmountCents,
    this.notifyUserWithEmail,
    this.items,
    this.orderUrl,
    this.commissionFees,
    this.deliveryFeesCents,
    this.deliveryVatCents,
    this.paymentMethod,
    this.merchantStaffTag,
    this.apiSource,
    this.data,
  });

  Order.fromJson(dynamic json) {
    id = json['id'];
    createdAt = json['created_at'];
    deliveryNeeded = json['delivery_needed'];
    merchant = json['merchant'] != null ? Merchant.fromJson(json['merchant']) : null;
    collector = json['collector'];
    amountCents = json['amount_cents'];
    shippingData = json['shipping_data'] != null ? ShippingData.fromJson(json['shipping_data']) : null;
    currency = json['currency'];
    isPaymentLocked = json['is_payment_locked'];
    isReturn = json['is_return'];
    isCancel = json['is_cancel'];
    isReturned = json['is_returned'];
    isCanceled = json['is_canceled'];
    merchantOrderId = json['merchant_order_id'];
    walletNotification = json['wallet_notification'];
    paidAmountCents = json['paid_amount_cents'];
    notifyUserWithEmail = json['notify_user_with_email'];
    orderUrl = json['order_url'];
    commissionFees = json['commission_fees'];
    deliveryFeesCents = json['delivery_fees_cents'];
    deliveryVatCents = json['delivery_vat_cents'];
    paymentMethod = json['payment_method'];
    merchantStaffTag = json['merchant_staff_tag'];
    apiSource = json['api_source'];
    data = json['data'];
  }

  num? id;
  String? createdAt;
  bool? deliveryNeeded;
  Merchant? merchant;
  dynamic collector;
  num? amountCents;
  ShippingData? shippingData;
  String? currency;
  bool? isPaymentLocked;
  bool? isReturn;
  bool? isCancel;
  bool? isReturned;
  bool? isCanceled;
  dynamic merchantOrderId;
  dynamic walletNotification;
  num? paidAmountCents;
  bool? notifyUserWithEmail;
  List<dynamic>? items;
  String? orderUrl;
  num? commissionFees;
  num? deliveryFeesCents;
  num? deliveryVatCents;
  String? paymentMethod;
  dynamic merchantStaffTag;
  String? apiSource;
  dynamic data;

  Order copyWith({
    num? id,
    String? createdAt,
    bool? deliveryNeeded,
    Merchant? merchant,
    dynamic collector,
    num? amountCents,
    ShippingData? shippingData,
    String? currency,
    bool? isPaymentLocked,
    bool? isReturn,
    bool? isCancel,
    bool? isReturned,
    bool? isCanceled,
    dynamic merchantOrderId,
    dynamic walletNotification,
    num? paidAmountCents,
    bool? notifyUserWithEmail,
    List<dynamic>? items,
    String? orderUrl,
    num? commissionFees,
    num? deliveryFeesCents,
    num? deliveryVatCents,
    String? paymentMethod,
    dynamic merchantStaffTag,
    String? apiSource,
    dynamic data,
  }) =>
      Order(
        id: id ?? this.id,
        createdAt: createdAt ?? this.createdAt,
        deliveryNeeded: deliveryNeeded ?? this.deliveryNeeded,
        merchant: merchant ?? this.merchant,
        collector: collector ?? this.collector,
        amountCents: amountCents ?? this.amountCents,
        shippingData: shippingData ?? this.shippingData,
        currency: currency ?? this.currency,
        isPaymentLocked: isPaymentLocked ?? this.isPaymentLocked,
        isReturn: isReturn ?? this.isReturn,
        isCancel: isCancel ?? this.isCancel,
        isReturned: isReturned ?? this.isReturned,
        isCanceled: isCanceled ?? this.isCanceled,
        merchantOrderId: merchantOrderId ?? this.merchantOrderId,
        walletNotification: walletNotification ?? this.walletNotification,
        paidAmountCents: paidAmountCents ?? this.paidAmountCents,
        notifyUserWithEmail: notifyUserWithEmail ?? this.notifyUserWithEmail,
        items: items ?? this.items,
        orderUrl: orderUrl ?? this.orderUrl,
        commissionFees: commissionFees ?? this.commissionFees,
        deliveryFeesCents: deliveryFeesCents ?? this.deliveryFeesCents,
        deliveryVatCents: deliveryVatCents ?? this.deliveryVatCents,
        paymentMethod: paymentMethod ?? this.paymentMethod,
        merchantStaffTag: merchantStaffTag ?? this.merchantStaffTag,
        apiSource: apiSource ?? this.apiSource,
        data: data ?? this.data,
      );

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['created_at'] = createdAt;
    map['delivery_needed'] = deliveryNeeded;
    if (merchant != null) {
      map['merchant'] = merchant?.toJson();
    }
    map['collector'] = collector;
    map['amount_cents'] = amountCents;
    if (shippingData != null) {
      map['shipping_data'] = shippingData?.toJson();
    }
    map['currency'] = currency;
    map['is_payment_locked'] = isPaymentLocked;
    map['is_return'] = isReturn;
    map['is_cancel'] = isCancel;
    map['is_returned'] = isReturned;
    map['is_canceled'] = isCanceled;
    map['merchant_order_id'] = merchantOrderId;
    map['wallet_notification'] = walletNotification;
    map['paid_amount_cents'] = paidAmountCents;
    map['notify_user_with_email'] = notifyUserWithEmail;
    if (items != null) {
      map['items'] = items?.map((v) => v.toJson()).toList();
    }
    map['order_url'] = orderUrl;
    map['commission_fees'] = commissionFees;
    map['delivery_fees_cents'] = deliveryFeesCents;
    map['delivery_vat_cents'] = deliveryVatCents;
    map['payment_method'] = paymentMethod;
    map['merchant_staff_tag'] = merchantStaffTag;
    map['api_source'] = apiSource;
    map['data'] = data;
    return map;
  }
}

class ShippingData {
  ShippingData({
    this.id,
    this.firstName,
    this.lastName,
    this.street,
    this.building,
    this.floor,
    this.apartment,
    this.city,
    this.state,
    this.country,
    this.email,
    this.phoneNumber,
    this.postalCode,
    this.extraDescription,
    this.shippingMethod,
    this.orderId,
    this.order,
  });

  ShippingData.fromJson(dynamic json) {
    id = json['id'];
    firstName = json['first_name'];
    lastName = json['last_name'];
    street = json['street'];
    building = json['building'];
    floor = json['floor'];
    apartment = json['apartment'];
    city = json['city'];
    state = json['state'];
    country = json['country'];
    email = json['email'];
    phoneNumber = json['phone_number'];
    postalCode = json['postal_code'];
    extraDescription = json['extra_description'];
    shippingMethod = json['shipping_method'];
    orderId = json['order_id'];
    order = json['order'];
  }

  num? id;
  String? firstName;
  String? lastName;
  String? street;
  String? building;
  String? floor;
  String? apartment;
  String? city;
  String? state;
  String? country;
  String? email;
  String? phoneNumber;
  String? postalCode;
  String? extraDescription;
  String? shippingMethod;
  num? orderId;
  num? order;

  ShippingData copyWith({
    num? id,
    String? firstName,
    String? lastName,
    String? street,
    String? building,
    String? floor,
    String? apartment,
    String? city,
    String? state,
    String? country,
    String? email,
    String? phoneNumber,
    String? postalCode,
    String? extraDescription,
    String? shippingMethod,
    num? orderId,
    num? order,
  }) =>
      ShippingData(
        id: id ?? this.id,
        firstName: firstName ?? this.firstName,
        lastName: lastName ?? this.lastName,
        street: street ?? this.street,
        building: building ?? this.building,
        floor: floor ?? this.floor,
        apartment: apartment ?? this.apartment,
        city: city ?? this.city,
        state: state ?? this.state,
        country: country ?? this.country,
        email: email ?? this.email,
        phoneNumber: phoneNumber ?? this.phoneNumber,
        postalCode: postalCode ?? this.postalCode,
        extraDescription: extraDescription ?? this.extraDescription,
        shippingMethod: shippingMethod ?? this.shippingMethod,
        orderId: orderId ?? this.orderId,
        order: order ?? this.order,
      );

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['first_name'] = firstName;
    map['last_name'] = lastName;
    map['street'] = street;
    map['building'] = building;
    map['floor'] = floor;
    map['apartment'] = apartment;
    map['city'] = city;
    map['state'] = state;
    map['country'] = country;
    map['email'] = email;
    map['phone_number'] = phoneNumber;
    map['postal_code'] = postalCode;
    map['extra_description'] = extraDescription;
    map['shipping_method'] = shippingMethod;
    map['order_id'] = orderId;
    map['order'] = order;
    return map;
  }
}

class Merchant {
  Merchant({
    this.id,
    this.createdAt,
    this.state,
    this.country,
    this.city,
    this.postalCode,
    this.street,
  });

  Merchant.fromJson(dynamic json) {
    id = json['id'];
    createdAt = json['created_at'];
    state = json['state'];
    country = json['country'];
    city = json['city'];
    postalCode = json['postal_code'];
    street = json['street'];
  }

  num? id;
  String? createdAt;
  String? state;
  String? country;
  String? city;
  String? postalCode;
  String? street;

  Merchant copyWith({
    num? id,
    String? createdAt,
    String? state,
    String? country,
    String? city,
    String? postalCode,
    String? street,
  }) =>
      Merchant(
        id: id ?? this.id,
        createdAt: createdAt ?? this.createdAt,
        state: state ?? this.state,
        country: country ?? this.country,
        city: city ?? this.city,
        postalCode: postalCode ?? this.postalCode,
        street: street ?? this.street,
      );

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['created_at'] = createdAt;
    map['state'] = state;
    map['country'] = country;
    map['city'] = city;
    map['postal_code'] = postalCode;
    map['street'] = street;
    return map;
  }
}
