import '/car/widget/item_externalvehicle_widget/item_externalvehicle_widget_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/utils/searchbar/searchbar_widget.dart';
import '/utils/sidebar/sidebar_widget.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'externalvehicle_model.dart';
export 'externalvehicle_model.dart';

class ExternalvehicleWidget extends StatefulWidget {
  const ExternalvehicleWidget({super.key});

  @override
  State<ExternalvehicleWidget> createState() => _ExternalvehicleWidgetState();
}

class _ExternalvehicleWidgetState extends State<ExternalvehicleWidget> {
  late ExternalvehicleModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ExternalvehicleModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
      endDrawer: Container(
        width: MediaQuery.sizeOf(context).width * 0.4,
        child: Drawer(
          elevation: 16.0,
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 40.0,
                      height: 40.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).accent1,
                        shape: BoxShape.circle,
                      ),
                      child: Align(
                        alignment: AlignmentDirectional(0.0, 0.0),
                        child: Icon(
                          Icons.notifications,
                          color: FlutterFlowTheme.of(context).primaryBackground,
                          size: 24.0,
                        ),
                      ),
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Align(
                          alignment: AlignmentDirectional(0.0, 0.0),
                          child: Text(
                            'แจ้งเตือน',
                            textAlign: TextAlign.center,
                            maxLines: 1,
                            style: FlutterFlowTheme.of(context)
                                .labelMedium
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .labelMediumFamily,
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  letterSpacing: 0.0,
                                  useGoogleFonts: GoogleFonts.asMap()
                                      .containsKey(FlutterFlowTheme.of(context)
                                          .labelMediumFamily),
                                ),
                          ),
                        ),
                      ],
                    ),
                  ].divide(SizedBox(width: 8.0)),
                ),
                Expanded(
                  child: ListView(
                    padding: EdgeInsets.zero,
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    children: [],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            alignment: AlignmentDirectional(0.0, -1.0),
            image: Image.asset(
              'assets/images/bg1.png',
            ).image,
          ),
        ),
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0x7FF5F5F5),
                FlutterFlowTheme.of(context).secondaryBackground
              ],
              stops: [0.0, 1.0],
              begin: AlignmentDirectional(0.0, -1.0),
              end: AlignmentDirectional(0, 1.0),
            ),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              wrapWithModel(
                model: _model.sidebarModel,
                updateCallback: () => safeSetState(() {}),
                child: SidebarWidget(
                  selectsidebar: 8,
                  hide: false,
                ),
              ),
              Expanded(
                child: ListView(
                  padding: EdgeInsets.symmetric(vertical: 16.0),
                  scrollDirection: Axis.vertical,
                  children: [
                    Container(
                      height: 80.0,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 16.0,
                            color: Color(0x26000000),
                            offset: Offset(
                              0.0,
                              0.0,
                            ),
                          )
                        ],
                        gradient: LinearGradient(
                          colors: [
                            FlutterFlowTheme.of(context).accent1,
                            FlutterFlowTheme.of(context).primary
                          ],
                          stops: [0.0, 1.0],
                          begin: AlignmentDirectional(0.53, -1.0),
                          end: AlignmentDirectional(-0.53, 1.0),
                        ),
                        borderRadius: BorderRadius.circular(24.0),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Align(
                              alignment: AlignmentDirectional(-1.0, 0.0),
                              child: Text(
                                'รถยนต์ของผู้มาติดต่อ',
                                style: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .titleSmallFamily,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                      letterSpacing: 0.0,
                                      useGoogleFonts: GoogleFonts.asMap()
                                          .containsKey(
                                              FlutterFlowTheme.of(context)
                                                  .titleSmallFamily),
                                    ),
                              ),
                            ),
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  FFButtonWidget(
                                    onPressed: () async {
                                      final _datePickedDate =
                                          await showDatePicker(
                                        context: context,
                                        initialDate: getCurrentTimestamp,
                                        firstDate: DateTime(1900),
                                        lastDate: getCurrentTimestamp,
                                        builder: (context, child) {
                                          return wrapInMaterialDatePickerTheme(
                                            context,
                                            child!,
                                            headerBackgroundColor:
                                                FlutterFlowTheme.of(context)
                                                    .accent1,
                                            headerForegroundColor:
                                                FlutterFlowTheme.of(context)
                                                    .primaryBackground,
                                            headerTextStyle:
                                                FlutterFlowTheme.of(context)
                                                    .headlineLarge
                                                    .override(
                                                      fontFamily: FlutterFlowTheme
                                                              .of(context)
                                                          .headlineLargeFamily,
                                                      fontSize: 32.0,
                                                      letterSpacing: 0.0,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      useGoogleFonts: GoogleFonts
                                                              .asMap()
                                                          .containsKey(
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .headlineLargeFamily),
                                                    ),
                                            pickerBackgroundColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondaryBackground,
                                            pickerForegroundColor:
                                                FlutterFlowTheme.of(context)
                                                    .primaryText,
                                            selectedDateTimeBackgroundColor:
                                                FlutterFlowTheme.of(context)
                                                    .accent1,
                                            selectedDateTimeForegroundColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondaryBackground,
                                            actionButtonForegroundColor:
                                                FlutterFlowTheme.of(context)
                                                    .accent1,
                                            iconSize: 24.0,
                                          );
                                        },
                                      );

                                      if (_datePickedDate != null) {
                                        safeSetState(() {
                                          _model.datePicked = DateTime(
                                            _datePickedDate.year,
                                            _datePickedDate.month,
                                            _datePickedDate.day,
                                          );
                                        });
                                      }
                                    },
                                    text: dateTimeFormat(
                                        "d MMMM y", getCurrentTimestamp),
                                    icon: Icon(
                                      Icons.calendar_month_rounded,
                                      size: 24.0,
                                    ),
                                    options: FFButtonOptions(
                                      height: 48.0,
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          16.0, 0.0, 16.0, 0.0),
                                      iconPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color: Color(0x00227A4C),
                                      textStyle: FlutterFlowTheme.of(context)
                                          .bodySmall
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .bodySmallFamily,
                                            color: FlutterFlowTheme.of(context)
                                                .primaryBackground,
                                            letterSpacing: 0.0,
                                            useGoogleFonts: GoogleFonts.asMap()
                                                .containsKey(
                                                    FlutterFlowTheme.of(context)
                                                        .bodySmallFamily),
                                          ),
                                      elevation: 0.0,
                                      borderRadius:
                                          BorderRadius.circular(100.0),
                                      hoverColor:
                                          FlutterFlowTheme.of(context).accent1,
                                      hoverTextColor:
                                          FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                    ),
                                  ),
                                  wrapWithModel(
                                    model: _model.searchbarModel,
                                    updateCallback: () => safeSetState(() {}),
                                    child: SearchbarWidget(),
                                  ),
                                ].divide(SizedBox(width: 16.0)),
                              ),
                            ),
                          ].divide(SizedBox(width: 16.0)),
                        ),
                      ),
                    ),
                    MasonryGridView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      gridDelegate:
                          SliverSimpleGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: () {
                          if (MediaQuery.sizeOf(context).width <
                              kBreakpointSmall) {
                            return 1;
                          } else if (MediaQuery.sizeOf(context).width <
                              kBreakpointMedium) {
                            return 1;
                          } else if (MediaQuery.sizeOf(context).width <
                              kBreakpointLarge) {
                            return 3;
                          } else {
                            return 4;
                          }
                        }(),
                      ),
                      crossAxisSpacing: 16.0,
                      mainAxisSpacing: 16.0,
                      itemCount: 15,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return [
                          () => wrapWithModel(
                                model: _model.itemExternalvehicleWidgetModel1,
                                updateCallback: () => safeSetState(() {}),
                                child: ItemExternalvehicleWidgetWidget(
                                  licenseplate: 'ทะเบียน ก 545',
                                  detailcare: 'กรุงเทพมหานคร BYD Atto 3 สีดำ',
                                  datetime: '25/09/67 - 16:50 น.',
                                  color: FlutterFlowTheme.of(context).accent1,
                                ),
                              ),
                          () => wrapWithModel(
                                model: _model.itemExternalvehicleWidgetModel2,
                                updateCallback: () => safeSetState(() {}),
                                child: ItemExternalvehicleWidgetWidget(
                                  licenseplate: 'ทะเบียน ก 331',
                                  detailcare:
                                      'กรุงเทพมหานคร Tesla Model 3 สีดำ',
                                  datetime: '25/09/67 - 15:20 น.',
                                  color: FlutterFlowTheme.of(context).accent1,
                                ),
                              ),
                          () => wrapWithModel(
                                model: _model.itemExternalvehicleWidgetModel3,
                                updateCallback: () => safeSetState(() {}),
                                child: ItemExternalvehicleWidgetWidget(
                                  licenseplate: 'ทะเบียน ผส 888',
                                  detailcare: 'กรุงเทพมหานคร Volvo S90 สีดำ',
                                  datetime: '25/09/67 - 15:10 น.',
                                  color: FlutterFlowTheme.of(context).accent1,
                                ),
                              ),
                          () => wrapWithModel(
                                model: _model.itemExternalvehicleWidgetModel4,
                                updateCallback: () => safeSetState(() {}),
                                child: ItemExternalvehicleWidgetWidget(
                                  licenseplate: 'ทะเบียน กก 888',
                                  detailcare:
                                      'กรุงเทพมหานคร Tesla Model 3 สีดำ',
                                  datetime: '25/09/67 - 14:56 น.',
                                  color: FlutterFlowTheme.of(context).accent1,
                                ),
                              ),
                          () => wrapWithModel(
                                model: _model.itemExternalvehicleWidgetModel5,
                                updateCallback: () => safeSetState(() {}),
                                child: ItemExternalvehicleWidgetWidget(
                                  licenseplate: 'ทะเบียน ก 776 ',
                                  detailcare: 'กรุงเทพมหานคร HONDA CIVIC สีดำ',
                                  datetime: '25/09/67 - 14:55 น.',
                                  color: FlutterFlowTheme.of(context).accent1,
                                ),
                              ),
                          () => wrapWithModel(
                                model: _model.itemExternalvehicleWidgetModel6,
                                updateCallback: () => safeSetState(() {}),
                                child: ItemExternalvehicleWidgetWidget(
                                  licenseplate: 'ทะเบียน ร 987',
                                  detailcare: 'กรุงเทพมหานคร Honda HR-V สีดำ',
                                  datetime: '25/09/67 - 14:40 น.',
                                  color: FlutterFlowTheme.of(context).accent1,
                                ),
                              ),
                          () => wrapWithModel(
                                model: _model.itemExternalvehicleWidgetModel7,
                                updateCallback: () => safeSetState(() {}),
                                child: ItemExternalvehicleWidgetWidget(
                                  licenseplate: 'ทะเบียน นน 888',
                                  detailcare: 'กรุงเทพมหานคร MG5 สีดำ',
                                  datetime: '25/09/67 - 14:32 น.',
                                  color: FlutterFlowTheme.of(context).accent1,
                                ),
                              ),
                          () => wrapWithModel(
                                model: _model.itemExternalvehicleWidgetModel8,
                                updateCallback: () => safeSetState(() {}),
                                child: ItemExternalvehicleWidgetWidget(
                                  licenseplate: 'ทะเบียน ก 909',
                                  detailcare: 'กรุงเทพมหานคร Toyota Camry สีดำ',
                                  datetime: '25/09/67 - 14:25 น.',
                                  color: FlutterFlowTheme.of(context).accent1,
                                ),
                              ),
                          () => wrapWithModel(
                                model: _model.itemExternalvehicleWidgetModel9,
                                updateCallback: () => safeSetState(() {}),
                                child: ItemExternalvehicleWidgetWidget(
                                  licenseplate: 'ทะเบียน อ 112',
                                  detailcare: 'กรุงเทพมหานคร HONDA CIVIC สีดำ',
                                  datetime: '25/09/67 - 14:20 น.',
                                  color: FlutterFlowTheme.of(context).accent1,
                                ),
                              ),
                          () => wrapWithModel(
                                model: _model.itemExternalvehicleWidgetModel10,
                                updateCallback: () => safeSetState(() {}),
                                child: ItemExternalvehicleWidgetWidget(
                                  licenseplate: 'ทะเบียน พ 768',
                                  detailcare: 'กรุงเทพมหานคร Mazda CX-5 สีดำ',
                                  datetime: '25/09/67 - 14:10 น.',
                                  color: FlutterFlowTheme.of(context).accent1,
                                ),
                              ),
                          () => wrapWithModel(
                                model: _model.itemExternalvehicleWidgetModel11,
                                updateCallback: () => safeSetState(() {}),
                                child: ItemExternalvehicleWidgetWidget(
                                  licenseplate: 'ทะเบียน ก 809',
                                  detailcare:
                                      'กรุงเทพมหานคร Hyundai Creta สีดำ',
                                  datetime: '25/09/67 - 13:20 น.',
                                  color: FlutterFlowTheme.of(context).accent1,
                                ),
                              ),
                          () => wrapWithModel(
                                model: _model.itemExternalvehicleWidgetModel12,
                                updateCallback: () => safeSetState(() {}),
                                child: ItemExternalvehicleWidgetWidget(
                                  licenseplate: 'ทะเบียน กน 789',
                                  detailcare: 'กรุงเทพมหานคร Lexus LS สีดำ',
                                  datetime: '25/09/67 - 13:20 น.',
                                  color: FlutterFlowTheme.of(context).accent1,
                                ),
                              ),
                          () => wrapWithModel(
                                model: _model.itemExternalvehicleWidgetModel13,
                                updateCallback: () => safeSetState(() {}),
                                child: ItemExternalvehicleWidgetWidget(
                                  licenseplate: 'ทะเบียน นน 877',
                                  detailcare: 'กรุงเทพมหานคร MG5 สีดำ',
                                  datetime: '25/09/67 - 12:32 น.',
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                ),
                              ),
                          () => wrapWithModel(
                                model: _model.itemExternalvehicleWidgetModel14,
                                updateCallback: () => safeSetState(() {}),
                                child: ItemExternalvehicleWidgetWidget(
                                  licenseplate: 'ทะเบียน ร 983',
                                  detailcare: 'กรุงเทพมหานคร Honda HR-V สีดำ',
                                  datetime: '25/09/67 - 12:10 น.',
                                  color: FlutterFlowTheme.of(context).accent1,
                                ),
                              ),
                          () => wrapWithModel(
                                model: _model.itemExternalvehicleWidgetModel15,
                                updateCallback: () => safeSetState(() {}),
                                child: ItemExternalvehicleWidgetWidget(
                                  licenseplate: 'ทะเบียน ป 921',
                                  detailcare: 'กรุงเทพมหานคร Honda HR-V สีดำ',
                                  datetime: '25/09/67 - 12:10 น.',
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                ),
                              ),
                        ][index]();
                      },
                    ),
                  ].divide(SizedBox(height: 16.0)),
                ),
              ),
            ].divide(SizedBox(width: 16.0)).around(SizedBox(width: 16.0)),
          ),
        ),
      ),
    );
  }
}
