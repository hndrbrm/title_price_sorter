// Copyright 2022. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed
// by a BSD-style license that can be found in the LICENSE file.

import 'dart:collection';

import 'country.dart';

final class Languages with MapMixin<CountryCode, Set<LanguageCode>> {
  Languages.fromJson(Map<String, dynamic> json)
  : _languages = json.map((k, v) => MapEntry(
    CountryCode.fromString(k),
    (v as List)
      .map((e) => e as String)
      .map((lc) => LanguageCode.fromString(lc))
      .toSet(),
  ));

  final Map<CountryCode, Set<LanguageCode>> _languages;

  @override
  Set<LanguageCode>? operator [](Object? key) => _languages[key];

  @override
  void operator []=(CountryCode key, Set<LanguageCode> value) =>
    _languages[key] = value;

  @override
  void clear() => _languages.clear();

  @override
  Iterable<CountryCode> get keys => _languages.keys;

  @override
  Set<LanguageCode>? remove(Object? key) => _languages.remove(key);
}

enum LanguageCode {
  de('de'),
  en('en'), es('es'),
  fr('fr'),
  it('it'),
  ja('ja'),
  ko('ko'),
  nl('nl'),
  pt('pt'),
  ru('ru'),
  zh('zh');

  const LanguageCode(this.value);

  factory LanguageCode.fromString(String value) =>
    LanguageCode.values.firstWhere(
      (e) => e.value == value,
      orElse: () => throw ArgumentError("Invalid Language Code: '$value'"),
    );

  final String value;
}
