import 'package:barrier_gate_web/flutter_flow/flutter_flow_util.dart';
import 'package:barrier_gate_web/manageproject/item_niti_widget/item_niti_widget_widget.dart';
import 'package:barrier_gate_web/manageproject/manageproject/controller/Villageproject_api.dart';
import 'package:barrier_gate_web/manageproject/manageproject/controller/json_model/ehp_villageproject_model.dart';
import 'package:barrier_gate_web/manageproject/manageproject/controller/json_model/officer_model.dart';
import 'package:barrier_gate_web/manageproject/project_detail/project_detail_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:universal_html/html.dart' as html;

class ProjectDetailUser extends StatelessWidget {
  final ProjectDetailModel model;
  final int projectId;

  final OfficerController officerController = Get.put(OfficerController());
  final box = GetStorage();

  ProjectDetailUser({
    super.key,
    required this.model,
    required this.projectId,
  });

  @override
  Widget build(BuildContext context) {
    // ดึง village จาก Get.arguments หรือจาก GetStorage
    final Villageproject? village = Get.arguments ?? getSavedVillageProject();

    // ถ้าข้อมูล village เป็น null ให้กลับไปที่หน้าอื่น หรือแสดงข้อความแจ้งเตือน
    if (village == null) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        Get.offAllNamed(
            '/dashboard_list_view'); // กลับไปที่หน้าหลักหากไม่มีข้อมูล
      });
      return const Center(child: Text('ไม่พบข้อมูลโครงการหมู่บ้าน'));
    }

    // เรียกใช้งาน officerController เพื่อดึงข้อมูลตาม projectId
    WidgetsBinding.instance.addPostFrameCallback((_) {
      officerController.getOfficersByProjectId(village.villageproject_id!);
    });

    return Obx(() {
      if (officerController.isLoading.value) {
        return const Center(child: CircularProgressIndicator());
      }

      if (officerController.officerProjects.isEmpty) {
        return const Center(child: Text('ไม่มีข้อมูลเจ้าหน้าที่'));
      }

      final officerProjects = officerController.officerProjects;

      return MasonryGridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: SliverSimpleGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: () {
            if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
              return 1;
            } else if (MediaQuery.sizeOf(context).width < kBreakpointMedium) {
              return 1;
            } else if (MediaQuery.sizeOf(context).width < kBreakpointLarge) {
              return 3;
            } else {
              return 4;
            }
          }(),
        ),
        crossAxisSpacing: 16.0,
        mainAxisSpacing: 16.0,
        itemCount: officerProjects.length,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          final officer = officerProjects[index];
          return wrapWithModel(
            model: model.itemNitiWidgetModel1,
            updateCallback: () => (() {}),
            child: ItemNitiWidgetWidget(
              fullname:
                  '${officer.officer_pname} ${officer.officer_fname} ${officer.officer_lname}',
            ),
          );
        },
      );
    });
  }

  Villageproject? getSavedVillageProject() {
    final villageJson = box.read('selectedVillage');
    if (villageJson != null) {
      return Villageproject.decode(villageJson);
    }
    return null;
  }
}
