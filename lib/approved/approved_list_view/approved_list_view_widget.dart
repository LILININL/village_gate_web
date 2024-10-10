import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/home/widget/item_villagers_in_home_widget/item_villagers_in_home_widget_widget.dart';
import '/utils/searchbar/searchbar_widget.dart';
import '/utils/sidebar/sidebar_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'approved_list_view_model.dart';
export 'approved_list_view_model.dart';

class ApprovedListViewWidget extends StatefulWidget {
  const ApprovedListViewWidget({super.key});

  @override
  State<ApprovedListViewWidget> createState() => _ApprovedListViewWidgetState();
}

class _ApprovedListViewWidgetState extends State<ApprovedListViewWidget> {
  late ApprovedListViewModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ApprovedListViewModel());

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
                  selectsidebar: 3,
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
                                'รายการขออนุมัติ',
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
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Theme(
                                        data: ThemeData(
                                          checkboxTheme: CheckboxThemeData(
                                            visualDensity:
                                                VisualDensity.compact,
                                            materialTapTargetSize:
                                                MaterialTapTargetSize
                                                    .shrinkWrap,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                          ),
                                          unselectedWidgetColor:
                                              FlutterFlowTheme.of(context)
                                                  .secondaryBackground,
                                        ),
                                        child: Checkbox(
                                          value: _model.checkboxValue1 ??=
                                              false,
                                          onChanged: (newValue) async {
                                            safeSetState(() => _model
                                                .checkboxValue1 = newValue!);
                                            if (newValue!) {
                                              safeSetState(() {
                                                _model.checkboxValue3 = false;
                                                _model.checkboxValue2 = false;
                                                _model.checkboxValue4 = false;
                                              });
                                            }
                                          },
                                          side: BorderSide(
                                            width: 2,
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                          ),
                                          activeColor:
                                              FlutterFlowTheme.of(context)
                                                  .primaryBackground,
                                          checkColor:
                                              FlutterFlowTheme.of(context)
                                                  .primaryBackground,
                                        ),
                                      ),
                                      Text(
                                        'แสดงทั้งหมด',
                                        style: FlutterFlowTheme.of(context)
                                            .bodySmall
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .bodySmallFamily,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBackground,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w300,
                                              useGoogleFonts:
                                                  GoogleFonts.asMap()
                                                      .containsKey(
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodySmallFamily),
                                            ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Theme(
                                        data: ThemeData(
                                          checkboxTheme: CheckboxThemeData(
                                            visualDensity:
                                                VisualDensity.compact,
                                            materialTapTargetSize:
                                                MaterialTapTargetSize
                                                    .shrinkWrap,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                          ),
                                          unselectedWidgetColor:
                                              FlutterFlowTheme.of(context)
                                                  .secondaryBackground,
                                        ),
                                        child: Checkbox(
                                          value: _model.checkboxValue2 ??=
                                              false,
                                          onChanged: (newValue) async {
                                            safeSetState(() => _model
                                                .checkboxValue2 = newValue!);
                                            if (newValue!) {
                                              safeSetState(() {
                                                _model.checkboxValue3 = false;
                                                _model.checkboxValue4 = false;
                                                _model.checkboxValue1 = false;
                                              });
                                            }
                                          },
                                          side: BorderSide(
                                            width: 2,
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                          ),
                                          activeColor:
                                              FlutterFlowTheme.of(context)
                                                  .primaryBackground,
                                          checkColor:
                                              FlutterFlowTheme.of(context)
                                                  .primaryBackground,
                                        ),
                                      ),
                                      Text(
                                        'รออนุมัติ',
                                        style: FlutterFlowTheme.of(context)
                                            .bodySmall
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .bodySmallFamily,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBackground,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w300,
                                              useGoogleFonts:
                                                  GoogleFonts.asMap()
                                                      .containsKey(
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodySmallFamily),
                                            ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Theme(
                                        data: ThemeData(
                                          checkboxTheme: CheckboxThemeData(
                                            visualDensity:
                                                VisualDensity.compact,
                                            materialTapTargetSize:
                                                MaterialTapTargetSize
                                                    .shrinkWrap,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                          ),
                                          unselectedWidgetColor:
                                              FlutterFlowTheme.of(context)
                                                  .secondaryBackground,
                                        ),
                                        child: Checkbox(
                                          value: _model.checkboxValue3 ??=
                                              false,
                                          onChanged: (newValue) async {
                                            safeSetState(() => _model
                                                .checkboxValue3 = newValue!);
                                            if (newValue!) {
                                              safeSetState(() {
                                                _model.checkboxValue4 = false;
                                                _model.checkboxValue1 = false;
                                                _model.checkboxValue2 = false;
                                              });
                                            }
                                          },
                                          side: BorderSide(
                                            width: 2,
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                          ),
                                          activeColor:
                                              FlutterFlowTheme.of(context)
                                                  .primaryBackground,
                                          checkColor:
                                              FlutterFlowTheme.of(context)
                                                  .primaryBackground,
                                        ),
                                      ),
                                      Text(
                                        'อนุมัติ',
                                        style: FlutterFlowTheme.of(context)
                                            .bodySmall
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .bodySmallFamily,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBackground,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w300,
                                              useGoogleFonts:
                                                  GoogleFonts.asMap()
                                                      .containsKey(
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodySmallFamily),
                                            ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Theme(
                                        data: ThemeData(
                                          checkboxTheme: CheckboxThemeData(
                                            visualDensity:
                                                VisualDensity.compact,
                                            materialTapTargetSize:
                                                MaterialTapTargetSize
                                                    .shrinkWrap,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                          ),
                                          unselectedWidgetColor:
                                              FlutterFlowTheme.of(context)
                                                  .secondaryBackground,
                                        ),
                                        child: Checkbox(
                                          value: _model.checkboxValue4 ??=
                                              false,
                                          onChanged: (newValue) async {
                                            safeSetState(() => _model
                                                .checkboxValue4 = newValue!);
                                            if (newValue!) {
                                              safeSetState(() {
                                                _model.checkboxValue3 = false;
                                                _model.checkboxValue1 = false;
                                                _model.checkboxValue2 = false;
                                              });
                                            }
                                          },
                                          side: BorderSide(
                                            width: 2,
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                          ),
                                          activeColor:
                                              FlutterFlowTheme.of(context)
                                                  .primaryBackground,
                                          checkColor:
                                              FlutterFlowTheme.of(context)
                                                  .primaryBackground,
                                        ),
                                      ),
                                      Text(
                                        'ไม่อนุมัติ',
                                        style: FlutterFlowTheme.of(context)
                                            .bodySmall
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .bodySmallFamily,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBackground,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w300,
                                              useGoogleFonts:
                                                  GoogleFonts.asMap()
                                                      .containsKey(
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodySmallFamily),
                                            ),
                                      ),
                                    ],
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
                      itemCount: 23,
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
                          () => wrapWithModel(
                                model: _model.itemVillagersInHomeWidgetModel13,
                                updateCallback: () => safeSetState(() {}),
                                child: ItemVillagersInHomeWidgetWidget(
                                  fullname: 'คุณ ธนัชชา วงศ์สุวรรณ',
                                  datetime: '24/09/67 - 15:00 น.',
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
                                model: _model.itemVillagersInHomeWidgetModel14,
                                updateCallback: () => safeSetState(() {}),
                                child: ItemVillagersInHomeWidgetWidget(
                                  fullname: 'คุณ พัชราภรณ์ ศรีวิไล',
                                  datetime: '24/09/67 - 15:00 น.',
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
                                model: _model.itemVillagersInHomeWidgetModel15,
                                updateCallback: () => safeSetState(() {}),
                                child: ItemVillagersInHomeWidgetWidget(
                                  fullname: 'คุณ ชลธิชา เอกชัย',
                                  datetime: '24/09/67 - 15:00 น.',
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
                                model: _model.itemVillagersInHomeWidgetModel16,
                                updateCallback: () => safeSetState(() {}),
                                child: ItemVillagersInHomeWidgetWidget(
                                  fullname: 'คุณ พัชราภรณ์ ศรีวิไล',
                                  datetime: '24/09/67 - 11:00 น.',
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
                                model: _model.itemVillagersInHomeWidgetModel17,
                                updateCallback: () => safeSetState(() {}),
                                child: ItemVillagersInHomeWidgetWidget(
                                  fullname: 'คุณ ณัฐริกา กัลปพฤกษ์',
                                  datetime: '24/09/67 - 10:43 น.',
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
                                model: _model.itemVillagersInHomeWidgetModel18,
                                updateCallback: () => safeSetState(() {}),
                                child: ItemVillagersInHomeWidgetWidget(
                                  fullname: 'คุณ จิรัฎฐา รัตนรุ่งเรือง',
                                  datetime: '24/09/67 - 08:50 น.',
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
                                model: _model.itemVillagersInHomeWidgetModel19,
                                updateCallback: () => safeSetState(() {}),
                                child: ItemVillagersInHomeWidgetWidget(
                                  fullname: 'คุณ วรัญญา สิงห์ทอง',
                                  datetime: '24/09/67 - 08:12 น.',
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
                                model: _model.itemVillagersInHomeWidgetModel20,
                                updateCallback: () => safeSetState(() {}),
                                child: ItemVillagersInHomeWidgetWidget(
                                  fullname: 'คุณ ธัญลักษณ์ กุลมาตย์',
                                  datetime: '24/09/67 - 08:12 น.',
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
                                model: _model.itemVillagersInHomeWidgetModel21,
                                updateCallback: () => safeSetState(() {}),
                                child: ItemVillagersInHomeWidgetWidget(
                                  fullname: 'คุณ ณัฐวรา ธีรวัฒน์',
                                  datetime: '23/09/67 - 16:00 น.',
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
                                model: _model.itemVillagersInHomeWidgetModel22,
                                updateCallback: () => safeSetState(() {}),
                                child: ItemVillagersInHomeWidgetWidget(
                                  fullname: 'คุณ กฤติกา กัลปพฤกษ์',
                                  datetime: '23/09/67 - 15:00 น.',
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
                                model: _model.itemVillagersInHomeWidgetModel23,
                                updateCallback: () => safeSetState(() {}),
                                child: ItemVillagersInHomeWidgetWidget(
                                  fullname: 'คุณ อัญชลี สุวรรณบูรณ์',
                                  datetime: '23/09/67 - 12:10 น.',
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
