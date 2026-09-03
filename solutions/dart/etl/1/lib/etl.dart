class Etl {
  Map<String, int> transform(Map legacy) {
    final Map<String, int> result = {};
    for (MapEntry x in legacy.entries) {
      for (String k in x.value) {
        result[k.toLowerCase()] = int.parse(x.key);
      }
    }
    return result;
  }
}
