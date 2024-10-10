import 'package:barrier_gate_web/approved/approved_list_view/approved_list_view_widget.dart';
import 'package:barrier_gate_web/car/externalvehicle/externalvehicle_widget.dart';
import 'package:barrier_gate_web/car/externalvehicle_detail/externalvehicle_detail_widget.dart';
import 'package:barrier_gate_web/car/residents_cars/residents_cars_widget.dart';
import 'package:barrier_gate_web/car/residents_cars_detail/residents_cars_detail_widget.dart';
import 'package:barrier_gate_web/dashboard/dashboard_list_view/dashboard_list_view_widget.dart';
import 'package:barrier_gate_web/dashboard/registered_cars_list_view/registered_cars_list_view_widget.dart';
import 'package:barrier_gate_web/dashboard/registered_list_view/registered_list_view_widget.dart';
import 'package:barrier_gate_web/dashboard/visitors_car_list_view/visitors_car_list_view_widget.dart';
import 'package:barrier_gate_web/home/home_detail_list_view/home_detail_list_view_widget.dart';
import 'package:barrier_gate_web/home/home_in_projact_list_view/home_in_projact_list_view_widget.dart';
import 'package:barrier_gate_web/login/login_list_view/login_list_view_widget.dart';
import 'package:barrier_gate_web/manageproject/manageproject/controller/Villageproject_api.dart';
import 'package:barrier_gate_web/manageproject/manageproject/manageproject_widget.dart';
import 'package:barrier_gate_web/manageproject/project_detail/project_detail_widget.dart';
import 'package:barrier_gate_web/setting/setting_list_view/setting_list_view_widget.dart';
import 'package:barrier_gate_web/user/user_detail_list_view/user_detail_list_view_widget.dart';
import 'package:barrier_gate_web/user/user_list_view/user_list_view_widget.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import '/flutter_flow/flutter_flow_theme.dart';

class AppStateNotifier extends GetxController {
  static final AppStateNotifier _instance = AppStateNotifier._internal();

  static AppStateNotifier get instance => _instance;

  AppStateNotifier._internal();

  RxBool showSplashImage = true.obs;

  void stopShowingSplashImage() {
    showSplashImage.value = false;
  }
}

List<GetPage> getPages(AppStateNotifier appStateNotifier) {
  return [
    GetPage(
      name: '/',
      page: () => Obx(() => appStateNotifier.showSplashImage.value
          ? Container(
              color: FlutterFlowTheme.of(Get.context!).primaryBackground,
              child: Center(
                child: Image.asset(
                  'assets/images/logo.png',
                  width: 250.0,
                  height: 250.0,
                  fit: BoxFit.contain,
                ),
              ),
            )
          : const LoginListViewWidget()),
    ),
    GetPage(
      name: '/loginListView',
      page: () => LoginListViewWidget(),
    ),
    GetPage(
      name: '/dashboard_list_view',
      page: () => DashboardListViewWidget(),
      transition: Transition.fade,
      transitionDuration: Duration(milliseconds: 1000),
    ),
    GetPage(
      name: '/home_in_projact_list_view',
      page: () => HomeInProjactListViewWidget(),
      transition: Transition.fade,
      transitionDuration: Duration(milliseconds: 1000),
    ),
    GetPage(
      name: '/approved_list_view',
      page: () => ApprovedListViewWidget(),
      transition: Transition.fade,
      transitionDuration: Duration(milliseconds: 1000),
    ),
    GetPage(
      name: '/residents_cars',
      page: () => ResidentsCarsWidget(),
      transition: Transition.fade,
      transitionDuration: Duration(milliseconds: 1000),
    ),
    GetPage(
      name: '/user_list_view',
      page: () => UserListViewWidget(),
      transition: Transition.fade,
      transitionDuration: Duration(milliseconds: 1000),
    ),
    GetPage(
      name: '/residentsCarsDetail',
      page: () => ResidentsCarsDetailWidget(),
    ),
    GetPage(
      name: '/userDetailListView',
      page: () => UserDetailListViewWidget(),
    ),
    GetPage(
      name: '/externalvehicle',
      page: () => ExternalvehicleWidget(),
      transition: Transition.fade,
      transitionDuration: Duration(milliseconds: 1000),
    ),
    GetPage(
      name: '/externalvehicleDetail',
      page: () => ExternalvehicleDetailWidget(),
    ),
    GetPage(
      name: '/settingListView',
      page: () => SettingListViewWidget(),
    ),
    GetPage(
      name: '/registeredListView',
      page: () => RegisteredListViewWidget(),
    ),
    GetPage(
      name: '/registeredCarsListView',
      page: () => RegisteredCarsListViewWidget(),
    ),
    GetPage(
      name: '/visitorsCarListView',
      page: () => VisitorsCarListViewWidget(),
    ),
    GetPage(
      name: '/homeDetailListView',
      page: () => HomeDetailListViewWidget(),
    ),
    GetPage(
      name: '/manageproject',
      page: () => ManageprojectWidget(),
    ),
    GetPage(
      name: '/projectDetail',
      page: () {
        final arguments = Get.arguments;
        if (arguments == null) {
          WidgetsBinding.instance.addPostFrameCallback((_) {
            Get.offAllNamed('/manageproject');
          });
          return const Center(
              child:
                  CircularProgressIndicator()); 
        } else {
          return ProjectDetailWidget();
        }
      },
      binding: BindingsBuilder(() {
        if (Get.arguments != null) {
          Get.put(OfficerController());
        }
      }),
    ),
  ];
}

extension NavigationExtensions on BuildContext {
  void safePop() {
    if (Get.key.currentState?.canPop() ?? false) {
      Get.back();
    } else {
      Get.offAllNamed('/');
    }
  }
}

// TransitionInfo logic if needed
class TransitionInfo {
  const TransitionInfo({
    required this.hasTransition,
    this.transitionType = Transition.fade,
    this.duration = const Duration(milliseconds: 200),
    this.alignment,
  });

  final bool hasTransition;
  final Transition transitionType;
  final Duration duration;
  final Alignment? alignment;

  static TransitionInfo appDefault() => const TransitionInfo(
        hasTransition: true,
        transitionType: Transition.fade,
        duration: Duration(milliseconds: 200),
      );
}
