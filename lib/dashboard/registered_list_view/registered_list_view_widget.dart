import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/home/widget/item_villagers_in_home_widget/item_villagers_in_home_widget_widget.dart';
import '/utils/searchbargreen/searchbargreen_widget.dart';
import '/utils/sidebar/sidebar_widget.dart';
import 'package:styled_divider/styled_divider.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'registered_list_view_model.dart';
export 'registered_list_view_model.dart';

class RegisteredListViewWidget extends StatefulWidget {
  const RegisteredListViewWidget({super.key});

  @override
  State<RegisteredListViewWidget> createState() =>
      _RegisteredListViewWidgetState();
}

class _RegisteredListViewWidgetState extends State<RegisteredListViewWidget> {
  late RegisteredListViewModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RegisteredListViewModel());

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
                                          'จำนวนคนที่ลงทะเบียน',
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
                                        'assets/images/bg25.png',
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
                                                    'assets/images/home2.png',
                                                  ).image,
                                                ),
                                                gradient: LinearGradient(
                                                  colors: [
                                                    Color(0xFF792EC9),
                                                    Color(0xFF300061)
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
                                                          'จำนวนบ้านที่ลงทะเบียน',
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
                                                            text: '12',
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
                                                            text: ' หลัง',
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
                      itemCount: 12,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return [
                          () => wrapWithModel(
                                model: _model.itemVillagersInHomeWidgetModel1,
                                updateCallback: () => safeSetState(() {}),
                                child: ItemVillagersInHomeWidgetWidget(
                                  fullname: 'คุณ พรรณราย สุนทรวัฒน์',
                                  datetime: '25/09/67 - 15:00 น.',
                                  icon: Icon(
                                    Icons.hourglass_top_rounded,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBackground,
                                    size: 12.0,
                                  ),
                                  colorstatus:
                                      FlutterFlowTheme.of(context).secondary,
                                ),
                              ),
                          () => wrapWithModel(
                                model: _model.itemVillagersInHomeWidgetModel2,
                                updateCallback: () => safeSetState(() {}),
                                child: ItemVillagersInHomeWidgetWidget(
                                  fullname: 'คุณ นางสาว ภัทรวดี เกียรติคุณ',
                                  datetime: '25/09/67 - 14:40 น.',
                                  icon: Icon(
                                    Icons.hourglass_top_rounded,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBackground,
                                    size: 12.0,
                                  ),
                                  colorstatus:
                                      FlutterFlowTheme.of(context).secondary,
                                ),
                              ),
                          () => wrapWithModel(
                                model: _model.itemVillagersInHomeWidgetModel3,
                                updateCallback: () => safeSetState(() {}),
                                child: ItemVillagersInHomeWidgetWidget(
                                  fullname: 'คุณ ณิชาภัทร สุนทรวัฒน์',
                                  datetime: '25/09/67 - 12:00 น.',
                                  icon: Icon(
                                    Icons.verified_rounded,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBackground,
                                    size: 12.0,
                                  ),
                                  colorstatus:
                                      FlutterFlowTheme.of(context).success,
                                ),
                              ),
                          () => wrapWithModel(
                                model: _model.itemVillagersInHomeWidgetModel4,
                                updateCallback: () => safeSetState(() {}),
                                child: ItemVillagersInHomeWidgetWidget(
                                  fullname: 'คุณ ธัญญลักษณ์ ศรีสุข ',
                                  datetime: '25/09/67 - 11:50 น.',
                                  icon: Icon(
                                    Icons.verified_rounded,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBackground,
                                    size: 12.0,
                                  ),
                                  colorstatus:
                                      FlutterFlowTheme.of(context).success,
                                ),
                              ),
                          () => wrapWithModel(
                                model: _model.itemVillagersInHomeWidgetModel5,
                                updateCallback: () => safeSetState(() {}),
                                child: ItemVillagersInHomeWidgetWidget(
                                  fullname: 'คุณ ชลธิชา อินทรกำแหง',
                                  datetime: '25/09/67 - 11:48 น.',
                                  icon: Icon(
                                    Icons.hourglass_top_rounded,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBackground,
                                    size: 12.0,
                                  ),
                                  colorstatus:
                                      FlutterFlowTheme.of(context).secondary,
                                ),
                              ),
                          () => wrapWithModel(
                                model: _model.itemVillagersInHomeWidgetModel6,
                                updateCallback: () => safeSetState(() {}),
                                child: ItemVillagersInHomeWidgetWidget(
                                  fullname: 'คุณ กานต์พิชชา สุขุม',
                                  datetime: '25/09/67 - 11:40 น.',
                                  icon: Icon(
                                    Icons.close_rounded,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBackground,
                                    size: 12.0,
                                  ),
                                  colorstatus:
                                      FlutterFlowTheme.of(context).error,
                                ),
                              ),
                          () => wrapWithModel(
                                model: _model.itemVillagersInHomeWidgetModel7,
                                updateCallback: () => safeSetState(() {}),
                                child: ItemVillagersInHomeWidgetWidget(
                                  fullname: 'คุณ ณิชาภัทร สุนทรวัฒน์',
                                  datetime: '25/09/67 - 11:00 น.',
                                  icon: Icon(
                                    Icons.verified_rounded,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBackground,
                                    size: 12.0,
                                  ),
                                  colorstatus:
                                      FlutterFlowTheme.of(context).success,
                                ),
                              ),
                          () => wrapWithModel(
                                model: _model.itemVillagersInHomeWidgetModel8,
                                updateCallback: () => safeSetState(() {}),
                                child: ItemVillagersInHomeWidgetWidget(
                                  fullname: 'คุณ พีรพัฒน์ วิเศษกุล',
                                  datetime: '25/09/67 - 10:56 น.',
                                  icon: Icon(
                                    Icons.hourglass_top_rounded,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBackground,
                                    size: 12.0,
                                  ),
                                  colorstatus:
                                      FlutterFlowTheme.of(context).secondary,
                                ),
                              ),
                          () => wrapWithModel(
                                model: _model.itemVillagersInHomeWidgetModel9,
                                updateCallback: () => safeSetState(() {}),
                                child: ItemVillagersInHomeWidgetWidget(
                                  fullname: 'คุณ ณัฐวุฒิ จันทร์เพ็ญ',
                                  datetime: '25/09/67 - 10:50 น.',
                                  icon: Icon(
                                    Icons.verified_rounded,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBackground,
                                    size: 12.0,
                                  ),
                                  colorstatus:
                                      FlutterFlowTheme.of(context).success,
                                ),
                              ),
                          () => wrapWithModel(
                                model: _model.itemVillagersInHomeWidgetModel10,
                                updateCallback: () => safeSetState(() {}),
                                child: ItemVillagersInHomeWidgetWidget(
                                  fullname: 'คุณ วรุตม์ รัตนเสถียร',
                                  datetime: '25/09/67 - 10:46 น.',
                                  icon: Icon(
                                    Icons.hourglass_top_rounded,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBackground,
                                    size: 12.0,
                                  ),
                                  colorstatus:
                                      FlutterFlowTheme.of(context).secondary,
                                ),
                              ),
                          () => wrapWithModel(
                                model: _model.itemVillagersInHomeWidgetModel11,
                                updateCallback: () => safeSetState(() {}),
                                child: ItemVillagersInHomeWidgetWidget(
                                  fullname: 'คุณ อัญชลี สุวรรณบูรณ์',
                                  datetime: '25/09/67 - 10:10 น.',
                                  icon: Icon(
                                    Icons.hourglass_top_rounded,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBackground,
                                    size: 12.0,
                                  ),
                                  colorstatus:
                                      FlutterFlowTheme.of(context).secondary,
                                ),
                              ),
                          () => wrapWithModel(
                                model: _model.itemVillagersInHomeWidgetModel12,
                                updateCallback: () => safeSetState(() {}),
                                child: ItemVillagersInHomeWidgetWidget(
                                  fullname: 'คุณ ปุณณวิชญ์ สุขใจ',
                                  datetime: '25/09/67 - 09:30 น.',
                                  icon: Icon(
                                    Icons.verified_rounded,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBackground,
                                    size: 12.0,
                                  ),
                                  colorstatus:
                                      FlutterFlowTheme.of(context).success,
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
