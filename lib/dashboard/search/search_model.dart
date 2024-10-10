import '/car/widget/item_externalvehicle_widget/item_externalvehicle_widget_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_autocomplete_options_list.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:math';
import 'dart:ui';
import 'search_widget.dart' show SearchWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SearchModel extends FlutterFlowModel<SearchWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // State field(s) for TextField widget.
  final textFieldKey = GlobalKey();
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? textFieldSelectedOption;
  String? Function(BuildContext, String?)? textControllerValidator;
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

  @override
  void initState(BuildContext context) {
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
  }

  @override
  void dispose() {
    textFieldFocusNode?.dispose();

    itemExternalvehicleWidgetModel1.dispose();
    itemExternalvehicleWidgetModel2.dispose();
    itemExternalvehicleWidgetModel3.dispose();
    itemExternalvehicleWidgetModel4.dispose();
    itemExternalvehicleWidgetModel5.dispose();
    itemExternalvehicleWidgetModel6.dispose();
  }
}
