import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/user/widget/item_user_in_home_widget/item_user_in_home_widget_widget.dart';
import '/utils/searchbar/searchbar_widget.dart';
import '/utils/sidebar/sidebar_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'user_list_view_model.dart';
export 'user_list_view_model.dart';
import 'package:get/get.dart';

class UserListViewWidget extends StatefulWidget {
  const UserListViewWidget({super.key});

  @override
  State<UserListViewWidget> createState() => _UserListViewWidgetState();
}

class _UserListViewWidgetState extends State<UserListViewWidget> {
  late UserListViewModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => UserListViewModel());

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
                  selectsidebar: 5,
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
                                'ผู้ใช้งาน',
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
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      wrapWithModel(
                                        model: _model.searchbarModel,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: SearchbarWidget(),
                                      ),
                                    ].divide(SizedBox(width: 16.0)),
                                  ),
                                ),
                              ].divide(SizedBox(height: 16.0)),
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
                      itemCount: 24,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return [
                          () => InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  Get.toNamed('user_detail_list_view');
                                },
                                child: wrapWithModel(
                                  model: _model.itemUserInHomeWidgetModel1,
                                  updateCallback: () => safeSetState(() {}),
                                  child: ItemUserInHomeWidgetWidget(
                                    fullname: 'คุณ ณิชาภัทร สุนทรวัฒน์',
                                    phone: '0912345678',
                                  ),
                                ),
                              ),
                          () => wrapWithModel(
                                model: _model.itemUserInHomeWidgetModel2,
                                updateCallback: () => safeSetState(() {}),
                                child: ItemUserInHomeWidgetWidget(
                                  fullname: 'คุณ ณิชาภัทร กิตติศักดิ์',
                                  phone: '0912345679',
                                ),
                              ),
                          () => wrapWithModel(
                                model: _model.itemUserInHomeWidgetModel3,
                                updateCallback: () => safeSetState(() {}),
                                child: ItemUserInHomeWidgetWidget(
                                  fullname: 'คุณ ปวีณา วัชรพล',
                                  phone: '0912345670',
                                ),
                              ),
                          () => wrapWithModel(
                                model: _model.itemUserInHomeWidgetModel4,
                                updateCallback: () => safeSetState(() {}),
                                child: ItemUserInHomeWidgetWidget(
                                  fullname: 'คุณ กฤษฎา สุนทรวัฒน์',
                                  phone: '0912345671',
                                ),
                              ),
                          () => wrapWithModel(
                                model: _model.itemUserInHomeWidgetModel5,
                                updateCallback: () => safeSetState(() {}),
                                child: ItemUserInHomeWidgetWidget(
                                  fullname: 'คุณ ปิยธิดา จันทร์กระจ่าง',
                                  phone: '0912345672',
                                ),
                              ),
                          () => wrapWithModel(
                                model: _model.itemUserInHomeWidgetModel6,
                                updateCallback: () => safeSetState(() {}),
                                child: ItemUserInHomeWidgetWidget(
                                  fullname: 'คุณ ธัญญลักษณ์ ศรีสุข',
                                  phone: '0912345673',
                                ),
                              ),
                          () => wrapWithModel(
                                model: _model.itemUserInHomeWidgetModel7,
                                updateCallback: () => safeSetState(() {}),
                                child: ItemUserInHomeWidgetWidget(
                                  fullname: 'คุณ อรรถพล จันทร์กระจ่าง',
                                  phone: '0912345674',
                                ),
                              ),
                          () => wrapWithModel(
                                model: _model.itemUserInHomeWidgetModel8,
                                updateCallback: () => safeSetState(() {}),
                                child: ItemUserInHomeWidgetWidget(
                                  fullname: 'คุณ ณัฐวุฒิ จันทร์เพ็ญ',
                                  phone: '0912345675',
                                ),
                              ),
                          () => wrapWithModel(
                                model: _model.itemUserInHomeWidgetModel9,
                                updateCallback: () => safeSetState(() {}),
                                child: ItemUserInHomeWidgetWidget(
                                  fullname: 'คุณ วรุตม์ รัตนเสถียร',
                                  phone: '0912345676',
                                ),
                              ),
                          () => wrapWithModel(
                                model: _model.itemUserInHomeWidgetModel10,
                                updateCallback: () => safeSetState(() {}),
                                child: ItemUserInHomeWidgetWidget(
                                  fullname: 'คุณ ธนพัฒน์ สุขสวัสดิ์',
                                  phone: '0912345677',
                                ),
                              ),
                          () => wrapWithModel(
                                model: _model.itemUserInHomeWidgetModel11,
                                updateCallback: () => safeSetState(() {}),
                                child: ItemUserInHomeWidgetWidget(
                                  fullname: 'คุณ ภัทรวดี เกียรติคุณ',
                                  phone: '0912345612',
                                ),
                              ),
                          () => wrapWithModel(
                                model: _model.itemUserInHomeWidgetModel12,
                                updateCallback: () => safeSetState(() {}),
                                child: ItemUserInHomeWidgetWidget(
                                  fullname: 'คุณ อัญชลี สุวรรณบูรณ์',
                                  phone: '0912345613',
                                ),
                              ),
                          () => wrapWithModel(
                                model: _model.itemUserInHomeWidgetModel13,
                                updateCallback: () => safeSetState(() {}),
                                child: ItemUserInHomeWidgetWidget(
                                  fullname: 'คุณ ชลธิชา อินทรกำแหง',
                                  phone: '0912345614',
                                ),
                              ),
                          () => wrapWithModel(
                                model: _model.itemUserInHomeWidgetModel14,
                                updateCallback: () => safeSetState(() {}),
                                child: ItemUserInHomeWidgetWidget(
                                  fullname: 'คุณ ธัญญลักษณ์ ศรีสุข',
                                  phone: '0912345615',
                                ),
                              ),
                          () => wrapWithModel(
                                model: _model.itemUserInHomeWidgetModel15,
                                updateCallback: () => safeSetState(() {}),
                                child: ItemUserInHomeWidgetWidget(
                                  fullname: 'คุณ วรุตม์ รัตนเสถียร',
                                  phone: '0912345617',
                                ),
                              ),
                          () => wrapWithModel(
                                model: _model.itemUserInHomeWidgetModel16,
                                updateCallback: () => safeSetState(() {}),
                                child: ItemUserInHomeWidgetWidget(
                                  fullname: 'คุณ อภิชาติ อินทรสุทธิ',
                                  phone: '0912345618',
                                ),
                              ),
                          () => wrapWithModel(
                                model: _model.itemUserInHomeWidgetModel17,
                                updateCallback: () => safeSetState(() {}),
                                child: ItemUserInHomeWidgetWidget(
                                  fullname: 'คุณ วรางคณา อินทรสุทธิ',
                                  phone: '0912345619',
                                ),
                              ),
                          () => wrapWithModel(
                                model: _model.itemUserInHomeWidgetModel18,
                                updateCallback: () => safeSetState(() {}),
                                child: ItemUserInHomeWidgetWidget(
                                  fullname: 'คุณ กานต์พิชชา สุขุม',
                                  phone: '0912345621',
                                ),
                              ),
                          () => wrapWithModel(
                                model: _model.itemUserInHomeWidgetModel19,
                                updateCallback: () => safeSetState(() {}),
                                child: ItemUserInHomeWidgetWidget(
                                  fullname: 'คุณ วรุตม์ รัตนเสถียร',
                                  phone: '0912345622',
                                ),
                              ),
                          () => wrapWithModel(
                                model: _model.itemUserInHomeWidgetModel20,
                                updateCallback: () => safeSetState(() {}),
                                child: ItemUserInHomeWidgetWidget(
                                  fullname: 'คุณ ภัทรวดี รัตนเสถียร',
                                  phone: '0912345623',
                                ),
                              ),
                          () => wrapWithModel(
                                model: _model.itemUserInHomeWidgetModel21,
                                updateCallback: () => safeSetState(() {}),
                                child: ItemUserInHomeWidgetWidget(
                                  fullname: 'คุณ ธนพัฒน์ วิเศษกุล',
                                  phone: '0912345624',
                                ),
                              ),
                          () => wrapWithModel(
                                model: _model.itemUserInHomeWidgetModel22,
                                updateCallback: () => safeSetState(() {}),
                                child: ItemUserInHomeWidgetWidget(
                                  fullname: 'คุณ กฤษฎา อัศวเมธี',
                                  phone: '0912345625',
                                ),
                              ),
                          () => wrapWithModel(
                                model: _model.itemUserInHomeWidgetModel23,
                                updateCallback: () => safeSetState(() {}),
                                child: ItemUserInHomeWidgetWidget(
                                  fullname: 'คุณ วัชรพล จันทร์มาศ ',
                                  phone: '0912345626',
                                ),
                              ),
                          () => wrapWithModel(
                                model: _model.itemUserInHomeWidgetModel24,
                                updateCallback: () => safeSetState(() {}),
                                child: ItemUserInHomeWidgetWidget(
                                  fullname: 'คุณ จักรกฤษ จันทร์มาศ ',
                                  phone: '0912345627',
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
