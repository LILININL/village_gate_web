import '/car/widget/item_externalvehicle_widget/item_externalvehicle_widget_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_autocomplete_options_list.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:math';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'search_model.dart';
export 'search_model.dart';

class SearchWidget extends StatefulWidget {
  const SearchWidget({super.key});

  @override
  State<SearchWidget> createState() => _SearchWidgetState();
}

class _SearchWidgetState extends State<SearchWidget>
    with TickerProviderStateMixin {
  late SearchModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SearchModel());

    _model.textController ??= TextEditingController();

    animationsMap.addAll({
      'columnOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, -23.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(),
      child: InkWell(
        splashColor: Colors.transparent,
        focusColor: Colors.transparent,
        hoverColor: Colors.transparent,
        highlightColor: Colors.transparent,
        onTap: () async {
          Navigator.pop(context);
        },
        child: ClipRRect(
          borderRadius: BorderRadius.circular(0.0),
          child: BackdropFilter(
            filter: ImageFilter.blur(
              sigmaX: 10.0,
              sigmaY: 10.0,
            ),
            child: Align(
              alignment: AlignmentDirectional(0.0, -1.0),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 0.0),
                child: Container(
                  width: 450.0,
                  height: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(32.0),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        width: double.infinity,
                        height: 48.0,
                        decoration: BoxDecoration(
                          color: Color(0xE6FFFFFF),
                          borderRadius: BorderRadius.circular(100.0),
                          border: Border.all(
                            color:
                                FlutterFlowTheme.of(context).primaryBackground,
                          ),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            FlutterFlowDropDown<String>(
                              controller: _model.dropDownValueController ??=
                                  FormFieldController<String>(
                                _model.dropDownValue ??= 'รถยนต์ของลูกบ้าน',
                              ),
                              options: [
                                'รถยนต์ของลูกบ้าน',
                                'รถยนต์ของผู้มาติดต่อ'
                              ],
                              onChanged: (val) => safeSetState(
                                  () => _model.dropDownValue = val),
                              width: 160.0,
                              height: 40.0,
                              textStyle: FlutterFlowTheme.of(context)
                                  .bodySmall
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .bodySmallFamily,
                                    letterSpacing: 0.0,
                                    useGoogleFonts: GoogleFonts.asMap()
                                        .containsKey(
                                            FlutterFlowTheme.of(context)
                                                .bodySmallFamily),
                                  ),
                              icon: Icon(
                                Icons.keyboard_arrow_down_rounded,
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                size: 24.0,
                              ),
                              elevation: 0.0,
                              borderColor: Colors.transparent,
                              borderWidth: 0.0,
                              borderRadius: 8.0,
                              margin: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              hidesUnderline: true,
                              isOverButton: false,
                              isSearchable: false,
                              isMultiSelect: false,
                            ),
                            SizedBox(
                              height: 100.0,
                              child: VerticalDivider(
                                width: 1.0,
                                thickness: 1.0,
                                color: FlutterFlowTheme.of(context)
                                    .primaryBackground,
                              ),
                            ),
                            Expanded(
                              child: Container(
                                width: 600.0,
                                child: Autocomplete<String>(
                                  initialValue: TextEditingValue(),
                                  optionsBuilder: (textEditingValue) {
                                    if (textEditingValue.text == '') {
                                      return const Iterable<String>.empty();
                                    }
                                    return [
                                      'ก 111  กรุงเทพมหานคร',
                                      'ก 222 ขอนแก่น',
                                      'ฉ 111 กรุงเทพมหานคร',
                                      'กข 111 กรุงเทพมหานคร'
                                    ].where((option) {
                                      final lowercaseOption =
                                          option.toLowerCase();
                                      return lowercaseOption.contains(
                                          textEditingValue.text.toLowerCase());
                                    });
                                  },
                                  optionsViewBuilder:
                                      (context, onSelected, options) {
                                    return AutocompleteOptionsList(
                                      textFieldKey: _model.textFieldKey,
                                      textController: _model.textController!,
                                      options: options.toList(),
                                      onSelected: onSelected,
                                      textStyle: TextStyle(),
                                      textHighlightStyle: TextStyle(),
                                      elevation: 2.0,
                                      optionBackgroundColor:
                                          FlutterFlowTheme.of(context)
                                              .primaryBackground,
                                      optionHighlightColor:
                                          FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                      maxHeight: 200.0,
                                    );
                                  },
                                  onSelected: (String selection) {
                                    safeSetState(() => _model
                                        .textFieldSelectedOption = selection);
                                    FocusScope.of(context).unfocus();
                                  },
                                  fieldViewBuilder: (
                                    context,
                                    textEditingController,
                                    focusNode,
                                    onEditingComplete,
                                  ) {
                                    _model.textFieldFocusNode = focusNode;

                                    _model.textController =
                                        textEditingController;
                                    return TextFormField(
                                      key: _model.textFieldKey,
                                      controller: textEditingController,
                                      focusNode: focusNode,
                                      onEditingComplete: onEditingComplete,
                                      autofocus: true,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        isDense: true,
                                        labelStyle: FlutterFlowTheme.of(context)
                                            .labelSmall
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .labelSmallFamily,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w300,
                                              useGoogleFonts: GoogleFonts
                                                      .asMap()
                                                  .containsKey(
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .labelSmallFamily),
                                            ),
                                        hintText: 'ค้นหา',
                                        hintStyle: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMediumFamily,
                                              letterSpacing: 0.0,
                                              useGoogleFonts: GoogleFonts
                                                      .asMap()
                                                  .containsKey(
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .labelMediumFamily),
                                            ),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Colors.transparent,
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(100.0),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Colors.transparent,
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(100.0),
                                        ),
                                        errorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .error,
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(100.0),
                                        ),
                                        focusedErrorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .error,
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(100.0),
                                        ),
                                        prefixIcon: Icon(
                                          Icons.search_rounded,
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          size: 20.0,
                                        ),
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodySmall
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .bodySmallFamily,
                                            letterSpacing: 0.0,
                                            useGoogleFonts: GoogleFonts.asMap()
                                                .containsKey(
                                                    FlutterFlowTheme.of(context)
                                                        .bodySmallFamily),
                                          ),
                                      cursorColor:
                                          FlutterFlowTheme.of(context).accent1,
                                      validator: _model.textControllerValidator
                                          .asValidator(context),
                                    );
                                  },
                                ),
                              ),
                            ),
                          ]
                              .divide(SizedBox(width: 8.0))
                              .addToStart(SizedBox(width: 16.0))
                              .addToEnd(SizedBox(width: 16.0)),
                        ),
                      ),
                      Expanded(
                        child: ListView(
                          padding: EdgeInsets.symmetric(vertical: 8.0),
                          shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                          children: [
                            Text(
                              'ข้อมูลรถยนต์ที่เข้าหมู่บ้านล่าสุด',
                              style: FlutterFlowTheme.of(context)
                                  .bodySmall
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .bodySmallFamily,
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    letterSpacing: 0.0,
                                    useGoogleFonts: GoogleFonts.asMap()
                                        .containsKey(
                                            FlutterFlowTheme.of(context)
                                                .bodySmallFamily),
                                  ),
                            ),
                            wrapWithModel(
                              model: _model.itemExternalvehicleWidgetModel1,
                              updateCallback: () => safeSetState(() {}),
                              child: ItemExternalvehicleWidgetWidget(
                                licenseplate: 'ทะเบียน ก 545',
                                detailcare: 'กรุงเทพมหานคร BYD Atto 3 สีดำ',
                                datetime: '25/09/67 - 16:50 น.',
                                color: FlutterFlowTheme.of(context).accent1,
                              ),
                            ),
                            wrapWithModel(
                              model: _model.itemExternalvehicleWidgetModel2,
                              updateCallback: () => safeSetState(() {}),
                              child: ItemExternalvehicleWidgetWidget(
                                licenseplate: 'ทะเบียน ก 331',
                                detailcare: 'กรุงเทพมหานคร Tesla Model 3 สีดำ',
                                datetime: '25/09/67 - 15:20 น.',
                                color: FlutterFlowTheme.of(context).accent1,
                              ),
                            ),
                            wrapWithModel(
                              model: _model.itemExternalvehicleWidgetModel3,
                              updateCallback: () => safeSetState(() {}),
                              child: ItemExternalvehicleWidgetWidget(
                                licenseplate: 'ทะเบียน ผส 888',
                                detailcare: 'กรุงเทพมหานคร Volvo S90 สีดำ',
                                datetime: '25/09/67 - 15:10 น.',
                                color: FlutterFlowTheme.of(context).accent1,
                              ),
                            ),
                            wrapWithModel(
                              model: _model.itemExternalvehicleWidgetModel4,
                              updateCallback: () => safeSetState(() {}),
                              child: ItemExternalvehicleWidgetWidget(
                                licenseplate: 'ทะเบียน กก 888',
                                detailcare: 'กรุงเทพมหานคร Tesla Model 3 สีดำ',
                                datetime: '25/09/67 - 14:56 น.',
                                color: FlutterFlowTheme.of(context).accent1,
                              ),
                            ),
                            wrapWithModel(
                              model: _model.itemExternalvehicleWidgetModel5,
                              updateCallback: () => safeSetState(() {}),
                              child: ItemExternalvehicleWidgetWidget(
                                licenseplate: 'ทะเบียน ก 776 ',
                                detailcare: 'กรุงเทพมหานคร HONDA CIVIC สีดำ',
                                datetime: '25/09/67 - 14:55 น.',
                                color: FlutterFlowTheme.of(context).accent1,
                              ),
                            ),
                            wrapWithModel(
                              model: _model.itemExternalvehicleWidgetModel6,
                              updateCallback: () => safeSetState(() {}),
                              child: ItemExternalvehicleWidgetWidget(
                                licenseplate: 'ทะเบียน ร 987',
                                detailcare: 'กรุงเทพมหานคร Honda HR-V สีดำ',
                                datetime: '25/09/67 - 14:40 น.',
                                color: FlutterFlowTheme.of(context).accent1,
                              ),
                            ),
                          ].divide(SizedBox(height: 8.0)),
                        ),
                      ),
                    ],
                  ).animateOnPageLoad(
                      animationsMap['columnOnPageLoadAnimation']!),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
