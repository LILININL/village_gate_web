import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesControllerCenter {
  static final SharedPreferencesControllerCenter _instance =
      SharedPreferencesControllerCenter._internal();

  factory SharedPreferencesControllerCenter() {
    return _instance;
  }

  SharedPreferencesControllerCenter._internal();

  // ฟังก์ชันเก็บข้อมูล String
  Future<void> setString(String key, String value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString(key, value);
  }

  // ฟังก์ชันดึงข้อมูล String
  Future<String?> getString(String key) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(key);
  }

  // ฟังก์ชันลบข้อมูลตาม key
  Future<void> remove(String key) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.remove(key);
  }

  // ฟังก์ชันเก็บข้อมูล String พร้อมตั้งเวลาให้หมดอายุ
    Future<void> setStringWithExpiration(
        String key, String value, Duration duration) async {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.setString(key, value);
      DateTime expirationTime = DateTime.now().add(duration);
      await prefs.setString('$key-expiration', expirationTime.toIso8601String());
    }

  // ฟังก์ชันดึงข้อมูล String พร้อมตรวจสอบว่าหมดอายุหรือไม่
  Future<String?> getStringWithExpiration(String key) async {
    if (await isExpired(key)) {
      await remove(key);
      return null;
    }
    return getString(key);
  }

  // ฟังก์ชันตรวจสอบว่าข้อมูลหมดอายุหรือยัง
  Future<bool> isExpired(String key) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? expirationTimeString = prefs.getString('$key-expiration');
    if (expirationTimeString != null) {
      DateTime expirationTime = DateTime.parse(expirationTimeString);
      return DateTime.now().isAfter(expirationTime);
    }
    return true; // ถือว่าหมดอายุหากไม่มีข้อมูล expiration
  }

  // ฟังก์ชันลบข้อมูลหากหมดอายุ
  Future<void> removeIfExpired(String key) async {
    if (await isExpired(key)) {
      await remove(key);
      await remove('$key-expiration');
    }
  }

  // ฟังก์ชันเคลียร์ข้อมูลหมดอายุทั้งหมด
  Future<void> clearExpiredData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    Set<String> keys = prefs.getKeys();
    for (String key in keys) {
      if (await isExpired(key)) {
        await remove(key);
        await remove('$key-expiration');
      }
    }
  }
}
