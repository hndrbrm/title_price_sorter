// Copyright 2022. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed
// by a BSD-style license that can be found in the LICENSE file.

import 'category.dart';
import 'language.dart';

final class Db {
  Db.fromJson(Map<String, dynamic> json, this.language)
  : bannerUrl = json['bannerUrl'],
    category = ((json['category']) as List?)
      ?.map((e) => Category.fromValue(language, e))
      .toSet(),
    description = json['description'],
    developer = json['developer'],
    frontBoxArt = json['frontBoxArt'],
    iconUrl = json['iconUrl'],
    id = json['id'],
    ids = (json['ids'] as List?)?.map((e) => e as String).toSet(),
    intro = json['intro'],
    isDemo = json['isDemo'],
    key = json['key'],
    languages = (json['languages'] as List?)
      ?.map((e) => e as String)
      .map((e) => LanguageCode.fromString(e))
      .toSet(),
    name = json['name'],
    nsuId = json['nsuId'],
    numberOfPlayers = json['numberOfPlayers'],
    parentId = json['parentId'],
    publisher = json['publisher'],
    rating = json['rating'],
    ratingContent = (json['ratingContent'] as List?)
      ?.map((e) => e as String)
      .toSet(),
    region = json['region'],
    releaseDate = json['releaseDate'],
    rightsId = json['rightsId'],
    screenshots = (json['screenshots'] as List?)
      ?.map((e) => e as String)
      .toSet(),
    size = json['size'],
    version = json['version'];

  final LanguageCode language;
  final String? bannerUrl;
  final Set<Category>? category;
  final String? description;
  final String? developer;
  final String? frontBoxArt;
  final String? iconUrl;
  final String? id;
  final Set<String>? ids;
  final String? intro;
  final bool isDemo;
  final String? key;
  final Set<LanguageCode>? languages;
  final String? name;
  final int nsuId;
  final int? numberOfPlayers;
  final String? parentId;
  final String? publisher;
  final int? rating;
  final Set<String>? ratingContent;
  final String? region;
  final int? releaseDate;
  final String? rightsId;
  final Set<String>? screenshots;
  final int size;
  final String? version;

  Map<String, dynamic> toJson() => {
    if (bannerUrl != null)
    'bannerUrl': bannerUrl,
    if (category != null && category!.isNotEmpty)
    'category': category!
      .map((category) => category.toValue(language))
      .toList(),
    if (description != null)
    'description': description,
    if (developer != null)
    'developer': developer,
    if (frontBoxArt != null)
    'frontBoxArt': frontBoxArt,
    if (iconUrl != null)
    'iconUrl': iconUrl,
    if (id != null)
    'id': id,
    if (ids != null && ids!.isNotEmpty)
    'ids': ids!.toList(),
    if (intro != null)
    'intro': intro,
    'isDemo': isDemo,
    if (key != null)
    'key': key,
    if (languages != null && languages!.isNotEmpty)
    'languages': languages!.map((e) => e.value).toList(),
    if (name != null)
    'name': name,
    'nsuId': nsuId,
    if (numberOfPlayers != null)
    'numberOfPlayers': numberOfPlayers,
    if (parentId != null)
    'parentId': parentId,
    if (publisher != null)
    'publisher': publisher,
    if (rating != null)
    'rating': rating,
    if (ratingContent != null && ratingContent!.isNotEmpty)
    'ratingContent': ratingContent!.toList(),
    if (region != null)
    'region': region,
    if (releaseDate != null)
    'releaseDate': releaseDate,
    if (rightsId != null)
    'rightsId': rightsId,
    if (screenshots != null && screenshots!.isNotEmpty)
    'screenshots': screenshots!.toList(),
    'size': size,
    if (version != null)
    'version': version,
  };
}
