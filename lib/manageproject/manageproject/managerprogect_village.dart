import 'package:barrier_gate_web/flutter_flow/flutter_flow_theme.dart';
import 'package:barrier_gate_web/flutter_flow/flutter_flow_util.dart';
import 'package:barrier_gate_web/manageproject/item_village_widget/item_village_widget_widget.dart';
import 'package:barrier_gate_web/manageproject/manageproject/controller/Villageproject_api.dart';
import 'package:barrier_gate_web/manageproject/manageproject/controller/json_model/ehp_villageproject_model.dart';
import 'package:barrier_gate_web/manageproject/manageproject/manageproject_model.dart';
import 'package:barrier_gate_web/manageproject/project_detail/project_detail_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:universal_html/html.dart' as html;

class VillageProject extends StatelessWidget {
  final ManageprojectModel model;
  final Function(int villagelength, int condoCount, int villageCount)
      onVillageLengthChanged;
  final box = GetStorage();

  VillageProject({
    super.key,
    required this.model,
    required this.onVillageLengthChanged,
  });

  @override
  Widget build(BuildContext context) {
    final villageController = Get.put(VillageprojectController());

    return Obx(() {
      // ถ้ากำลังโหลดอยู่ แสดง CircularProgressIndicator
      if (villageController.isLoading.value) {
        return const Center(child: CircularProgressIndicator());
      }

      // เช็ค null สำหรับ villageProjects ก่อนใช้
      final villageProjects = villageController.villageProjects;

      if (villageProjects == null) {
        return const Center(child: Text('ไม่พบข้อมูล (ข้อมูลเป็น null)'));
      }

      // เช็คว่ามี element ใน villageProjects หรือไม่
      if (villageProjects.isEmpty) {
        return const Center(child: Text('ไม่พบข้อมูลโครงการหมู่บ้าน '));
      }

      // ถ้ามีข้อมูลอยู่
      int condoCount =
          villageProjects.where((v) => v.villageproject_type_id == 1).length;
      int villageCount =
          villageProjects.where((v) => v.villageproject_type_id == 2).length;

      // ส่งข้อมูลจำนวนหมู่บ้านและคอนโดกลับไปที่ callback
      WidgetsBinding.instance.addPostFrameCallback((_) {
        onVillageLengthChanged(
            villageProjects.length, condoCount, villageCount);
      });

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
        itemCount: villageProjects.length,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          // เช็คว่าข้อมูลใน index นี้เป็น null หรือไม่
          final village = villageProjects[index];
          if (village == null) {
            return const Text('ข้อมูลหมู่บ้านเป็น null');
          }

          return InkWell(
            onTap: () {
              box.write('selectedVillage', village.encode());
              Get.toNamed('/projectDetail', arguments: village);
              print('Clicked on: ${village.villageproject_display_name}');
            },
            child: wrapWithModel(
              model: model.itemVillageWidgetModel1,
              updateCallback: () => {},
              child: ItemVillageWidgetWidget(
                namevillage: village.villageproject_registered_name ??
                    'ไม่มีชื่อหมู่บ้าน',
                type: village.villageproject_type_name ?? 'ไม่มีประเภทโครงการ',
                icon: Icon(
                  Icons.home_filled,
                  color: FlutterFlowTheme.of(context).primaryBackground,
                  size: 12.0,
                ),
              ),
            ),
          );
        },
      );
    });
  }
}
