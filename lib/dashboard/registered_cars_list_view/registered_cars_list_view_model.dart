import '/car/widget/item_residents_cars_widget/item_residents_cars_widget_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/utils/searchbargreen/searchbargreen_widget.dart';
import '/utils/sidebar/sidebar_widget.dart';
import 'package:styled_divider/styled_divider.dart';
import 'registered_cars_list_view_widget.dart'
    show RegisteredCarsListViewWidget;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class RegisteredCarsListViewModel
    extends FlutterFlowModel<RegisteredCarsListViewWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for sidebar component.
  late SidebarModel sidebarModel;
  // Model for searchbargreen component.
  late SearchbargreenModel searchbargreenModel;
  // Model for item_residents_cars_widget component.
  late ItemResidentsCarsWidgetModel itemResidentsCarsWidgetModel1;
  // Model for item_residents_cars_widget component.
  late ItemResidentsCarsWidgetModel itemResidentsCarsWidgetModel2;
  // Model for item_residents_cars_widget component.
  late ItemResidentsCarsWidgetModel itemResidentsCarsWidgetModel3;
  // Model for item_residents_cars_widget component.
  late ItemResidentsCarsWidgetModel itemResidentsCarsWidgetModel4;
  // Model for item_residents_cars_widget component.
  late ItemResidentsCarsWidgetModel itemResidentsCarsWidgetModel5;
  // Model for item_residents_cars_widget component.
  late ItemResidentsCarsWidgetModel itemResidentsCarsWidgetModel6;
  // Model for item_residents_cars_widget component.
  late ItemResidentsCarsWidgetModel itemResidentsCarsWidgetModel7;
  // Model for item_residents_cars_widget component.
  late ItemResidentsCarsWidgetModel itemResidentsCarsWidgetModel8;
  // Model for item_residents_cars_widget component.
  late ItemResidentsCarsWidgetModel itemResidentsCarsWidgetModel9;
  // Model for item_residents_cars_widget component.
  late ItemResidentsCarsWidgetModel itemResidentsCarsWidgetModel10;
  // Model for item_residents_cars_widget component.
  late ItemResidentsCarsWidgetModel itemResidentsCarsWidgetModel11;
  // Model for item_residents_cars_widget component.
  late ItemResidentsCarsWidgetModel itemResidentsCarsWidgetModel12;
  // Model for item_residents_cars_widget component.
  late ItemResidentsCarsWidgetModel itemResidentsCarsWidgetModel13;
  // Model for item_residents_cars_widget component.
  late ItemResidentsCarsWidgetModel itemResidentsCarsWidgetModel14;

  @override
  void initState(BuildContext context) {
    sidebarModel = createModel(context, () => SidebarModel());
    searchbargreenModel = createModel(context, () => SearchbargreenModel());
    itemResidentsCarsWidgetModel1 =
        createModel(context, () => ItemResidentsCarsWidgetModel());
    itemResidentsCarsWidgetModel2 =
        createModel(context, () => ItemResidentsCarsWidgetModel());
    itemResidentsCarsWidgetModel3 =
        createModel(context, () => ItemResidentsCarsWidgetModel());
    itemResidentsCarsWidgetModel4 =
        createModel(context, () => ItemResidentsCarsWidgetModel());
    itemResidentsCarsWidgetModel5 =
        createModel(context, () => ItemResidentsCarsWidgetModel());
    itemResidentsCarsWidgetModel6 =
        createModel(context, () => ItemResidentsCarsWidgetModel());
    itemResidentsCarsWidgetModel7 =
        createModel(context, () => ItemResidentsCarsWidgetModel());
    itemResidentsCarsWidgetModel8 =
        createModel(context, () => ItemResidentsCarsWidgetModel());
    itemResidentsCarsWidgetModel9 =
        createModel(context, () => ItemResidentsCarsWidgetModel());
    itemResidentsCarsWidgetModel10 =
        createModel(context, () => ItemResidentsCarsWidgetModel());
    itemResidentsCarsWidgetModel11 =
        createModel(context, () => ItemResidentsCarsWidgetModel());
    itemResidentsCarsWidgetModel12 =
        createModel(context, () => ItemResidentsCarsWidgetModel());
    itemResidentsCarsWidgetModel13 =
        createModel(context, () => ItemResidentsCarsWidgetModel());
    itemResidentsCarsWidgetModel14 =
        createModel(context, () => ItemResidentsCarsWidgetModel());
  }

  @override
  void dispose() {
    sidebarModel.dispose();
    searchbargreenModel.dispose();
    itemResidentsCarsWidgetModel1.dispose();
    itemResidentsCarsWidgetModel2.dispose();
    itemResidentsCarsWidgetModel3.dispose();
    itemResidentsCarsWidgetModel4.dispose();
    itemResidentsCarsWidgetModel5.dispose();
    itemResidentsCarsWidgetModel6.dispose();
    itemResidentsCarsWidgetModel7.dispose();
    itemResidentsCarsWidgetModel8.dispose();
    itemResidentsCarsWidgetModel9.dispose();
    itemResidentsCarsWidgetModel10.dispose();
    itemResidentsCarsWidgetModel11.dispose();
    itemResidentsCarsWidgetModel12.dispose();
    itemResidentsCarsWidgetModel13.dispose();
    itemResidentsCarsWidgetModel14.dispose();
  }
}
