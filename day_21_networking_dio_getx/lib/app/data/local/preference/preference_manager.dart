abstract class PreferenceManager {
  static const keyToken = "token";

  String getString(String key, {String defaultValue = ""});

  void setString(String key, String value);

  int getInt(String key, {int defaultValue = 0});

  void setInt(String key, int value);

  double getDouble(String key, {double defaultValue = 0.0});

  void setDouble(String key, double value);

  bool getBool(String key, {bool defaultValue = false});

  void setBool(String key, bool value);

  List<String> getStringList(String key,
      {List<String> defaultValue = const []});

  void setStringList(String key, List<String> value);

  void remove(String key);

  void clear();
}
