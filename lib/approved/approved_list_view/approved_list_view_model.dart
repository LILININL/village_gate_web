import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/home/widget/item_villagers_in_home_widget/item_villagers_in_home_widget_widget.dart';
import '/utils/searchbar/searchbar_widget.dart';
import '/utils/sidebar/sidebar_widget.dart';
import 'approved_list_view_widget.dart' show ApprovedListViewWidget;
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ApprovedListViewModel extends FlutterFlowModel<ApprovedListViewWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for sidebar component.
  late SidebarModel sidebarModel;
  // State field(s) for Checkbox widget.
  bool? checkboxValue1;
  // State field(s) for Checkbox widget.
  bool? checkboxValue2;
  // State field(s) for Checkbox widget.
  bool? checkboxValue3;
  // State field(s) for Checkbox widget.
  bool? checkboxValue4;
  // Model for searchbar component.
  late SearchbarModel searchbarModel;
  // Model for item_villagers_in_home_widget component.
  late ItemVillagersInHomeWidgetModel itemVillagersInHomeWidgetModel1;
  // Model for item_villagers_in_home_widget component.
  late ItemVillagersInHomeWidgetModel itemVillagersInHomeWidgetModel2;
  // Model for item_villagers_in_home_widget component.
  late ItemVillagersInHomeWidgetModel itemVillagersInHomeWidgetModel3;
  // Model for item_villagers_in_home_widget component.
  late ItemVillagersInHomeWidgetModel itemVillagersInHomeWidgetModel4;
  // Model for item_villagers_in_home_widget component.
  late ItemVillagersInHomeWidgetModel itemVillagersInHomeWidgetModel5;
  // Model for item_villagers_in_home_widget component.
  late ItemVillagersInHomeWidgetModel itemVillagersInHomeWidgetModel6;
  // Model for item_villagers_in_home_widget component.
  late ItemVillagersInHomeWidgetModel itemVillagersInHomeWidgetModel7;
  // Model for item_villagers_in_home_widget component.
  late ItemVillagersInHomeWidgetModel itemVillagersInHomeWidgetModel8;
  // Model for item_villagers_in_home_widget component.
  late ItemVillagersInHomeWidgetModel itemVillagersInHomeWidgetModel9;
  // Model for item_villagers_in_home_widget component.
  late ItemVillagersInHomeWidgetModel itemVillagersInHomeWidgetModel10;
  // Model for item_villagers_in_home_widget component.
  late ItemVillagersInHomeWidgetModel itemVillagersInHomeWidgetModel11;
  // Model for item_villagers_in_home_widget component.
  late ItemVillagersInHomeWidgetModel itemVillagersInHomeWidgetModel12;
  // Model for item_villagers_in_home_widget component.
  late ItemVillagersInHomeWidgetModel itemVillagersInHomeWidgetModel13;
  // Model for item_villagers_in_home_widget component.
  late ItemVillagersInHomeWidgetModel itemVillagersInHomeWidgetModel14;
  // Model for item_villagers_in_home_widget component.
  late ItemVillagersInHomeWidgetModel itemVillagersInHomeWidgetModel15;
  // Model for item_villagers_in_home_widget component.
  late ItemVillagersInHomeWidgetModel itemVillagersInHomeWidgetModel16;
  // Model for item_villagers_in_home_widget component.
  late ItemVillagersInHomeWidgetModel itemVillagersInHomeWidgetModel17;
  // Model for item_villagers_in_home_widget component.
  late ItemVillagersInHomeWidgetModel itemVillagersInHomeWidgetModel18;
  // Model for item_villagers_in_home_widget component.
  late ItemVillagersInHomeWidgetModel itemVillagersInHomeWidgetModel19;
  // Model for item_villagers_in_home_widget component.
  late ItemVillagersInHomeWidgetModel itemVillagersInHomeWidgetModel20;
  // Model for item_villagers_in_home_widget component.
  late ItemVillagersInHomeWidgetModel itemVillagersInHomeWidgetModel21;
  // Model for item_villagers_in_home_widget component.
  late ItemVillagersInHomeWidgetModel itemVillagersInHomeWidgetModel22;
  // Model for item_villagers_in_home_widget component.
  late ItemVillagersInHomeWidgetModel itemVillagersInHomeWidgetModel23;

  @override
  void initState(BuildContext context) {
    sidebarModel = createModel(context, () => SidebarModel());
    searchbarModel = createModel(context, () => SearchbarModel());
    itemVillagersInHomeWidgetModel1 =
        createModel(context, () => ItemVillagersInHomeWidgetModel());
    itemVillagersInHomeWidgetModel2 =
        createModel(context, () => ItemVillagersInHomeWidgetModel());
    itemVillagersInHomeWidgetModel3 =
        createModel(context, () => ItemVillagersInHomeWidgetModel());
    itemVillagersInHomeWidgetModel4 =
        createModel(context, () => ItemVillagersInHomeWidgetModel());
    itemVillagersInHomeWidgetModel5 =
        createModel(context, () => ItemVillagersInHomeWidgetModel());
    itemVillagersInHomeWidgetModel6 =
        createModel(context, () => ItemVillagersInHomeWidgetModel());
    itemVillagersInHomeWidgetModel7 =
        createModel(context, () => ItemVillagersInHomeWidgetModel());
    itemVillagersInHomeWidgetModel8 =
        createModel(context, () => ItemVillagersInHomeWidgetModel());
    itemVillagersInHomeWidgetModel9 =
        createModel(context, () => ItemVillagersInHomeWidgetModel());
    itemVillagersInHomeWidgetModel10 =
        createModel(context, () => ItemVillagersInHomeWidgetModel());
    itemVillagersInHomeWidgetModel11 =
        createModel(context, () => ItemVillagersInHomeWidgetModel());
    itemVillagersInHomeWidgetModel12 =
        createModel(context, () => ItemVillagersInHomeWidgetModel());
    itemVillagersInHomeWidgetModel13 =
        createModel(context, () => ItemVillagersInHomeWidgetModel());
    itemVillagersInHomeWidgetModel14 =
        createModel(context, () => ItemVillagersInHomeWidgetModel());
    itemVillagersInHomeWidgetModel15 =
        createModel(context, () => ItemVillagersInHomeWidgetModel());
    itemVillagersInHomeWidgetModel16 =
        createModel(context, () => ItemVillagersInHomeWidgetModel());
    itemVillagersInHomeWidgetModel17 =
        createModel(context, () => ItemVillagersInHomeWidgetModel());
    itemVillagersInHomeWidgetModel18 =
        createModel(context, () => ItemVillagersInHomeWidgetModel());
    itemVillagersInHomeWidgetModel19 =
        createModel(context, () => ItemVillagersInHomeWidgetModel());
    itemVillagersInHomeWidgetModel20 =
        createModel(context, () => ItemVillagersInHomeWidgetModel());
    itemVillagersInHomeWidgetModel21 =
        createModel(context, () => ItemVillagersInHomeWidgetModel());
    itemVillagersInHomeWidgetModel22 =
        createModel(context, () => ItemVillagersInHomeWidgetModel());
    itemVillagersInHomeWidgetModel23 =
        createModel(context, () => ItemVillagersInHomeWidgetModel());
  }

  @override
  void dispose() {
    sidebarModel.dispose();
    searchbarModel.dispose();
    itemVillagersInHomeWidgetModel1.dispose();
    itemVillagersInHomeWidgetModel2.dispose();
    itemVillagersInHomeWidgetModel3.dispose();
    itemVillagersInHomeWidgetModel4.dispose();
    itemVillagersInHomeWidgetModel5.dispose();
    itemVillagersInHomeWidgetModel6.dispose();
    itemVillagersInHomeWidgetModel7.dispose();
    itemVillagersInHomeWidgetModel8.dispose();
    itemVillagersInHomeWidgetModel9.dispose();
    itemVillagersInHomeWidgetModel10.dispose();
    itemVillagersInHomeWidgetModel11.dispose();
    itemVillagersInHomeWidgetModel12.dispose();
    itemVillagersInHomeWidgetModel13.dispose();
    itemVillagersInHomeWidgetModel14.dispose();
    itemVillagersInHomeWidgetModel15.dispose();
    itemVillagersInHomeWidgetModel16.dispose();
    itemVillagersInHomeWidgetModel17.dispose();
    itemVillagersInHomeWidgetModel18.dispose();
    itemVillagersInHomeWidgetModel19.dispose();
    itemVillagersInHomeWidgetModel20.dispose();
    itemVillagersInHomeWidgetModel21.dispose();
    itemVillagersInHomeWidgetModel22.dispose();
    itemVillagersInHomeWidgetModel23.dispose();
  }
}
