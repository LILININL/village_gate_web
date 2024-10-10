import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/setting/widget/changpassword/changpassword_widget.dart';
import '/setting/widget/logout/logout_widget.dart';
import '/setting/widget/pdpa/pdpa_widget.dart';
import '/setting/widget/setup_project/setup_project_widget.dart';
import '/utils/sidebar/sidebar_widget.dart';
import 'setting_list_view_widget.dart' show SettingListViewWidget;
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SettingListViewModel extends FlutterFlowModel<SettingListViewWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for sidebar component.
  late SidebarModel sidebarModel;

  @override
  void initState(BuildContext context) {
    sidebarModel = createModel(context, () => SidebarModel());
  }

  @override
  void dispose() {
    sidebarModel.dispose();
  }
}
