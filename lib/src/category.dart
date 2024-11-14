// Copyright 2022. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed
// by a BSD-style license that can be found in the LICENSE file.

import 'language.dart';

enum Category {
  action,
  adventure,
  arcade,
  boardGame,
  communication,
  cooperation,
  education,
  family,
  female,
  fighting,
  firstPersonShooter,
  lifestyle,
  multiplayer,
  music,
  other,
  party,
  platformer,
  practical,
  puzzle,
  racing,
  rpg,
  shooter,
  shop,
  simulation,
  sports,
  strategy,
  study,
  systemTool,
  training,
  updates,
  utility,
  video;

  factory Category.fromValue(LanguageCode language, String value) =>
    switch (language) {
      LanguageCode.de => Category._fromDe(value),
      LanguageCode.en => Category._fromEn(value),
      LanguageCode.es => Category._fromEs(value),
      LanguageCode.fr => Category._fromFr(value),
      LanguageCode.it => Category._fromIt(value),
      LanguageCode.ja => Category._fromJa(value),
      LanguageCode.ko => Category._fromKo(value),
      LanguageCode.nl => Category._fromNl(value),
      LanguageCode.pt => Category._fromPt(value),
      LanguageCode.ru => Category._fromRu(value),
      LanguageCode.zh => Category._fromZh(value),
    };

  factory Category._fromDe(String value) =>
    _de[value] ??
    (throw ArgumentError("Invalid '$value' Category for '${LanguageCode.de}' Language."));

  factory Category._fromEn(String value) =>
    _en[value] ??
    (throw ArgumentError("Invalid '$value' Category for '${LanguageCode.en}' Language."));

  factory Category._fromEs(String value) =>
    _es[value] ??
    (throw ArgumentError("Invalid '$value' Category for '${LanguageCode.es}' Language."));

  factory Category._fromFr(String value) =>
    _fr[value] ??
    (throw ArgumentError("Invalid '$value' Category for '${LanguageCode.fr}' Language."));

  factory Category._fromIt(String value) =>
    _it[value] ??
    (throw ArgumentError("Invalid '$value' Category for '${LanguageCode.it}' Language."));

  factory Category._fromJa(String value) =>
    _ja[value] ??
    (throw ArgumentError("Invalid '$value' Category for '${LanguageCode.ja}' Language."));

  factory Category._fromKo(String value) =>
    _ko[value] ??
    (throw ArgumentError("Invalid '$value' Category for '${LanguageCode.ko}' Language."));

  factory Category._fromNl(String value) =>
    _nl[value] ??
    (throw ArgumentError("Invalid '$value' Category for '${LanguageCode.nl}' Language."));

  factory Category._fromPt(String value) =>
    _pt[value] ??
    (throw ArgumentError("Invalid '$value' Category for '${LanguageCode.pt}' Language."));

  factory Category._fromRu(String value) =>
    _ru[value] ??
    (throw ArgumentError("Invalid '$value' Category for '${LanguageCode.ru}' Language."));

  factory Category._fromZh(String value) =>
    _zh[value] ??
    (throw ArgumentError("Invalid '$value' Category for '${LanguageCode.zh}' Language."));

  static const Map<String, Category> _de = {
    'Action': action,
    'Adventure': adventure,
    'Arcade': arcade,
    'Brettspiel': boardGame,
    'Kommunikation': communication,
    'Lernspiel': education,
    'Kampf': fighting,
    'First-Person-Shooter': firstPersonShooter,
    'Lifestyle': lifestyle,
    'Mehrspieler': multiplayer,
    'Musik': music,
    'Andere': other,
    'Party': party,
    'Platformer': platformer,
    'Puzzle': puzzle,
    'Rennspiel': racing,
    'RPG': rpg,
    'Shooter': shooter,
    'Shops': shop,
    'Simulation': simulation,
    'Sport': sports,
    'Strategie': strategy,
    'Study': study,
    'Systemanwendung': systemTool,
    'Training': training,
    'Hilfsanwendung': utility,
  };
  
  static const Map<String, Category> _en = {
    'Action': action,
    'Adventure': adventure,
    'Arcade': arcade,
    'Board Game': boardGame,
    'Communication': communication,
    'Education': education,
    'Fighting': fighting,
    'First-Person Shooter': firstPersonShooter,
    'Lifestyle': lifestyle,
    'Multiplayer': multiplayer,
    'Music': music,
    'Other': other,
    'Party': party,
    'Platformer': platformer,
    'Practical': practical,
    'Puzzle': puzzle,
    'Racing': racing,
    'RPG': rpg,
    'Shooter': shooter,
    'Shop': shop,
    'Simulation': simulation,
    'Sports': sports,
    'Strategy': strategy,
    'Study': study,
    'System Tool': systemTool,
    'Training': training,
    'Updates': updates,
    'Utility': utility,
    'Video': video,
  };
  
  static const Map<String, Category> _es = {
    'Acción': action,
    'Aventura': adventure,
    'Arcade': arcade,
    'Juego de mesa': boardGame,
    'Tablero': boardGame,
    'Comunicación': communication,
    'Educativo': education,
    'Lucha': fighting,
    'Peleas': fighting,
    'Acción en primera persona': firstPersonShooter,
    'Estilo de vida': lifestyle,
    'Multijugador': multiplayer,
    'Música': music,
    'Otros': other,
    'Fiesta': party,
    'Plataformas': platformer,
    'Uso práctico': practical,
    'Puzle': puzzle,
    'Rompecabezas': puzzle,
    'Carreras': racing,
    'Juego de rol': rpg,
    'Rol (RPG)': rpg,
    'Disparos': shooter,
    'Disparos (Shooter)': shooter,
    'Tienda': shop,
    'Simulación': simulation,
    'Deportes': sports,
    'Estrategia': strategy,
    'Aprendizaje': study,
    'Study': study,
    'Herramientas': systemTool,
    'Herramienta de sistema': systemTool,
    'Entrenamiento': training,
    'Entrenchment': training,
    'Training': training,
    'Actualizaciones': updates,
    'Utilidades': utility,
    'Video': video,
  };
  
  static const Map<String, Category> _fr = {
    'Action': action,
    'Aventure': adventure,
    'Arcade': arcade,
    'Jeu de plateau': boardGame,
    'Communication': communication,
    'Éducation': education,
    'Combat': fighting,
    'FPS (tir en vue subjective)': firstPersonShooter,
    'Style de vie': lifestyle,
    'Multijoueur': multiplayer,
    'Musique': music,
    'Autre': other,
    'Jeu de fête': party,
    'Jeu de société': party,
    'Jeu de plateformes': platformer,
    'Plateformes': platformer,
    'Pratique': practical,
    'Casse-tête': puzzle,
    'Réflexion': puzzle,
    'Course': racing,
    'Jeu de rôles': rpg,
    'Jeu de tir': shooter,
    'Boutique': shop,
    'Simulation': simulation,
    'Sport': sports,
    'Stratégie': strategy,
    'Apprentissage': study,
    'Study': study,
    'Outil système': systemTool,
    'Entraînement': training,
    'Training': training,
    'Mises à jour': updates,
    'Logiciel pratique': utility,
    'Utilitaire': utility,
    'Vidéo': video,
  };
  
  static const Map<String, Category> _it = {
    'Azione': action,
    'Avventura': adventure,
    'Arcade': arcade,
    'Da tavolo': boardGame,
    'Comunicazione': communication,
    'Educativo': education,
    'Picchiaduro': fighting,
    'Sparatutto in prima persona': firstPersonShooter,
    'Lifestyle': lifestyle,
    'Multiplayer': multiplayer,
    'Musica': music,
    'Altro': other,
    'Party': party,
    'Piattaforme': platformer,
    'Puzzle': puzzle,
    'Corse': racing,
    'Gioco di ruolo (RPG)': rpg,
    'Sparatutto': shooter,
    'Shop': shop,
    'Simulazione': simulation,
    'Sport': sports,
    'Strategia': strategy,
    'Study': study,
    'Utilità di sistema': systemTool,
    'Training': training,
    'Applicazione': utility,
  };
  
  static const Map<String, Category> _ja = {
    'アクション': action,
    'アドベンチャー': adventure,
    'アーケード': arcade,
    'テーブル': boardGame,
    'コミュニケーション': communication,
    '格闘': fighting,
    '音楽': music,
    'その他': other,
    'パーティー': party,
    'パズル': puzzle,
    'レース': racing,
    'ロールプレイング': rpg,
    'シューティング': shooter,
    'シミュレーション': simulation,
    'スポーツ': sports,
    'ストラテジー': strategy,
    '学習': study,
    'トレーニング': training,
    '実用': utility,
  };
  
  static const Map<String, Category> _ko = {
    '액션': action,
    '어드벤처': adventure,
    '아케이드': arcade,
    '보드': boardGame,
    '커뮤니케이션': communication,
    '격투': fighting,
    '음악': music,
    '기타': other,
    '파티': party,
    '실용': practical,
    '퍼즐': puzzle,
    '레이싱': racing,
    'RPG': rpg,
    '슈팅': shooter,
    '시뮬레이션': simulation,
    '스포츠': sports,
    '전략': strategy,
    '학습': study,
    '트레이닝': training,
  };
  
  static const Map<String, Category> _nl = {
    "Actiespel": action,
    "Avonturenspel": adventure,
    "Speelhalspel": arcade,
    "Bordspel": boardGame,
    "Communicatie": communication,
    "Educatief spel": education,
    "Vechtspel": fighting,
    "Eerste-persoonsschietspel": firstPersonShooter,
    "Lifestyle": lifestyle,
    "Multiplayer": multiplayer,
    "Muziek": music,
    "Anders": other,
    'Party': party,
    "Platformspel": platformer,
    "Puzzelspel": puzzle,
    "Praktisch": practical,
    "Racespel": racing,
    "RPG": rpg,
    "Schietspel": shooter,
    "Winkel": shop,
    "Simulatiespel": simulation,
    "Sportspel": sports,
    "Strategiespel": strategy,
    "Study": study,
    'Systeemapplicaties': systemTool,
    "Training": training,
  };
  
  static const Map<String, Category> _pt = {
    'Ação': action,
    'Aventura': adventure,
    'Arcada': arcade,
    'Arcade': arcade,
    'Jogo de Tabuleiro': boardGame,
    'Tabuleiro': boardGame,
    'Comunicação': communication,
    'Ferramentas de comunicação': communication,
    'Educacional': education,
    'Educativo': education,
    'Luta': fighting,
    'Shooter na Primeira Pessoa': firstPersonShooter,
    'Tiro em primeira pessoa (FPS)': firstPersonShooter,
    'Estilo de Vida': lifestyle,
    'Multijogador': multiplayer,
    'Multijogadores': multiplayer,
    'Música': music,
    'Outro': other,
    'Outros': other,
    'Festa': party,
    'Grupo': party,
    'Plataforma': platformer,
    'Plataformas': platformer,
    'Praticidade': practical,
    'Puzzle': puzzle,
    'Corrida': racing,
    'Corridas': racing,
    'Estilo de vida': rpg,
    'RPG': rpg,
    'Shooter': shooter,
    'Tiro': shooter,
    'Loja': shop,
    'Simulação': simulation,
    'Esporte': sports,
    'Desporto': sports,
    'Estratégia': strategy,
    'Aprendizagem': study,
    'Study': study,
    'Ferramentas da Consola': systemTool,
    'Training': training,
    'Treinamento': training,
    'Atualizações': updates,
    'Utilidades': utility,
    'Utilitário': utility,
    'Vídeo': video,
  };
  
  static const Map<String, Category> _ru = {
    'Экшн': action,
    'Приключения': adventure,
    'Аркада': arcade,
    'Настольная игра': boardGame,
    'Общение': communication,
    'Обучающая игра': education,
    'Файтинг': fighting,
    'Шутер от первого лица': firstPersonShooter,
    'Образ жизни': lifestyle,
    'Мультиплеер': multiplayer,
    'Музыка': music,
    'Прочее': other,
    'Вечеринка': party,
    'Платформер': platformer,
    'Пазл': puzzle,
    'Гонки': racing,
    'Ролевая игра': rpg,
    'Шутер': shooter,
    'Магазин': shop,
    'Симулятор': simulation,
    'Спортивная игра': sports,
    'Стратегия': strategy,
    'Study': study,
    'Приложение': systemTool,
    'Training': training,
    'Служебные программы': utility,
  };
  
  static const Map<String, Category> _zh = {
    '动作': action,
    '動作': action,
    '冒险': adventure,
    '冒險': adventure,
    '街机': arcade,
    '街機': arcade,
    '桌游': boardGame,
    '桌上遊戲': boardGame,
    '交流': communication,
    '合作': cooperation,
    '教育': education,
    '益智': education,
    '家庭': family,
    '女性': female,
    '格斗': fighting,
    '格鬥': fighting,
    '生活方式': lifestyle,
    '多人': multiplayer,
    '音乐': music,
    '音樂': music,
    '其他': other,
    '派对': party,
    '派對': party,
    '平台跳跃': platformer,
    '实用': practical,
    '實用': practical,
    '竞速': racing,
    '競速': racing,
    '角色扮演': rpg,
    '射击': shooter,
    '射擊': shooter,
    '模拟': simulation,
    '模擬': simulation,
    '体育': sports,
    '運動': sports,
    '策略': strategy,
    '学习': study,
    '學習': study,
    '训练': training,
    '訓練': training,
  };

  String toValue(LanguageCode language) =>
    switch (language) {
      LanguageCode.de => _de.invert()[this]!,
      LanguageCode.en => _en.invert()[this]!,
      LanguageCode.es => _es.invert()[this]!,
      LanguageCode.fr => _fr.invert()[this]!,
      LanguageCode.it => _it.invert()[this]!,
      LanguageCode.ja => _ja.invert()[this]!,
      LanguageCode.ko => _ko.invert()[this]!,
      LanguageCode.nl => _nl.invert()[this]!,
      LanguageCode.pt => _pt.invert()[this]!,
      LanguageCode.ru => _ru.invert()[this]!,
      LanguageCode.zh => _zh.invert()[this]!,
    };
}

extension _MapInverter<K, V> on Map<K, V> {
  Map<V, K> invert() => {
    for (var entry in entries)
    entry.value: entry.key,
  };
}
