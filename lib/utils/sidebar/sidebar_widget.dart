import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'sidebar_model.dart';
export 'sidebar_model.dart';
import 'package:get/get.dart';

class SidebarWidget extends StatefulWidget {
  const SidebarWidget({
    super.key,
    required this.selectsidebar,
    bool? hide,
  }) : this.hide = hide ?? false;

  final int? selectsidebar;
  final bool hide;

  @override
  State<SidebarWidget> createState() => _SidebarWidgetState();
}

class _SidebarWidgetState extends State<SidebarWidget> {
  late SidebarModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SidebarModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 16.0),
      child: Container(
        width: 100.0,
        height: double.infinity,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).primaryBackground,
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
          borderRadius: BorderRadius.circular(24.0),
          border: Border.all(
            color: FlutterFlowTheme.of(context).primaryBackground,
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Align(
              alignment: AlignmentDirectional(0.0, -1.0),
              child: Container(
                width: 70.0,
                height: 70.0,
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                ),
                child: Image.asset(
                  'assets/images/logo.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Expanded(
              child: ListView(
                padding: EdgeInsets.symmetric(vertical: 16.0),
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      FlutterFlowIconButton(
                          borderColor: Colors.transparent,
                          borderRadius: 100.0,
                          buttonSize: 40.0,
                          fillColor: widget!.selectsidebar == 1
                              ? Color(0x2000613A)
                              : Color(0x00000000),
                          icon: Icon(
                            Icons.grid_view_rounded,
                            color: widget!.selectsidebar == 1
                                ? FlutterFlowTheme.of(context).accent1
                                : FlutterFlowTheme.of(context).secondaryText,
                            size: 24.0,
                          ),
                          onPressed: () async {
                            Get.toNamed(
                                '/dashboard_list_view'); // เปลี่ยนเส้นทางโดยใช้ GetX
                          }),
                      Text(
                        'หน้าหลัก',
                        style: TextStyle(
                          color: widget!.selectsidebar == 1
                              ? FlutterFlowTheme.of(context).accent1
                              : FlutterFlowTheme.of(context).secondaryText,
                          fontWeight: FontWeight.w300,
                          fontSize: 10.0,
                        ),
                      ),
                    ].divide(SizedBox(height: 4.0)),
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      FlutterFlowIconButton(
                        borderColor: Colors.transparent,
                        borderRadius: 100.0,
                        buttonSize: 40.0,
                        fillColor: widget!.selectsidebar == 2
                            ? Color(0x2000613A)
                            : Color(0x00000000),
                        icon: Icon(
                          Icons.home_filled,
                          color: widget!.selectsidebar == 2
                              ? FlutterFlowTheme.of(context).accent1
                              : FlutterFlowTheme.of(context).secondaryText,
                          size: 24.0,
                        ),
                        onPressed: () async {
                          Get.toNamed(
                              '/home_in_projact_list_view'); // เรียกใช้การเปลี่ยนหน้าไปยังเส้นทางที่ต้องการ
                        },
                      ),
                      Text(
                        'บ้าน',
                        style: TextStyle(
                          color: widget!.selectsidebar == 2
                              ? FlutterFlowTheme.of(context).accent1
                              : FlutterFlowTheme.of(context).secondaryText,
                          fontWeight: FontWeight.w300,
                          fontSize: 10.0,
                        ),
                      ),
                    ].divide(SizedBox(height: 4.0)),
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      FlutterFlowIconButton(
                          borderColor: Colors.transparent,
                          borderRadius: 100.0,
                          buttonSize: 40.0,
                          fillColor: widget!.selectsidebar == 3
                              ? Color(0x2000613A)
                              : Color(0x00000000),
                          icon: Icon(
                            Icons.verified_rounded,
                            color: widget!.selectsidebar == 3
                                ? FlutterFlowTheme.of(context).accent1
                                : FlutterFlowTheme.of(context).secondaryText,
                            size: 24.0,
                          ),
                          onPressed: () async {
                            Get.toNamed(
                                '/approved_list_view'); // เรียกใช้งานเส้นทางที่กำหนดไว้
                          }),
                      Text(
                        'รายการอนุมัติ',
                        style: TextStyle(
                          color: widget!.selectsidebar == 3
                              ? FlutterFlowTheme.of(context).accent1
                              : FlutterFlowTheme.of(context).secondaryText,
                          fontWeight: FontWeight.w300,
                          fontSize: 10.0,
                        ),
                      ),
                    ].divide(SizedBox(height: 4.0)),
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      FlutterFlowIconButton(
                          borderColor: Colors.transparent,
                          borderRadius: 100.0,
                          buttonSize: 40.0,
                          fillColor: widget!.selectsidebar == 4
                              ? Color(0x2000613A)
                              : Color(0x00000000),
                          icon: Icon(
                            Icons.directions_car_rounded,
                            color: widget!.selectsidebar == 4
                                ? FlutterFlowTheme.of(context).accent1
                                : FlutterFlowTheme.of(context).secondaryText,
                            size: 24.0,
                          ),
                          onPressed: () async {
                            Get.toNamed(
                                '/residents_cars'); // เรียกใช้งานเส้นทางนี้
                          }),
                      Text(
                        'รถยนต์ลูกบ้าน',
                        style: TextStyle(
                          color: widget!.selectsidebar == 4
                              ? FlutterFlowTheme.of(context).accent1
                              : FlutterFlowTheme.of(context).secondaryText,
                          fontWeight: FontWeight.w300,
                          fontSize: 10.0,
                        ),
                      ),
                    ].divide(SizedBox(height: 4.0)),
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      FlutterFlowIconButton(
                          borderColor: Colors.transparent,
                          borderRadius: 100.0,
                          buttonSize: 40.0,
                          fillColor: widget!.selectsidebar == 8
                              ? Color(0x2000613A)
                              : Color(0x00000000),
                          icon: Icon(
                            Icons.local_taxi,
                            color: widget!.selectsidebar == 8
                                ? FlutterFlowTheme.of(context).accent1
                                : FlutterFlowTheme.of(context).secondaryText,
                            size: 24.0,
                          ),
                          onPressed: () async {
                            Get.toNamed(
                                '/externalvehicle'); // เรียกใช้เส้นทางโดยใช้ GetX
                          }),
                      Text(
                        'รถยนต์ผู้มาติดต่อ',
                        style: TextStyle(
                          color: widget!.selectsidebar == 8
                              ? FlutterFlowTheme.of(context).accent1
                              : FlutterFlowTheme.of(context).secondaryText,
                          fontWeight: FontWeight.w300,
                          fontSize: 10.0,
                        ),
                      ),
                    ].divide(SizedBox(height: 4.0)),
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      FlutterFlowIconButton(
                          borderColor: Colors.transparent,
                          borderRadius: 100.0,
                          buttonSize: 40.0,
                          fillColor: widget!.selectsidebar == 5
                              ? Color(0x2000613A)
                              : Color(0x00000000),
                          icon: Icon(
                            Icons.account_circle,
                            color: widget!.selectsidebar == 5
                                ? FlutterFlowTheme.of(context).accent1
                                : FlutterFlowTheme.of(context).secondaryText,
                            size: 24.0,
                          ),
                          onPressed: () async {
                            Get.toNamed(
                                '/user_list_view');
                          }),
                      Text(
                        'ผู้ใช้งาน',
                        style: TextStyle(
                          color: widget!.selectsidebar == 5
                              ? FlutterFlowTheme.of(context).accent1
                              : FlutterFlowTheme.of(context).secondaryText,
                          fontWeight: FontWeight.w300,
                          fontSize: 10.0,
                        ),
                      ),
                    ].divide(SizedBox(height: 4.0)),
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      FlutterFlowIconButton(
                        borderColor: Colors.transparent,
                        borderRadius: 100.0,
                        buttonSize: 40.0,
                        fillColor: widget!.selectsidebar == 7
                            ? Color(0x2000613A)
                            : Color(0x00000000),
                        icon: Icon(
                          Icons.add_home_work_rounded,
                          color: widget!.selectsidebar == 7
                              ? FlutterFlowTheme.of(context).accent1
                              : FlutterFlowTheme.of(context).secondaryText,
                          size: 24.0,
                        ),
                        onPressed: () async {
                          Get.toNamed('manageproject');
                        },
                      ),
                      Text(
                        'โครงการ',
                        style: TextStyle(
                          color: widget!.selectsidebar == 7
                              ? FlutterFlowTheme.of(context).accent1
                              : FlutterFlowTheme.of(context).secondaryText,
                          fontWeight: FontWeight.w300,
                          fontSize: 10.0,
                        ),
                      ),
                    ].divide(SizedBox(height: 4.0)),
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      FlutterFlowIconButton(
                        borderColor: Colors.transparent,
                        borderRadius: 100.0,
                        buttonSize: 40.0,
                        fillColor: widget!.selectsidebar == 6
                            ? Color(0x2000613A)
                            : Color(0x00000000),
                        icon: Icon(
                          Icons.settings_rounded,
                          color: widget!.selectsidebar == 6
                              ? FlutterFlowTheme.of(context).accent1
                              : FlutterFlowTheme.of(context).secondaryText,
                          size: 24.0,
                        ),
                        onPressed: () async {
                          Get.toNamed('settingListView');
                        },
                      ),
                      Text(
                        'ตั้งค่า',
                        style: TextStyle(
                          color: widget.selectsidebar == 6
                              ? FlutterFlowTheme.of(context).accent1
                              : FlutterFlowTheme.of(context).secondaryText,
                          fontWeight: FontWeight.w300,
                          fontSize: 10.0,
                        ),
                      ),
                    ].divide(SizedBox(height: 4.0)),
                  ),
                ].divide(SizedBox(height: 16.0)),
              ),
            ),
          ].addToStart(SizedBox(height: 8.0)).addToEnd(SizedBox(height: 8.0)),
        ),
      ),
    );
  }
}
