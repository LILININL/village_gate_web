import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/manageproject/add_project/add_project_widget.dart';
import '/manageproject/item_village_widget/item_village_widget_widget.dart';
import '/utils/searchbargreen/searchbargreen_widget.dart';
import '/utils/sidebar/sidebar_widget.dart';
import 'dart:math';
import 'manageproject_widget.dart' show ManageprojectWidget;
import 'package:styled_divider/styled_divider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ManageprojectModel extends FlutterFlowModel<ManageprojectWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for sidebar component.
  late SidebarModel sidebarModel;
  // Model for searchbargreen component.
  late SearchbargreenModel searchbargreenModel;
  // Model for item_village_widget component.
  late ItemVillageWidgetModel itemVillageWidgetModel1;
  // Model for item_village_widget component.
  late ItemVillageWidgetModel itemVillageWidgetModel2;
  // Model for item_village_widget component.
  late ItemVillageWidgetModel itemVillageWidgetModel3;
  // Model for item_village_widget component.
  late ItemVillageWidgetModel itemVillageWidgetModel4;
  // Model for item_village_widget component.
  late ItemVillageWidgetModel itemVillageWidgetModel5;
  // Model for item_village_widget component.
  late ItemVillageWidgetModel itemVillageWidgetModel6;
  // Model for item_village_widget component.
  late ItemVillageWidgetModel itemVillageWidgetModel7;
  // Model for item_village_widget component.
  late ItemVillageWidgetModel itemVillageWidgetModel8;
  // Model for item_village_widget component.
  late ItemVillageWidgetModel itemVillageWidgetModel9;

  @override
  void initState(BuildContext context) {
    sidebarModel = createModel(context, () => SidebarModel());
    searchbargreenModel = createModel(context, () => SearchbargreenModel());
    itemVillageWidgetModel1 =
        createModel(context, () => ItemVillageWidgetModel());
    itemVillageWidgetModel2 =
        createModel(context, () => ItemVillageWidgetModel());
    itemVillageWidgetModel3 =
        createModel(context, () => ItemVillageWidgetModel());
    itemVillageWidgetModel4 =
        createModel(context, () => ItemVillageWidgetModel());
    itemVillageWidgetModel5 =
        createModel(context, () => ItemVillageWidgetModel());
    itemVillageWidgetModel6 =
        createModel(context, () => ItemVillageWidgetModel());
    itemVillageWidgetModel7 =
        createModel(context, () => ItemVillageWidgetModel());
    itemVillageWidgetModel8 =
        createModel(context, () => ItemVillageWidgetModel());
    itemVillageWidgetModel9 =
        createModel(context, () => ItemVillageWidgetModel());
  }

  @override
  void dispose() {
    sidebarModel.dispose();
    searchbargreenModel.dispose();
    itemVillageWidgetModel1.dispose();
    itemVillageWidgetModel2.dispose();
    itemVillageWidgetModel3.dispose();
    itemVillageWidgetModel4.dispose();
    itemVillageWidgetModel5.dispose();
    itemVillageWidgetModel6.dispose();
    itemVillageWidgetModel7.dispose();
    itemVillageWidgetModel8.dispose();
    itemVillageWidgetModel9.dispose();
  }
}
