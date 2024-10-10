import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/manageproject/editproject/editproject_widget.dart';
import '/manageproject/item_niti_widget/item_niti_widget_widget.dart';
import '/utils/sidebar/sidebar_widget.dart';
import 'package:styled_divider/styled_divider.dart';
import 'project_detail_widget.dart' show ProjectDetailWidget;
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ProjectDetailModel extends FlutterFlowModel<ProjectDetailWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for sidebar component.
  late SidebarModel sidebarModel;
  // Model for editproject component.
  late EditprojectModel editprojectModel;
  // Model for item_niti_widget component.
  late ItemNitiWidgetModel itemNitiWidgetModel1;
  // Model for item_niti_widget component.
  late ItemNitiWidgetModel itemNitiWidgetModel2;
  // Model for item_niti_widget component.
  late ItemNitiWidgetModel itemNitiWidgetModel3;

  @override
  void initState(BuildContext context) {
    sidebarModel = createModel(context, () => SidebarModel());
    editprojectModel = createModel(context, () => EditprojectModel());
    itemNitiWidgetModel1 = createModel(context, () => ItemNitiWidgetModel());
    itemNitiWidgetModel2 = createModel(context, () => ItemNitiWidgetModel());
    itemNitiWidgetModel3 = createModel(context, () => ItemNitiWidgetModel());
  }

  @override
  void dispose() {
    sidebarModel.dispose();
    editprojectModel.dispose();
    itemNitiWidgetModel1.dispose();
    itemNitiWidgetModel2.dispose();
    itemNitiWidgetModel3.dispose();
  }
}
