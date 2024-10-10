import 'dart:async';
import 'dart:developer';

import 'package:barrier_gate_web/Shared/SharedPreferencesControllerCenter.dart';
import 'package:barrier_gate_web/ehp_end_point_library/ehp_api.dart';
import 'package:barrier_gate_web/manageproject/manageproject/controller/Villageproject_api.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart'; // Import GetX
import 'package:shared_preferences/shared_preferences.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import 'flutter_flow/flutter_flow_util.dart';
import 'flutter_flow/nav/nav.dart'; // Adjust nav-related imports to remove GoRouter
import 'index.dart';
import 'package:get_storage/get_storage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await GetStorage.init();

  // เรียกใช้ service locator
  setUpServiceLocator();

  // เรียกใช้งาน API ตามที่ต้องการ
  final apiInitializedResult = await EHPApi.initializeEHPToken();
  log('main => EHPApi.initializeEHPToken() = $apiInitializedResult');
  await serviceLocator<EHPApi>().getUserJWT('0000000000001', 'admin');

  // สร้าง instance ของ AuthController
  final AuthController authController = Get.put(AuthController());

  // ใช้ SharedPreferencesControllerCenter แทน SharedPreferences ตรงๆ
  final SharedPreferencesControllerCenter prefsCenter =
      SharedPreferencesControllerCenter();

  await authController.clearExpiredData();

  // ดึง userRole จาก SharedPreferencesControllerCenter หลังจากเช็คหมดอายุ
  final String? userRole = await prefsCenter.getString('userRole');

  Get.put(AppStateNotifier.instance);

  final ffAppState = FFAppState();
  await ffAppState.initializePersistedState();

  Timer.periodic(Duration(days: 3), (timer) async {
    bool isExpired = await prefsCenter.isExpired('userRole');
    if (isExpired) {
      await prefsCenter.remove('userRole');
      Get.offAllNamed('/loginListView');
    }
  });

  runApp(MyApp(
    initialRoute: _getInitialRoute(userRole),
    initialThemeMode: _parseThemeMode('dark'),
  ));
}

ThemeMode _parseThemeMode(String mode) {
  switch (mode) {
    case 'light':
      return ThemeMode.light;
    case 'dark':
      return ThemeMode.dark;
    default:
      return ThemeMode.system;
  }
}

String _getInitialRoute(String? userRole) {
  if (userRole == null) {
    return '/loginListView';
  }
  switch (userRole) {
    case 'ADMIN_BGS':
      return '/manageproject';
    case 'ADMIN_VILLAGE':
      return '/village_list_view';
    case 'SUPPER_SECURITY':
      return '/security_dashboard';
    default:
      return '/';
  }
}

class MyApp extends StatefulWidget {
  final ThemeMode initialThemeMode;
  final String initialRoute;

  MyApp({Key? key, required this.initialThemeMode, required this.initialRoute})
      : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();

  static _MyAppState of(BuildContext context) =>
      context.findAncestorStateOfType<_MyAppState>()!;
}

class _MyAppState extends State<MyApp> {
  ThemeMode _themeMode = ThemeMode.system;
  bool displaySplashImage = true;

  @override
  void initState() {
    super.initState();
    _themeMode = widget.initialThemeMode;

    Future.delayed(const Duration(milliseconds: 1000), () {
      AppStateNotifier.instance.stopShowingSplashImage();
    });
  }

  void setThemeMode(ThemeMode mode) async {
    setState(() {
      _themeMode = mode;
    });

    // ใช้ SharedPreferencesControllerCenter แทน
    final SharedPreferencesControllerCenter prefsCenter =
        SharedPreferencesControllerCenter();
    await prefsCenter.setString('themeMode', mode.toString().split('.').last);
  }

  @override
  Widget build(BuildContext context) {
    final appStateNotifier = Get.find<AppStateNotifier>();

    return GetMaterialApp(
      title: 'Barrier Gate Web',
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [Locale('en', '')],
      theme: ThemeData(
        brightness: Brightness.light,
        useMaterial3: false,
      ),
      themeMode: _themeMode,
      initialRoute: widget.initialRoute,
      getPages: getPages(appStateNotifier),
      debugShowCheckedModeBanner: false,
    );
  }
}
