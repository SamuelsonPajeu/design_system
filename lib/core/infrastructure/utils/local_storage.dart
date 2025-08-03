import 'dart:async';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class LocalStorage {
  final storage = const FlutterSecureStorage();

  Future<void> cleanStorage() async {
    print(
        '---------------------LocalStorage - cleanStorage---------------------');
    await Future.delayed(const Duration(microseconds: 100));
    await storage.deleteAll();
    return;
  }

  Future<void> deleteStorage(String key) async {
    print(
        '---------------------LocalStorage - deleteStorage - $key---------------------');

    /// delete from keystore/keychain
    await Future.delayed(const Duration(microseconds: 100));
    await storage.delete(key: key);
    return;
  }

  Future<void> writeStorage(String key, String value) async {
    print(
        '---------------------LocalStorage - writeStorage - $key - $value---------------------');

    /// write to keystore/keychain
    await Future.delayed(const Duration(microseconds: 100));
    await storage.write(key: key, value: value);
    return;
  }

  Future<bool> hasStorage(String key) async {
    /// Has from keystore/keychain
    await Future.delayed(const Duration(microseconds: 100));
    String? value = await storage.read(key: key);
    if (value == null) {
      print(
          '---------------------LocalStorage - hasStorage - $key - false---------------------');
      return false;
    } else {
      print(
          '---------------------LocalStorage - hasStorage - $key - true---------------------');
      return true;
    }
  }

  Future<String?> readStorage(String key) async {
    /// Has from keystore/keychain
    await Future.delayed(const Duration(microseconds: 100));
    String? result = await storage.read(key: key);
    print(
        '---------------------LocalStorage - readStorage $key - ${result ?? 'null'}---------------------');
    return result;
  }

  Future<Map<String, String>> readAll() async {
    print('---------------------LocalStorage - readAll---------------------');
    await Future.delayed(const Duration(microseconds: 100));
    Map<String, String> result = await storage.readAll();
    print('readAll - ${result.toString()}');
    return result;
  }
}
