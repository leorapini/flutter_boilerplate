import 'package:localstorage/localstorage.dart';

import '../../data/cache/cache_storage.dart';

class LocalStorageAdapter implements CacheStorage {
  final LocalStorage localStorage;

  LocalStorageAdapter({required this.localStorage});

  @override
  Future<void> save({required String key, required dynamic value}) async {
    await localStorage.deleteItem(key);
    await localStorage.setItem(key, value);
  }

  @override
  Future<void> delete(String key) async {
    await localStorage.deleteItem(key);
  }

  @override
  Future<dynamic> fetch(String key) async {
    final data = await localStorage.getItem(key);
    return data;
  }
}
