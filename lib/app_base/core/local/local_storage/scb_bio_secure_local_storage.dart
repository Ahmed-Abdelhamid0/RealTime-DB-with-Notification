abstract class ScbBioSecureLocalStorage {
  Future<void> saveSecurely<T>(String key, T value);

  Future<T?> retrieveSecurely<T>(String key, {T Function(Map<String, dynamic>)? fromJson});

  Future<void> delete(String key);

  Future<void> deleteAll(List<String> keys);
}
