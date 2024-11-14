// Copyright 2022. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed
// by a BSD-style license that can be found in the LICENSE file.

import 'dart:convert';
import 'dart:io';

import 'package:path/path.dart';

import 'country.dart';
import 'db.dart';
import 'language.dart';
import 'region.dart';

final class TitleDb {
  const TitleDb(this.directory);

  final Directory directory;

  static const String region = 'cdn.regions.json';
  static const String build = 'builds.json';
  static const String cheat = 'cheats.json';
  static const String cnmt = 'cnmts.json';
  static const String language = 'languages.json';
  static const String nca = 'ncas.json';
  static const String version1 = 'versions.json';
  static const String version2 = 'versions.txt';

  Future<Regions> loadRegions() async {
    final json = await _loadJsonOrThrow(region);
    return Regions.fromJson(json);
  }

  Future<Languages> loadLanguages() async {
    final json = await _loadJsonOrThrow(language);
    return Languages.fromJson(json);
  }

  Future<Map<int, Db>> loadDb(CountryCode country, LanguageCode language) async {
    final json = await _loadJsonOrThrow('${country.value}.${language.value}.json');

    final dbs = <int, Db>{};
    for (final json in json.values) {
      final db = Db.fromJson(json, language);
      dbs[db.nsuId] = db;
    }

    return dbs;
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
