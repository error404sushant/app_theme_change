import 'dart:convert';
import 'package:hive/hive.dart';


class HiveManager {
  // Singleton pattern to ensure only one instance of HiveManager
  static final HiveManager _instance = HiveManager._internal();
  factory HiveManager() => _instance;
  HiveManager._internal();

  // To store encryption key (Optional)
  String? _encryptionKey;

  // Initialize Hive
  Future<void> init() async {
    // Hive initialization is done in main.dart for Flutter apps (Hive.initFlutter)
  }

  // Set encryption key if needed
  void setEncryptionKey(String encryptionKey) {
    _encryptionKey = encryptionKey;
  }

  // Open a box with optional encryption
  Future<Box<T>> openBox<T>(String boxName) async {
    var encryptionCipher;
    if (_encryptionKey != null) {
      encryptionCipher = HiveAesCipher(base64Url.decode(_encryptionKey!));
    }
    return await Hive.openBox<T>(boxName, encryptionCipher: encryptionCipher);
  }

  // Add or Update data in the box
  Future<void> addOrUpdateData<T>(String boxName, dynamic key, T value) async {
    var box = await openBox<T>(boxName);
    await box.put(key, value);
  }

  // Get data from the box
  Future<T?> getData<T>(String boxName, dynamic key) async {
    var box = await openBox<T>(boxName);
    return box.get(key);
  }

  // Check if data exists in the box
  Future<bool> containsKey<T>(String boxName, dynamic key) async {
    var box = await openBox<T>(boxName);
    return box.containsKey(key);
  }

  // Remove data from the box
  Future<void> removeData<T>(String boxName, dynamic key) async {
    var box = await openBox<T>(boxName);
    await box.delete(key);
  }

  // Clear all data from the box
  Future<void> clearBox<T>(String boxName) async {
    var box = await openBox<T>(boxName);
    await box.clear();
  }

  // Get all keys from the box
  Future<List<dynamic>> getAllKeys<T>(String boxName) async {
    var box = await openBox<T>(boxName);
    return box.keys.toList();
  }

  // Close the box
  Future<void> closeBox<T>(String boxName) async {
    var box = await openBox<T>(boxName);
    await box.close();
  }
}
