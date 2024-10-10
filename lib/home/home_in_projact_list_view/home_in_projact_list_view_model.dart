import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/home/widget/addhome_widget/addhome_widget_widget.dart';
import '/home/widget/item_home_widget/item_home_widget_widget.dart';
import '/utils/searchbar/searchbar_widget.dart';
import '/utils/sidebar/sidebar_widget.dart';
import 'home_in_projact_list_view_widget.dart' show HomeInProjactListViewWidget;
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HomeInProjactListViewModel
    extends FlutterFlowModel<HomeInProjactListViewWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for sidebar component.
  late SidebarModel sidebarModel;
  // Model for searchbar component.
  late SearchbarModel searchbarModel;
  // Model for item_home_widget component.
  late ItemHomeWidgetModel itemHomeWidgetModel1;
  // Model for item_home_widget component.
  late ItemHomeWidgetModel itemHomeWidgetModel2;
  // Model for item_home_widget component.
  late ItemHomeWidgetModel itemHomeWidgetModel3;
  // Model for item_home_widget component.
  late ItemHomeWidgetModel itemHomeWidgetModel4;
  // Model for item_home_widget component.
  late ItemHomeWidgetModel itemHomeWidgetModel5;
  // Model for item_home_widget component.
  late ItemHomeWidgetModel itemHomeWidgetModel6;
  // Model for item_home_widget component.
  late ItemHomeWidgetModel itemHomeWidgetModel7;
  // Model for item_home_widget component.
  late ItemHomeWidgetModel itemHomeWidgetModel8;
  // Model for item_home_widget component.
  late ItemHomeWidgetModel itemHomeWidgetModel9;
  // Model for item_home_widget component.
  late ItemHomeWidgetModel itemHomeWidgetModel10;
  // Model for item_home_widget component.
  late ItemHomeWidgetModel itemHomeWidgetModel11;
  // Model for item_home_widget component.
  late ItemHomeWidgetModel itemHomeWidgetModel12;
  // Model for item_home_widget component.
  late ItemHomeWidgetModel itemHomeWidgetModel13;
  // Model for item_home_widget component.
  late ItemHomeWidgetModel itemHomeWidgetModel14;
  // Model for item_home_widget component.
  late ItemHomeWidgetModel itemHomeWidgetModel15;
  // Model for item_home_widget component.
  late ItemHomeWidgetModel itemHomeWidgetModel16;
  // Model for item_home_widget component.
  late ItemHomeWidgetModel itemHomeWidgetModel17;
  // Model for item_home_widget component.
  late ItemHomeWidgetModel itemHomeWidgetModel18;
  // Model for item_home_widget component.
  late ItemHomeWidgetModel itemHomeWidgetModel19;
  // Model for item_home_widget component.
  late ItemHomeWidgetModel itemHomeWidgetModel20;
  // Model for item_home_widget component.
  late ItemHomeWidgetModel itemHomeWidgetModel21;
  // Model for item_home_widget component.
  late ItemHomeWidgetModel itemHomeWidgetModel22;
  // Model for item_home_widget component.
  late ItemHomeWidgetModel itemHomeWidgetModel23;
  // Model for item_home_widget component.
  late ItemHomeWidgetModel itemHomeWidgetModel24;
  // Model for item_home_widget component.
  late ItemHomeWidgetModel itemHomeWidgetModel25;
  // Model for item_home_widget component.
  late ItemHomeWidgetModel itemHomeWidgetModel26;
  // Model for item_home_widget component.
  late ItemHomeWidgetModel itemHomeWidgetModel27;
  // Model for item_home_widget component.
  late ItemHomeWidgetModel itemHomeWidgetModel28;
  // Model for item_home_widget component.
  late ItemHomeWidgetModel itemHomeWidgetModel29;

  @override
  void initState(BuildContext context) {
    sidebarModel = createModel(context, () => SidebarModel());
    searchbarModel = createModel(context, () => SearchbarModel());
    itemHomeWidgetModel1 = createModel(context, () => ItemHomeWidgetModel());
    itemHomeWidgetModel2 = createModel(context, () => ItemHomeWidgetModel());
    itemHomeWidgetModel3 = createModel(context, () => ItemHomeWidgetModel());
    itemHomeWidgetModel4 = createModel(context, () => ItemHomeWidgetModel());
    itemHomeWidgetModel5 = createModel(context, () => ItemHomeWidgetModel());
    itemHomeWidgetModel6 = createModel(context, () => ItemHomeWidgetModel());
    itemHomeWidgetModel7 = createModel(context, () => ItemHomeWidgetModel());
    itemHomeWidgetModel8 = createModel(context, () => ItemHomeWidgetModel());
    itemHomeWidgetModel9 = createModel(context, () => ItemHomeWidgetModel());
    itemHomeWidgetModel10 = createModel(context, () => ItemHomeWidgetModel());
    itemHomeWidgetModel11 = createModel(context, () => ItemHomeWidgetModel());
    itemHomeWidgetModel12 = createModel(context, () => ItemHomeWidgetModel());
    itemHomeWidgetModel13 = createModel(context, () => ItemHomeWidgetModel());
    itemHomeWidgetModel14 = createModel(context, () => ItemHomeWidgetModel());
    itemHomeWidgetModel15 = createModel(context, () => ItemHomeWidgetModel());
    itemHomeWidgetModel16 = createModel(context, () => ItemHomeWidgetModel());
    itemHomeWidgetModel17 = createModel(context, () => ItemHomeWidgetModel());
    itemHomeWidgetModel18 = createModel(context, () => ItemHomeWidgetModel());
    itemHomeWidgetModel19 = createModel(context, () => ItemHomeWidgetModel());
    itemHomeWidgetModel20 = createModel(context, () => ItemHomeWidgetModel());
    itemHomeWidgetModel21 = createModel(context, () => ItemHomeWidgetModel());
    itemHomeWidgetModel22 = createModel(context, () => ItemHomeWidgetModel());
    itemHomeWidgetModel23 = createModel(context, () => ItemHomeWidgetModel());
    itemHomeWidgetModel24 = createModel(context, () => ItemHomeWidgetModel());
    itemHomeWidgetModel25 = createModel(context, () => ItemHomeWidgetModel());
    itemHomeWidgetModel26 = createModel(context, () => ItemHomeWidgetModel());
    itemHomeWidgetModel27 = createModel(context, () => ItemHomeWidgetModel());
    itemHomeWidgetModel28 = createModel(context, () => ItemHomeWidgetModel());
    itemHomeWidgetModel29 = createModel(context, () => ItemHomeWidgetModel());
  }

  @override
  void dispose() {
    sidebarModel.dispose();
    searchbarModel.dispose();
    itemHomeWidgetModel1.dispose();
    itemHomeWidgetModel2.dispose();
    itemHomeWidgetModel3.dispose();
    itemHomeWidgetModel4.dispose();
    itemHomeWidgetModel5.dispose();
    itemHomeWidgetModel6.dispose();
    itemHomeWidgetModel7.dispose();
    itemHomeWidgetModel8.dispose();
    itemHomeWidgetModel9.dispose();
    itemHomeWidgetModel10.dispose();
    itemHomeWidgetModel11.dispose();
    itemHomeWidgetModel12.dispose();
    itemHomeWidgetModel13.dispose();
    itemHomeWidgetModel14.dispose();
    itemHomeWidgetModel15.dispose();
    itemHomeWidgetModel16.dispose();
    itemHomeWidgetModel17.dispose();
    itemHomeWidgetModel18.dispose();
    itemHomeWidgetModel19.dispose();
    itemHomeWidgetModel20.dispose();
    itemHomeWidgetModel21.dispose();
    itemHomeWidgetModel22.dispose();
    itemHomeWidgetModel23.dispose();
    itemHomeWidgetModel24.dispose();
    itemHomeWidgetModel25.dispose();
    itemHomeWidgetModel26.dispose();
    itemHomeWidgetModel27.dispose();
    itemHomeWidgetModel28.dispose();
    itemHomeWidgetModel29.dispose();
  }
}
