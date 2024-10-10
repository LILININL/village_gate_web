import 'package:barrier_gate_web/Shared/SharedPreferencesControllerCenter.dart';
import 'package:barrier_gate_web/ehp_end_point_library/ehp_api.dart';
import 'package:barrier_gate_web/manageproject/manageproject/controller/json_model/Auth_model.dart';
import 'package:barrier_gate_web/manageproject/manageproject/controller/json_model/ehp_villageproject_model.dart';
import 'package:barrier_gate_web/manageproject/manageproject/controller/json_model/officer_model.dart';
import 'package:get_storage/get_storage.dart';
import 'package:get/get.dart';
import 'dart:convert';
import 'package:intl/intl.dart';

import 'dart:convert';
import 'dart:html'; // For using sessionStorage
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class VillageprojectController extends GetxController {
  var villageProjects = <Villageproject>[].obs;

  var isLoading = true.obs;

  @override
  void onInit() {
    super.onInit();
    fetchVillageProjects();
  }

  Future<void> fetchVillageProjects() async {
    try {
      isLoading.value = true;
      final value = await serviceLocator<EHPApi>().getRestAPI(
        Villageproject.newInstance(),
        '?&\$limit=1000',
      );
      villageProjects.value =
          List<Villageproject>.from(value.map((e) => e as Villageproject));
    } catch (error) {
      print("Error loading village projects: $error");
    } finally {
      isLoading.value = false;
    }
  }
//-----------------------------------------------------------------------------------------------
}

class OfficerController extends GetxController {
  var officerProjects = <Officer>[].obs;
  var isLoading = true.obs;

  Future<void> getOfficersByProjectId(int projectId) async {
    try {
      isLoading.value = true;
      final officers = await serviceLocator<EHPApi>().getRestAPI(
          Officer.newInstance(),
          'officer?officer_active=Y&is_admin=Y&villageproject_id=$projectId');
      //'?$projectId${Officer.newInstance().getDefaultRestURIParam()}&\$limit=100');

      officerProjects.value =
          List<Officer>.from(officers.map((e) => e as Officer));
    } catch (error) {
      print("Error fetching officers: $error");
    } finally {
      isLoading.value = false;
    }
  }

  static Future<Officer> getOfficerFromID(int officerID) async {
    final dataCount = await serviceLocator<EHPApi>()
        .getRestAPIDataCount(Officer.newInstance(), 'officer_id=$officerID');

    if ((dataCount ?? 0) > 0) {
      return await serviceLocator<EHPApi>().getRestAPISingleFirstObject(
          Officer.newInstance(), '?officer_id=$officerID') as Officer;
    } else {
      return Officer.newInstance()..officer_id = officerID;
    }
  }

  static Future<bool> saveOfficer(Officer officerData) async {
    return await serviceLocator<EHPApi>()
        .postRestAPIData(officerData, officerData.getKeyFieldValue());
  }

  static Future<bool> deleteOfficer(Officer officerData) async {
    return await serviceLocator<EHPApi>().deleteRestAPI(officerData);
  }
}

class AuthController extends GetxController {
  var AuthLo = <Auth>[].obs;
  var isLoading = true.obs;
  final SharedPreferencesControllerCenter sharedPrefsController =
      SharedPreferencesControllerCenter();

  Future<void> getAuths(String user, String pass) async {
    final value = await serviceLocator<EHPApi>().getRestAPI(
      Auth.newInstance(),
      '?&Xlonginname=$user:S&xpaaword=$pass:S',
    );
    AuthLo.value = List<Auth>.from(value.map((e) => e as Auth));
  }

  Future<void> saveUserRoleWithExpiration(String role,
      {Duration expiration = const Duration(days: 1)}) async {
    await SharedPreferencesControllerCenter()
        .setStringWithExpiration('userRole', role, expiration);
  }

  final Map<String, String> userRoleRoutes = {
    'ADMIN_BGS': '/manageproject',
    'ADMIN_VILLAGE': '/village_list_view',
    'SUPPER_SECURITY': '/security_dashboard',
  };

  String checkUserRole() {
    return AuthLo.first.officer_group_code!;
  }

  Future<String?> getUserRole() async {
    return sharedPrefsController.getString('userRole');
  }

  Future<void> clearAll() async {
    await sharedPrefsController.remove('userRole');
  }

  Future<void> clearExpiredData() async {
    await sharedPrefsController.removeIfExpired('userRole');
  }
}
