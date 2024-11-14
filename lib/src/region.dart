// Copyright 2022. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed
// by a BSD-style license that can be found in the LICENSE file.

import 'dart:collection';

import 'country.dart';

final class Regions with MapMixin<RegionCode, Set<CountryCode>> {
  const Regions._(this._regions);

  Regions.fromJson(Map<String, dynamic> json)
  : _regions = json.map((k, v) => MapEntry(
      RegionCode.fromString(k),
      (v as List)
        .map((e) => e as String)
        .map((cc) => CountryCode.fromString(cc))
        .toSet(),
      ));

  final Map<RegionCode, Set<CountryCode>> _regions;

  @override
  Set<CountryCode>? operator [](Object? key) => _regions[key];

  @override
  void operator []=(RegionCode key, Set<CountryCode> value) =>
    _regions[key] = value;

  @override
  void clear() => _regions.clear();

  @override
  Iterable<RegionCode> get keys => _regions.keys;

  @override
  Set<CountryCode>? remove(Object? key) => _regions.remove(key);
}

enum RegionCode {
  aus('AUS'),
  chn('CHN'),
  eur('EUR'),
  jpn('JPN'),
  kor('KOR'),
  twn('TWN'),
  usa('USA');

  const RegionCode(this.value);

  factory RegionCode.fromString(String value) =>
    RegionCode.values.firstWhere(
      (e) => e.value == value,
      orElse: () => throw ArgumentError("Invalid Region Code: '$value'"),
    );

  final String value;
}
