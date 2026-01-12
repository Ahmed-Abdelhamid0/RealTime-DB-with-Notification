abstract class ScbLocalStorage {
  Future<void> save<T>(String key, T value);

  Future<T?> get<T>(String key, {T Function(Map<String, dynamic>)? fromJson});

  Future<void> delete(String key);

  Future<void> clear();
}
