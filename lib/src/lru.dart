class LRU<T> {
  Map<String, T> cache = {};
  int limit;
  List<String> keys = [];
  LRU(this.limit);
  T get(String key) {
    var item = cache[key];
    if (item != null) {
      cache.remove(key);
      keys.remove(key);
    }
    return item;
  }

  void put(String key, T value) {
    if (cache.length > limit) {
      cache.remove(keys.removeAt(0));
    }
    cache[key] = value;
    keys.add(key);
  }
}
