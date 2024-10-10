import '/car/widget/item_residents_cars_widget/item_residents_cars_widget_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/user/widget/item_user_in_home_widget/item_user_in_home_widget_widget.dart';
import '/utils/edit/edit_widget.dart';
import '/utils/header_widget/header_widget_widget.dart';
import '/utils/sidebar/sidebar_widget.dart';
import 'home_detail_list_view_widget.dart' show HomeDetailListViewWidget;
import 'package:styled_divider/styled_divider.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HomeDetailListViewModel
    extends FlutterFlowModel<HomeDetailListViewWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for sidebar component.
  late SidebarModel sidebarModel;
  // Model for edit component.
  late EditModel editModel;
  // Model for item_user_in_home_widget component.
  late ItemUserInHomeWidgetModel itemUserInHomeWidgetModel;
  // Model for item_residents_cars_widget component.
  late ItemResidentsCarsWidgetModel itemResidentsCarsWidgetModel;
  // Model for header_widget component.
  late HeaderWidgetModel headerWidgetModel;

  @override
  void initState(BuildContext context) {
    sidebarModel = createModel(context, () => SidebarModel());
    editModel = createModel(context, () => EditModel());
    itemUserInHomeWidgetModel =
        createModel(context, () => ItemUserInHomeWidgetModel());
    itemResidentsCarsWidgetModel =
        createModel(context, () => ItemResidentsCarsWidgetModel());
    headerWidgetModel = createModel(context, () => HeaderWidgetModel());
  }

  @override
  void dispose() {
    sidebarModel.dispose();
    editModel.dispose();
    itemUserInHomeWidgetModel.dispose();
    itemResidentsCarsWidgetModel.dispose();
    headerWidgetModel.dispose();
  }
}
