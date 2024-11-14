// Copyright 2022. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed
// by a BSD-style license that can be found in the LICENSE file.

final class Price {
  Price.fromJson(Map<String, dynamic> json)
  : titleId = json['title_id'],
    salesStatus = json['sales_status'],
    regularPrice = (json['regular_price'] as Map<String, dynamic>?)?.parseRegularPrice(),
    goldPoint = (json['gold_point'] as Map<String, dynamic>?)?.parseGoldPoint();

  final int titleId;
  final String salesStatus;
  final RegularPrice? regularPrice;
  final GoldPoint? goldPoint;

  Map<String, dynamic> toJson() => {
    'title_id': titleId,
    'sales_status': salesStatus,
    if (regularPrice != null)
    'regular_price': regularPrice!.toJson(),
    if (goldPoint != null)
    'gold_point': goldPoint!.toJson(),
  };
}

final class RegularPrice {
  RegularPrice.fromJson(Map<String, dynamic> json)
  : amount = json['amount'],
    currency = json['currency'],
    rawValue = double.parse(json['raw_value']);

  final String amount;
  final String currency;
  final double rawValue;

  Map<String, dynamic> toJson() => {
    'amount': amount,
    'currency': currency,
    'raw_value': rawValue,
  };
}

final class GoldPoint {
  GoldPoint.fromJson(Map<String, dynamic> json)
  : basicGiftGp = json['basic_gift_gp'],
    basicGiftRate = json['basic_gift_rate'],
    consumeGp = json['consume_gp'],
    extraGoldPoints = (json['extra_gold_points'] as List<dynamic>)
      .map((e) => e as String)
      .toList(),
    giftGp = json['gift_gp'],
    giftRate = json['gift_rate'];

  final String basicGiftGp;
  final String basicGiftRate;
  final String consumeGp;
  final List<String> extraGoldPoints;
  final String giftGp;
  final String giftRate;

  Map<String, dynamic> toJson() => {
    'basic_gift_gp': basicGiftGp,
    'basic_gift_rate': basicGiftRate,
    'consume_gp': consumeGp,
    'extra_gold_points': extraGoldPoints,
    'gift_gp': giftGp,
    'gift_rate': giftRate,
  };
}

extension on Map<String, dynamic> {
  GoldPoint parseGoldPoint() => GoldPoint.fromJson(this);

  RegularPrice parseRegularPrice() => RegularPrice.fromJson(this);
}
