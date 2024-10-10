import 'package:barrier_gate_web/manageproject/manageproject/controller/Villageproject_api.dart';
import 'package:barrier_gate_web/manageproject/manageproject/controller/json_model/ehp_villageproject_model.dart';
import 'package:barrier_gate_web/manageproject/project_detail/project_detail_user.dart';

import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/manageproject/editproject/editproject_widget.dart';
import '/manageproject/item_niti_widget/item_niti_widget_widget.dart';
import '/utils/sidebar/sidebar_widget.dart';
import 'package:styled_divider/styled_divider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:get/get.dart';
import 'project_detail_model.dart';
export 'project_detail_model.dart';
import 'package:get_storage/get_storage.dart';

class ProjectDetailWidget extends StatefulWidget {
  ProjectDetailWidget({
    super.key,
  });

  @override
  State<ProjectDetailWidget> createState() => _ProjectDetailWidgetState();
}

class _ProjectDetailWidgetState extends State<ProjectDetailWidget> {
  late ProjectDetailModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final box = GetStorage();
  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProjectDetailModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final Villageproject village = Get.arguments as Villageproject;
    final int projectId = village.villageproject_id!;
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            alignment: const AlignmentDirectional(0.0, -1.0),
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
                const Color(0x7FF5F5F5),
                FlutterFlowTheme.of(context).secondaryBackground
              ],
              stops: [0.0, 1.0],
              begin: const AlignmentDirectional(0.0, -1.0),
              end: const AlignmentDirectional(0, 1.0),
            ),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              wrapWithModel(
                model: _model.sidebarModel,
                updateCallback: () => safeSetState(() {}),
                child: const SidebarWidget(
                  selectsidebar: 7,
                  hide: false,
                ),
              ),
              Expanded(
                child: ListView(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  scrollDirection: Axis.vertical,
                  children: [
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: const Color(0xE6FFFFFF),
                        borderRadius: BorderRadius.circular(24.0),
                        border: Border.all(
                          color: FlutterFlowTheme.of(context).primaryBackground,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
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
                                    Get.back();
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
                                        alignment: const AlignmentDirectional(
                                            -1.0, 0.0),
                                        child: Text(
                                          'ข้อมูลโครงการ',
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
                                    ].divide(const SizedBox(width: 10.0)),
                                  ),
                                ),
                                wrapWithModel(
                                  model: _model.editprojectModel,
                                  updateCallback: () => safeSetState(() {}),
                                  child: EditprojectWidget(),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: Align(
                                    alignment:
                                        const AlignmentDirectional(0.0, 1.0),
                                    child: Hero(
                                      tag: 'image',
                                      transitionOnUserGestures: true,
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(24.0),
                                        child: Image.asset(
                                          'assets/images/bg27.png',
                                          width: double.infinity,
                                          height: 216.0,
                                          fit: BoxFit.contain,
                                          alignment: const Alignment(0.0, 1.0),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: MasonryGridView.builder(
                                    physics:
                                        const NeverScrollableScrollPhysics(),
                                    gridDelegate:
                                        const SliverSimpleGridDelegateWithFixedCrossAxisCount(
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
                                                      const AlignmentDirectional(
                                                          1.0, 1.0),
                                                  image: Image.asset(
                                                    'assets/images/home2.png',
                                                  ).image,
                                                ),
                                                gradient: LinearGradient(
                                                  colors: [
                                                    FlutterFlowTheme.of(context)
                                                        .accent2,
                                                    const Color(0xFFE26B13)
                                                  ],
                                                  stops: [0.0, 1.0],
                                                  begin:
                                                      const AlignmentDirectional(
                                                          0.56, -1.0),
                                                  end:
                                                      const AlignmentDirectional(
                                                          -0.56, 1.0),
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(24.0),
                                              ),
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(16.0),
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
                                                          'โครงการ',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .titleSmall
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleSmallFamily,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryBackground,
                                                                letterSpacing:
                                                                    0.0,
                                                                useGoogleFonts: GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        FlutterFlowTheme.of(context)
                                                                            .titleSmallFamily),
                                                              ),
                                                        ),
                                                      ].divide(const SizedBox(
                                                          height: 8.0)),
                                                    ),
                                                    Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        // const Divider(
                                                        //   thickness: 2,
                                                        //   color: Colors.white,
                                                        // ),
                                                        Text(
                                                          'ชื่อที่ลงทะเบียน',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .titleSmall
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleSmallFamily,
                                                                fontSize: 12,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryBackground,
                                                                letterSpacing:
                                                                    0.0,
                                                                useGoogleFonts: GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        FlutterFlowTheme.of(context)
                                                                            .titleSmallFamily),
                                                              ),
                                                        ),
                                                        const StyledDivider(
                                                          height: 1.0,
                                                          thickness: 1.0,
                                                          color:
                                                              Color(0x3EE6E6E6),
                                                          lineStyle:
                                                              DividerLineStyle
                                                                  .dashed,
                                                        ),
                                                        Text(
                                                          village.villageproject_registered_name! ??
                                                              '-',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .titleSmall
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleSmallFamily,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryBackground,
                                                                letterSpacing:
                                                                    0.0,
                                                                useGoogleFonts: GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        FlutterFlowTheme.of(context)
                                                                            .titleSmallFamily),
                                                                lineHeight: 1.5,
                                                              ),
                                                        ),
                                                        const Divider(
                                                          thickness: 2,
                                                          color: Colors.white,
                                                        ),
                                                        Text(
                                                          'ชื่อในระบบ',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .titleSmall
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleSmallFamily,
                                                                fontSize: 12,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryBackground,
                                                                letterSpacing:
                                                                    0.0,
                                                                useGoogleFonts: GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        FlutterFlowTheme.of(context)
                                                                            .titleSmallFamily),
                                                              ),
                                                        ),
                                                        const StyledDivider(
                                                          height: 1.0,
                                                          thickness: 1.0,
                                                          color:
                                                              Color(0x3EE6E6E6),
                                                          lineStyle:
                                                              DividerLineStyle
                                                                  .dashed,
                                                        ),
                                                        Text(
                                                          village.villageproject_display_name! ??
                                                              '-',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .titleSmall
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleSmallFamily,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryBackground,
                                                                letterSpacing:
                                                                    0.0,
                                                                useGoogleFonts: GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        FlutterFlowTheme.of(context)
                                                                            .titleSmallFamily),
                                                                lineHeight: 1.5,
                                                              ),
                                                        ),
                                                      ],
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
                                                      const AlignmentDirectional(
                                                          1.0, 1.0),
                                                  image: Image.asset(
                                                    'assets/images/road.png',
                                                  ).image,
                                                ),
                                                gradient: LinearGradient(
                                                  colors: [
                                                    const Color(0xFF28C1E3),
                                                    FlutterFlowTheme.of(context)
                                                        .tertiary
                                                  ],
                                                  stops: [0.0, 1.0],
                                                  begin:
                                                      const AlignmentDirectional(
                                                          0.56, -1.0),
                                                  end:
                                                      const AlignmentDirectional(
                                                          -0.56, 1.0),
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(24.0),
                                              ),
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(16.0),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceEvenly,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      'ที่อยู่',
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .titleSmall
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleSmallFamily,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryBackground,
                                                                letterSpacing:
                                                                    0.0,
                                                                useGoogleFonts: GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        FlutterFlowTheme.of(context)
                                                                            .titleSmallFamily),
                                                              ),
                                                    ),
                                                    const StyledDivider(
                                                      height: 1.0,
                                                      thickness: 1.0,
                                                      color: Color(0x3EE6E6E6),
                                                      lineStyle:
                                                          DividerLineStyle
                                                              .dashed,
                                                    ),
                                                    Text(
                                                      village.villageproject_address! ??
                                                          '-',
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .titleSmall
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleSmallFamily,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryBackground,
                                                                letterSpacing:
                                                                    0.0,
                                                                useGoogleFonts: GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        FlutterFlowTheme.of(context)
                                                                            .titleSmallFamily),
                                                                lineHeight: 1.5,
                                                              ),
                                                    ),
                                                  ].divide(const SizedBox(
                                                      height: 8.0)),
                                                ),
                                              ),
                                            ),
                                      ][index]();
                                    },
                                  ),
                                ),
                              ].divide(const SizedBox(width: 16.0)),
                            ),
                          ].divide(const SizedBox(height: 16.0)),
                        ),
                      ),
                    ),
                    ProjectDetailUser(model: _model, projectId: projectId),
                  ].divide(const SizedBox(height: 16.0)),
                ),
              ),
            ]
                .divide(const SizedBox(width: 16.0))
                .around(const SizedBox(width: 16.0)),
          ),
        ),
      ),
    );
  }
}
