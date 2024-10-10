import '/car/widget/item_externalvehicle_widget/item_externalvehicle_widget_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/utils/header_widget/header_widget_widget.dart';
import '/utils/searchbargreen/searchbargreen_widget.dart';
import '/utils/sidebar/sidebar_widget.dart';
import 'package:styled_divider/styled_divider.dart';
import 'visitors_car_list_view_widget.dart' show VisitorsCarListViewWidget;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class VisitorsCarListViewModel
    extends FlutterFlowModel<VisitorsCarListViewWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for sidebar component.
  late SidebarModel sidebarModel;
  // Model for searchbargreen component.
  late SearchbargreenModel searchbargreenModel;
  // Model for item_externalvehicle_widget component.
  late ItemExternalvehicleWidgetModel itemExternalvehicleWidgetModel1;
  // Model for item_externalvehicle_widget component.
  late ItemExternalvehicleWidgetModel itemExternalvehicleWidgetModel2;
  // Model for item_externalvehicle_widget component.
  late ItemExternalvehicleWidgetModel itemExternalvehicleWidgetModel3;
  // Model for item_externalvehicle_widget component.
  late ItemExternalvehicleWidgetModel itemExternalvehicleWidgetModel4;
  // Model for item_externalvehicle_widget component.
  late ItemExternalvehicleWidgetModel itemExternalvehicleWidgetModel5;
  // Model for item_externalvehicle_widget component.
  late ItemExternalvehicleWidgetModel itemExternalvehicleWidgetModel6;
  // Model for item_externalvehicle_widget component.
  late ItemExternalvehicleWidgetModel itemExternalvehicleWidgetModel7;
  // Model for item_externalvehicle_widget component.
  late ItemExternalvehicleWidgetModel itemExternalvehicleWidgetModel8;
  // Model for item_externalvehicle_widget component.
  late ItemExternalvehicleWidgetModel itemExternalvehicleWidgetModel9;
  // Model for item_externalvehicle_widget component.
  late ItemExternalvehicleWidgetModel itemExternalvehicleWidgetModel10;
  // Model for item_externalvehicle_widget component.
  late ItemExternalvehicleWidgetModel itemExternalvehicleWidgetModel11;
  // Model for item_externalvehicle_widget component.
  late ItemExternalvehicleWidgetModel itemExternalvehicleWidgetModel12;
  // Model for header_widget component.
  late HeaderWidgetModel headerWidgetModel;

  @override
  void initState(BuildContext context) {
    sidebarModel = createModel(context, () => SidebarModel());
    searchbargreenModel = createModel(context, () => SearchbargreenModel());
    itemExternalvehicleWidgetModel1 =
        createModel(context, () => ItemExternalvehicleWidgetModel());
    itemExternalvehicleWidgetModel2 =
        createModel(context, () => ItemExternalvehicleWidgetModel());
    itemExternalvehicleWidgetModel3 =
        createModel(context, () => ItemExternalvehicleWidgetModel());
    itemExternalvehicleWidgetModel4 =
        createModel(context, () => ItemExternalvehicleWidgetModel());
    itemExternalvehicleWidgetModel5 =
        createModel(context, () => ItemExternalvehicleWidgetModel());
    itemExternalvehicleWidgetModel6 =
        createModel(context, () => ItemExternalvehicleWidgetModel());
    itemExternalvehicleWidgetModel7 =
        createModel(context, () => ItemExternalvehicleWidgetModel());
    itemExternalvehicleWidgetModel8 =
        createModel(context, () => ItemExternalvehicleWidgetModel());
    itemExternalvehicleWidgetModel9 =
        createModel(context, () => ItemExternalvehicleWidgetModel());
    itemExternalvehicleWidgetModel10 =
        createModel(context, () => ItemExternalvehicleWidgetModel());
    itemExternalvehicleWidgetModel11 =
        createModel(context, () => ItemExternalvehicleWidgetModel());
    itemExternalvehicleWidgetModel12 =
        createModel(context, () => ItemExternalvehicleWidgetModel());
    headerWidgetModel = createModel(context, () => HeaderWidgetModel());
  }

  @override
  void dispose() {
    sidebarModel.dispose();
    searchbargreenModel.dispose();
    itemExternalvehicleWidgetModel1.dispose();
    itemExternalvehicleWidgetModel2.dispose();
    itemExternalvehicleWidgetModel3.dispose();
    itemExternalvehicleWidgetModel4.dispose();
    itemExternalvehicleWidgetModel5.dispose();
    itemExternalvehicleWidgetModel6.dispose();
    itemExternalvehicleWidgetModel7.dispose();
    itemExternalvehicleWidgetModel8.dispose();
    itemExternalvehicleWidgetModel9.dispose();
    itemExternalvehicleWidgetModel10.dispose();
    itemExternalvehicleWidgetModel11.dispose();
    itemExternalvehicleWidgetModel12.dispose();
    headerWidgetModel.dispose();
  }
}
