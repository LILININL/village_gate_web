import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/user/widget/item_user_in_home_widget/item_user_in_home_widget_widget.dart';
import '/utils/searchbar/searchbar_widget.dart';
import '/utils/sidebar/sidebar_widget.dart';
import 'user_list_view_widget.dart' show UserListViewWidget;
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class UserListViewModel extends FlutterFlowModel<UserListViewWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for sidebar component.
  late SidebarModel sidebarModel;
  // Model for searchbar component.
  late SearchbarModel searchbarModel;
  // Model for item_user_in_home_widget component.
  late ItemUserInHomeWidgetModel itemUserInHomeWidgetModel1;
  // Model for item_user_in_home_widget component.
  late ItemUserInHomeWidgetModel itemUserInHomeWidgetModel2;
  // Model for item_user_in_home_widget component.
  late ItemUserInHomeWidgetModel itemUserInHomeWidgetModel3;
  // Model for item_user_in_home_widget component.
  late ItemUserInHomeWidgetModel itemUserInHomeWidgetModel4;
  // Model for item_user_in_home_widget component.
  late ItemUserInHomeWidgetModel itemUserInHomeWidgetModel5;
  // Model for item_user_in_home_widget component.
  late ItemUserInHomeWidgetModel itemUserInHomeWidgetModel6;
  // Model for item_user_in_home_widget component.
  late ItemUserInHomeWidgetModel itemUserInHomeWidgetModel7;
  // Model for item_user_in_home_widget component.
  late ItemUserInHomeWidgetModel itemUserInHomeWidgetModel8;
  // Model for item_user_in_home_widget component.
  late ItemUserInHomeWidgetModel itemUserInHomeWidgetModel9;
  // Model for item_user_in_home_widget component.
  late ItemUserInHomeWidgetModel itemUserInHomeWidgetModel10;
  // Model for item_user_in_home_widget component.
  late ItemUserInHomeWidgetModel itemUserInHomeWidgetModel11;
  // Model for item_user_in_home_widget component.
  late ItemUserInHomeWidgetModel itemUserInHomeWidgetModel12;
  // Model for item_user_in_home_widget component.
  late ItemUserInHomeWidgetModel itemUserInHomeWidgetModel13;
  // Model for item_user_in_home_widget component.
  late ItemUserInHomeWidgetModel itemUserInHomeWidgetModel14;
  // Model for item_user_in_home_widget component.
  late ItemUserInHomeWidgetModel itemUserInHomeWidgetModel15;
  // Model for item_user_in_home_widget component.
  late ItemUserInHomeWidgetModel itemUserInHomeWidgetModel16;
  // Model for item_user_in_home_widget component.
  late ItemUserInHomeWidgetModel itemUserInHomeWidgetModel17;
  // Model for item_user_in_home_widget component.
  late ItemUserInHomeWidgetModel itemUserInHomeWidgetModel18;
  // Model for item_user_in_home_widget component.
  late ItemUserInHomeWidgetModel itemUserInHomeWidgetModel19;
  // Model for item_user_in_home_widget component.
  late ItemUserInHomeWidgetModel itemUserInHomeWidgetModel20;
  // Model for item_user_in_home_widget component.
  late ItemUserInHomeWidgetModel itemUserInHomeWidgetModel21;
  // Model for item_user_in_home_widget component.
  late ItemUserInHomeWidgetModel itemUserInHomeWidgetModel22;
  // Model for item_user_in_home_widget component.
  late ItemUserInHomeWidgetModel itemUserInHomeWidgetModel23;
  // Model for item_user_in_home_widget component.
  late ItemUserInHomeWidgetModel itemUserInHomeWidgetModel24;

  @override
  void initState(BuildContext context) {
    sidebarModel = createModel(context, () => SidebarModel());
    searchbarModel = createModel(context, () => SearchbarModel());
    itemUserInHomeWidgetModel1 =
        createModel(context, () => ItemUserInHomeWidgetModel());
    itemUserInHomeWidgetModel2 =
        createModel(context, () => ItemUserInHomeWidgetModel());
    itemUserInHomeWidgetModel3 =
        createModel(context, () => ItemUserInHomeWidgetModel());
    itemUserInHomeWidgetModel4 =
        createModel(context, () => ItemUserInHomeWidgetModel());
    itemUserInHomeWidgetModel5 =
        createModel(context, () => ItemUserInHomeWidgetModel());
    itemUserInHomeWidgetModel6 =
        createModel(context, () => ItemUserInHomeWidgetModel());
    itemUserInHomeWidgetModel7 =
        createModel(context, () => ItemUserInHomeWidgetModel());
    itemUserInHomeWidgetModel8 =
        createModel(context, () => ItemUserInHomeWidgetModel());
    itemUserInHomeWidgetModel9 =
        createModel(context, () => ItemUserInHomeWidgetModel());
    itemUserInHomeWidgetModel10 =
        createModel(context, () => ItemUserInHomeWidgetModel());
    itemUserInHomeWidgetModel11 =
        createModel(context, () => ItemUserInHomeWidgetModel());
    itemUserInHomeWidgetModel12 =
        createModel(context, () => ItemUserInHomeWidgetModel());
    itemUserInHomeWidgetModel13 =
        createModel(context, () => ItemUserInHomeWidgetModel());
    itemUserInHomeWidgetModel14 =
        createModel(context, () => ItemUserInHomeWidgetModel());
    itemUserInHomeWidgetModel15 =
        createModel(context, () => ItemUserInHomeWidgetModel());
    itemUserInHomeWidgetModel16 =
        createModel(context, () => ItemUserInHomeWidgetModel());
    itemUserInHomeWidgetModel17 =
        createModel(context, () => ItemUserInHomeWidgetModel());
    itemUserInHomeWidgetModel18 =
        createModel(context, () => ItemUserInHomeWidgetModel());
    itemUserInHomeWidgetModel19 =
        createModel(context, () => ItemUserInHomeWidgetModel());
    itemUserInHomeWidgetModel20 =
        createModel(context, () => ItemUserInHomeWidgetModel());
    itemUserInHomeWidgetModel21 =
        createModel(context, () => ItemUserInHomeWidgetModel());
    itemUserInHomeWidgetModel22 =
        createModel(context, () => ItemUserInHomeWidgetModel());
    itemUserInHomeWidgetModel23 =
        createModel(context, () => ItemUserInHomeWidgetModel());
    itemUserInHomeWidgetModel24 =
        createModel(context, () => ItemUserInHomeWidgetModel());
  }

  @override
  void dispose() {
    sidebarModel.dispose();
    searchbarModel.dispose();
    itemUserInHomeWidgetModel1.dispose();
    itemUserInHomeWidgetModel2.dispose();
    itemUserInHomeWidgetModel3.dispose();
    itemUserInHomeWidgetModel4.dispose();
    itemUserInHomeWidgetModel5.dispose();
    itemUserInHomeWidgetModel6.dispose();
    itemUserInHomeWidgetModel7.dispose();
    itemUserInHomeWidgetModel8.dispose();
    itemUserInHomeWidgetModel9.dispose();
    itemUserInHomeWidgetModel10.dispose();
    itemUserInHomeWidgetModel11.dispose();
    itemUserInHomeWidgetModel12.dispose();
    itemUserInHomeWidgetModel13.dispose();
    itemUserInHomeWidgetModel14.dispose();
    itemUserInHomeWidgetModel15.dispose();
    itemUserInHomeWidgetModel16.dispose();
    itemUserInHomeWidgetModel17.dispose();
    itemUserInHomeWidgetModel18.dispose();
    itemUserInHomeWidgetModel19.dispose();
    itemUserInHomeWidgetModel20.dispose();
    itemUserInHomeWidgetModel21.dispose();
    itemUserInHomeWidgetModel22.dispose();
    itemUserInHomeWidgetModel23.dispose();
    itemUserInHomeWidgetModel24.dispose();
  }
}
