import '/car/widget/item_residents_cars_widget/item_residents_cars_widget_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/utils/searchbargreen/searchbargreen_widget.dart';
import '/utils/sidebar/sidebar_widget.dart';
import 'package:styled_divider/styled_divider.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'registered_cars_list_view_model.dart';
export 'registered_cars_list_view_model.dart';

class RegisteredCarsListViewWidget extends StatefulWidget {
  const RegisteredCarsListViewWidget({super.key});

  @override
  State<RegisteredCarsListViewWidget> createState() =>
      _RegisteredCarsListViewWidgetState();
}

class _RegisteredCarsListViewWidgetState
    extends State<RegisteredCarsListViewWidget> {
  late RegisteredCarsListViewModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RegisteredCarsListViewModel());

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
                  selectsidebar: 1,
                  hide: false,
                ),
              ),
              Expanded(
                child: ListView(
                  padding: EdgeInsets.symmetric(vertical: 16.0),
                  scrollDirection: Axis.vertical,
                  children: [
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Color(0xE6FFFFFF),
                        borderRadius: BorderRadius.circular(24.0),
                        border: Border.all(
                          color: FlutterFlowTheme.of(context).primaryBackground,
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    // context.safePop();
                                  },
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Icon(
                                        Icons.arrow_back_ios_new_rounded,
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        size: 24.0,
                                      ),
                                      Align(
                                        alignment:
                                            AlignmentDirectional(-1.0, 0.0),
                                        child: Text(
                                          'จำนวนรถยนต์ที่ลงทะเบียน',
                                          style: FlutterFlowTheme.of(context)
                                              .titleSmall
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmallFamily,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                letterSpacing: 0.0,
                                                useGoogleFonts: GoogleFonts
                                                        .asMap()
                                                    .containsKey(
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .titleSmallFamily),
                                              ),
                                        ),
                                      ),
                                    ].divide(SizedBox(width: 8.0)),
                                  ),
                                ),
                                wrapWithModel(
                                  model: _model.searchbargreenModel,
                                  updateCallback: () => safeSetState(() {}),
                                  child: SearchbargreenWidget(),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: Align(
                                    alignment: AlignmentDirectional(0.0, 1.0),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(24.0),
                                      child: Image.asset(
                                        'assets/images/bg23.png',
                                        width: double.infinity,
                                        height: 216.0,
                                        fit: BoxFit.contain,
                                        alignment: Alignment(0.0, 1.0),
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: MasonryGridView.builder(
                                    physics:
                                        const NeverScrollableScrollPhysics(),
                                    gridDelegate:
                                        SliverSimpleGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 2,
                                    ),
                                    crossAxisSpacing: 16.0,
                                    mainAxisSpacing: 16.0,
                                    itemCount: 2,
                                    shrinkWrap: true,
                                    itemBuilder: (context, index) {
                                      return [
                                        () => Container(
                                              width: 100.0,
                                              height: 216.0,
                                              decoration: BoxDecoration(
                                                image: DecorationImage(
                                                  fit: BoxFit.contain,
                                                  alignment:
                                                      AlignmentDirectional(
                                                          1.0, 1.0),
                                                  image: Image.asset(
                                                    'assets/images/calendar.png',
                                                  ).image,
                                                ),
                                                gradient: LinearGradient(
                                                  colors: [
                                                    FlutterFlowTheme.of(context)
                                                        .accent2,
                                                    Color(0xFFE26B13)
                                                  ],
                                                  stops: [0.0, 1.0],
                                                  begin: AlignmentDirectional(
                                                      0.56, -1.0),
                                                  end: AlignmentDirectional(
                                                      -0.56, 1.0),
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(24.0),
                                              ),
                                              child: Padding(
                                                padding: EdgeInsets.all(16.0),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceEvenly,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                          'วันที่',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .titleMedium
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleMediumFamily,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryBackground,
                                                                letterSpacing:
                                                                    0.0,
                                                                useGoogleFonts: GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        FlutterFlowTheme.of(context)
                                                                            .titleMediumFamily),
                                                              ),
                                                        ),
                                                      ].divide(SizedBox(
                                                          height: 8.0)),
                                                    ),
                                                    StyledDivider(
                                                      height: 1.0,
                                                      thickness: 1.0,
                                                      color: Color(0x3EE6E6E6),
                                                      lineStyle:
                                                          DividerLineStyle
                                                              .dashed,
                                                    ),
                                                    Text(
                                                      dateTimeFormat("d MMMM y",
                                                          getCurrentTimestamp),
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .titleMedium
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleMediumFamily,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryBackground,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                useGoogleFonts: GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        FlutterFlowTheme.of(context)
                                                                            .titleMediumFamily),
                                                              ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                        () => Container(
                                              width: 100.0,
                                              height: 216.0,
                                              decoration: BoxDecoration(
                                                image: DecorationImage(
                                                  fit: BoxFit.contain,
                                                  alignment:
                                                      AlignmentDirectional(
                                                          1.0, 1.0),
                                                  image: Image.asset(
                                                    'assets/images/car2.png',
                                                  ).image,
                                                ),
                                                gradient: LinearGradient(
                                                  colors: [
                                                    Color(0xFF28C1E3),
                                                    FlutterFlowTheme.of(context)
                                                        .tertiary
                                                  ],
                                                  stops: [0.0, 1.0],
                                                  begin: AlignmentDirectional(
                                                      0.56, -1.0),
                                                  end: AlignmentDirectional(
                                                      -0.56, 1.0),
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(24.0),
                                              ),
                                              child: Padding(
                                                padding: EdgeInsets.all(16.0),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceEvenly,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                          'จำนวนรถยนต์',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .titleMedium
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleMediumFamily,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryBackground,
                                                                letterSpacing:
                                                                    0.0,
                                                                useGoogleFonts: GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        FlutterFlowTheme.of(context)
                                                                            .titleMediumFamily),
                                                              ),
                                                        ),
                                                      ].divide(SizedBox(
                                                          height: 8.0)),
                                                    ),
                                                    StyledDivider(
                                                      height: 1.0,
                                                      thickness: 1.0,
                                                      color: Color(0x3EE6E6E6),
                                                      lineStyle:
                                                          DividerLineStyle
                                                              .dashed,
                                                    ),
                                                    RichText(
                                                      textScaler:
                                                          MediaQuery.of(context)
                                                              .textScaler,
                                                      text: TextSpan(
                                                        children: [
                                                          TextSpan(
                                                            text: '15',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .headlineSmall
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .headlineSmallFamily,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryBackground,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          FlutterFlowTheme.of(context)
                                                                              .headlineSmallFamily),
                                                                ),
                                                          ),
                                                          TextSpan(
                                                            text: ' คัน',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryBackground,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodyMediumFamily),
                                                                ),
                                                          )
                                                        ],
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodyMediumFamily),
                                                                ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                      ][index]();
                                    },
                                  ),
                                ),
                              ].divide(SizedBox(width: 16.0)),
                            ),
                          ].divide(SizedBox(height: 16.0)),
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
                      itemCount: 14,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return [
                          () => wrapWithModel(
                                model: _model.itemResidentsCarsWidgetModel1,
                                updateCallback: () => safeSetState(() {}),
                                child: ItemResidentsCarsWidgetWidget(
                                  licenseplate: 'ทะเบียน ก 888',
                                  detailcare: 'กรุงเทพมหานคร HONDA CIVIC สีดำ',
                                  color: FlutterFlowTheme.of(context).accent1,
                                  housenumber: 'บ้านเลขที่ 1/1',
                                ),
                              ),
                          () => wrapWithModel(
                                model: _model.itemResidentsCarsWidgetModel2,
                                updateCallback: () => safeSetState(() {}),
                                child: ItemResidentsCarsWidgetWidget(
                                  licenseplate: 'ทะเบียน ก 111',
                                  detailcare: 'กรุงเทพมหานคร Toyota Camry สีดำ',
                                  color: FlutterFlowTheme.of(context).accent1,
                                  housenumber: 'บ้านเลขที่ 1/2',
                                ),
                              ),
                          () => wrapWithModel(
                                model: _model.itemResidentsCarsWidgetModel3,
                                updateCallback: () => safeSetState(() {}),
                                child: ItemResidentsCarsWidgetWidget(
                                  licenseplate: 'ทะเบียน ก 1134',
                                  detailcare: 'กรุงเทพมหานคร Mazda 3 สีขาว',
                                  color: FlutterFlowTheme.of(context).accent1,
                                  housenumber: 'บ้านเลขที่ 1/12',
                                ),
                              ),
                          () => wrapWithModel(
                                model: _model.itemResidentsCarsWidgetModel4,
                                updateCallback: () => safeSetState(() {}),
                                child: ItemResidentsCarsWidgetWidget(
                                  licenseplate: 'ทะเบียน ก 245',
                                  detailcare: 'อุดรธานี HONDA CR-V สีดำ',
                                  color: FlutterFlowTheme.of(context).accent1,
                                  housenumber: 'บ้านเลขที่ 1/3',
                                ),
                              ),
                          () => wrapWithModel(
                                model: _model.itemResidentsCarsWidgetModel5,
                                updateCallback: () => safeSetState(() {}),
                                child: ItemResidentsCarsWidgetWidget(
                                  licenseplate: 'ทะเบียน ฉ 834',
                                  detailcare: 'กรุงเทพมหานคร Mazda CX-5 สีดำ',
                                  color: FlutterFlowTheme.of(context).accent1,
                                  housenumber: 'บ้านเลขที่ 1/3',
                                ),
                              ),
                          () => wrapWithModel(
                                model: _model.itemResidentsCarsWidgetModel6,
                                updateCallback: () => safeSetState(() {}),
                                child: ItemResidentsCarsWidgetWidget(
                                  licenseplate: 'ทะเบียน ก 222',
                                  detailcare: 'ขอนแก่น Nissan Almera สีดำ',
                                  color: FlutterFlowTheme.of(context).accent1,
                                  housenumber: 'บ้านเลขที่ 1/15',
                                ),
                              ),
                          () => wrapWithModel(
                                model: _model.itemResidentsCarsWidgetModel7,
                                updateCallback: () => safeSetState(() {}),
                                child: ItemResidentsCarsWidgetWidget(
                                  licenseplate: 'ทะเบียน ป 232',
                                  detailcare:
                                      'กรุงเทพมหานคร Toyota Fortuner สีดำ',
                                  color: FlutterFlowTheme.of(context).accent1,
                                  housenumber: 'บ้านเลขที่ 1/22',
                                ),
                              ),
                          () => wrapWithModel(
                                model: _model.itemResidentsCarsWidgetModel8,
                                updateCallback: () => safeSetState(() {}),
                                child: ItemResidentsCarsWidgetWidget(
                                  licenseplate: 'ทะเบียน ก 998',
                                  detailcare: 'กรุงเทพมหานคร MG ZS สีดำ',
                                  color: FlutterFlowTheme.of(context).accent1,
                                  housenumber: 'บ้านเลขที่ 1/12',
                                ),
                              ),
                          () => wrapWithModel(
                                model: _model.itemResidentsCarsWidgetModel9,
                                updateCallback: () => safeSetState(() {}),
                                child: ItemResidentsCarsWidgetWidget(
                                  licenseplate: 'ทะเบียน ก 689',
                                  detailcare:
                                      'กรุงเทพมหานคร Hyundai Creta สีดำ',
                                  color: FlutterFlowTheme.of(context).accent1,
                                  housenumber: 'บ้านเลขที่ 1/13',
                                ),
                              ),
                          () => wrapWithModel(
                                model: _model.itemResidentsCarsWidgetModel10,
                                updateCallback: () => safeSetState(() {}),
                                child: ItemResidentsCarsWidgetWidget(
                                  licenseplate: 'ทะเบียน หก 567',
                                  detailcare: 'กรุงเทพมหานคร BMW 7 Series สีดำ',
                                  color: FlutterFlowTheme.of(context).accent1,
                                  housenumber: 'บ้านเลขที่ 1/24',
                                ),
                              ),
                          () => wrapWithModel(
                                model: _model.itemResidentsCarsWidgetModel11,
                                updateCallback: () => safeSetState(() {}),
                                child: ItemResidentsCarsWidgetWidget(
                                  licenseplate: 'ทะเบียน ฮ 123',
                                  detailcare: 'กรุงเทพมหานคร Lexus LS สีดำ',
                                  color: FlutterFlowTheme.of(context).accent1,
                                  housenumber: 'บ้านเลขที่ 1/10',
                                ),
                              ),
                          () => wrapWithModel(
                                model: _model.itemResidentsCarsWidgetModel12,
                                updateCallback: () => safeSetState(() {}),
                                child: ItemResidentsCarsWidgetWidget(
                                  licenseplate: 'ทะเบียน ก 333 ',
                                  detailcare: 'กรุงเทพมหานคร Audi A8 สีดำ',
                                  color: FlutterFlowTheme.of(context).accent1,
                                  housenumber: 'บ้านเลขที่ 1/14',
                                ),
                              ),
                          () => wrapWithModel(
                                model: _model.itemResidentsCarsWidgetModel13,
                                updateCallback: () => safeSetState(() {}),
                                child: ItemResidentsCarsWidgetWidget(
                                  licenseplate: 'ทะเบียน ก 777',
                                  detailcare:
                                      'กรุงเทพมหานคร Tesla Model 3 สีดำ',
                                  color: FlutterFlowTheme.of(context).accent1,
                                  housenumber: 'บ้านเลขที่ 1/23',
                                ),
                              ),
                          () => wrapWithModel(
                                model: _model.itemResidentsCarsWidgetModel14,
                                updateCallback: () => safeSetState(() {}),
                                child: ItemResidentsCarsWidgetWidget(
                                  licenseplate: 'ทะเบียน ก 889',
                                  detailcare:
                                      'กรุงเทพมหานคร Hyundai Kona Electric สีดำ',
                                  color: FlutterFlowTheme.of(context).accent1,
                                  housenumber: 'บ้านเลขที่ 1/11',
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
