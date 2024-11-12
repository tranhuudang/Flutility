abstract class KeySelector {
  Future<int> setPrimaryKey();

  Future<String> getKeyFromFirestore({required String from});

  Future<bool> checkApiKeyValidity(String key);
}
