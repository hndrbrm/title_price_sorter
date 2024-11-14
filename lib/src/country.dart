// Copyright 2022. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed
// by a BSD-style license that can be found in the LICENSE file.

enum CountryCode {
  ar('AR'), at('AT'), au('AU'),
  be('BE'), bg('BG'), br('BR'),
  ca('CA'), ch('CH'), cl('CL'), cn('CN'), co('CO'), cy('CY'), cz('CZ'),
  de('DE'), dk('DK'),
  ee('EE'), es('ES'),
  fi('FI'), fr('FR'),
  gb('GB'), gr('GR'),
  hk('HK'), hr('HR'), hu('HU'),
  ie('IE'), it('IT'),
  jp('JP'),
  kr('KR'),
  lt('LT'), lu('LU'), lv('LV'),
  mt('MT'), mx('MX'),
  nl('NL'), no('NO'), nz('NZ'),
  pe('PE'), pl('PL'), pt('PT'),
  ro('RO'), ru('RU'),
  se('SE'), si('SI'), sk('SK'),
  us('US'),
  za('ZA');

  const CountryCode(this.value);

  factory CountryCode.fromString(String value) =>
    CountryCode.values.firstWhere(
      (e) => e.value == value,
      orElse: () => throw ArgumentError("Invalid Country Code: '$value'"),
    );

  final String value;
}
