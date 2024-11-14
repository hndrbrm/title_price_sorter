// Copyright 2022. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed
// by a BSD-style license that can be found in the LICENSE file.

import 'dart:io';

import 'package:nice_json/nice_json.dart';
import 'package:path/path.dart';
import 'package:tint/tint.dart';
import 'package:title_price_sorter/title_price_sorter.dart';

Future<void> main() async {
  final priceDirectory = Directory('/Users/buba/Hiatus/switch/document/titleprice/source/');
  final dbDirectory = Directory('/Users/buba/Hiatus/switch/document/titledb/source/');
  final sortDirectory = Directory('/Users/buba/Development/title_price_sorter/sort/');

  final titlePrice = TitlePrice(priceDirectory);
  final titleDb = TitleDb(dbDirectory);

  final regions = await titleDb.loadRegions();
  final languages = await titleDb.loadLanguages();

  for (final region in regions.keys) {

    final filenames = <String>{};
    for (final country in regions[region]!) {
      for (final language in languages[country] ?? <LanguageCode>[]) {
        if (!await sortDirectory.exists()) {
          stdout.write('Creating directory ${sortDirectory.path.gray()}... '.yellow());
          await sortDirectory.create(recursive: true);
          stdout.writeln('OK'.green());
        }

        final filename = '${country.value}.${language.value}.json';
        if (filenames.contains(filename)) {
          continue;
        }
        final file = File(join(sortDirectory.path, filename));

        if (await file.exists()) {
          print('Skipped. File ${filename.magenta()} already exist');
          continue;
        } else {
          print('Target file ${filename.cyan()}');
        }

        stdout.write('Load title db file... '.yellow());
        final dbs = await titleDb.loadDb(country, language);
        stdout.writeln('OK'.green());

        stdout.write('Load title price file... '.yellow());
        final prices = await titlePrice.loadPrice(country, language);
        stdout.writeln('OK'.green());

        stdout.write('Sorting title by price from highest to lowest... '.yellow());
        final list = prices.values.toList()
          ..sort((a, b) => (b.regularPrice?.rawValue ?? 0.0).compareTo(a.regularPrice?.rawValue ?? 0.0));
        stdout.writeln('OK'.green());

        stdout.write('Compiling sorted title... '.yellow());
        final maps = <String, dynamic>{};
        for (final price in list) {
          maps['${price.titleId}'] = {
            'price': price.toJson(),
            'db': dbs[price.titleId]!.toJson(),
          };
        }
        stdout.writeln('OK'.green());

        stdout.write('Encoding Json... '.yellow());
        final content = niceJson(maps);
        stdout.writeln('OK'.green());

        stdout.write('Saving encoded json... '.yellow());
        await file.writeAsString(content);
        stdout.writeln('OK'.green());

        filenames.add(filename);
      }
    }
  }
}
