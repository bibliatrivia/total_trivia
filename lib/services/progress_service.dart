import 'package:shared_preferences/shared_preferences.dart';

import '../data/catalog.dart';
import '../models/progress_models.dart';

class ProgressService {
  const ProgressService._();

  static const _prefix = 'tt_progress_v1_';

  static String _key(String category, String topic, String level) =>
      '$_prefix${Uri.encodeComponent(category)}|${Uri.encodeComponent(topic)}|$level';

  static Future<SharedPreferences> _prefs() =>
      SharedPreferences.getInstance();

  static Future<void> save(
    String category,
    String topic,
    String level,
    int score,
  ) async {
    final prefs = await _prefs();
    final key = _key(category, topic, level);
    final previousBest = prefs.getInt('${key}_best') ?? 0;

    if (score > previousBest) {
      await prefs.setInt('${key}_best', score);
    }

    await prefs.setInt(
      '${key}_attempts',
      (prefs.getInt('${key}_attempts') ?? 0) + 1,
    );

    if (score == 10) {
      await prefs.setInt(
        '${key}_perfects',
        (prefs.getInt('${key}_perfects') ?? 0) + 1,
      );
    }
  }

  static Future<ProgressSnapshot> load() async {
    final prefs = await _prefs();
    final records =
        <String, Map<String, Map<String, LevelProgress>>>{};

    for (final category in categories) {
      records[category.title] = {};
      for (final topic in category.subcategories) {
        records[category.title]![topic] = {};
        for (final level in difficulties) {
          final key = _key(category.title, topic, level);
          records[category.title]![topic]![level] = LevelProgress(
            best: prefs.getInt('${key}_best') ?? 0,
            attempts: prefs.getInt('${key}_attempts') ?? 0,
            perfects: prefs.getInt('${key}_perfects') ?? 0,
          );
        }
      }
    }

    return ProgressSnapshot(records);
  }
}
