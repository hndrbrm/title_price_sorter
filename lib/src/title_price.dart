// Copyright 2022. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed
// by a BSD-style license that can be found in the LICENSE file.

import 'dart:convert';
import 'dart:io';

import 'package:path/path.dart';

import 'country.dart';
import 'language.dart';
import 'price.dart';

final class TitlePrice {
  const TitlePrice(this.directory);

  final Directory directory;

  Future<Map<int, Price>> loadPrice(CountryCode country, LanguageCode language) async {
    final json = await _loadJsonOrThrow('${country.value}.${language.value}.json');

    final prices = <int, Price>{};
    for (final json in json.values) {
      try {
        final price = Price.fromJson(json);
        prices[price.titleId] = price;
      } catch(e) {
        print(json);
        rethrow;
      }
    }

    return prices;
  }

  Future<dynamic> _loadJsonOrThrow(String filePath) async {
    await _pathExistOrThrow();

    final file = File(join(directory.path, filePath));
    if (!await file.exists()) {
      throw("File '${file.path}' doesn't exist!");
    }

    final string = await file.readAsString();
    return jsonDecode(string);
  }

  Future<void> _pathExistOrThrow() async {
    if (!await directory.exists()) {
      throw("Directory '${directory.path}' doesn't exist!");
    }
  }
}
