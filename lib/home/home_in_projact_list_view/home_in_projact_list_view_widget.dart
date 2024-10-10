import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/home/widget/addhome_widget/addhome_widget_widget.dart';
import '/home/widget/item_home_widget/item_home_widget_widget.dart';
import '/utils/searchbar/searchbar_widget.dart';
import '/utils/sidebar/sidebar_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'home_in_projact_list_view_model.dart';
export 'home_in_projact_list_view_model.dart';
import 'package:get/get.dart';

class HomeInProjactListViewWidget extends StatefulWidget {
  const HomeInProjactListViewWidget({super.key});

  @override
  State<HomeInProjactListViewWidget> createState() =>
      _HomeInProjactListViewWidgetState();
}

class _HomeInProjactListViewWidgetState
    extends State<HomeInProjactListViewWidget> {
  late HomeInProjactListViewModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomeInProjactListViewModel());

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
                  selectsidebar: 2,
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
                                'ข้อมูลบ้าน / ห้อง',
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
                                  wrapWithModel(
                                    model: _model.searchbarModel,
                                    updateCallback: () => safeSetState(() {}),
                                    child: SearchbarWidget(),
                                  ),
                                  Builder(
                                    builder: (context) => FlutterFlowIconButton(
                                      borderColor: Colors.transparent,
                                      borderRadius: 100.0,
                                      buttonSize: 48.0,
                                      fillColor: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                      icon: Icon(
                                        Icons.add_outlined,
                                        color: FlutterFlowTheme.of(context)
                                            .accent1,
                                        size: 24.0,
                                      ),
                                      onPressed: () async {
                                        showDialog(
                                          barrierDismissible: false,
                                          context: context,
                                          builder: (dialogContext) {
                                            return Dialog(
                                              elevation: 0,
                                              insetPadding: EdgeInsets.zero,
                                              backgroundColor:
                                                  Colors.transparent,
                                              alignment:
                                                  AlignmentDirectional(0.0, 0.0)
                                                      .resolve(
                                                          Directionality.of(
                                                              context)),
                                              child: AddhomeWidgetWidget(),
                                            );
                                          },
                                        );
                                      },
                                    ),
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
                      itemCount: 29,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return [
                          () => InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  Get.toNamed('home_detail_list_view');
                                },
                                child: wrapWithModel(
                                  model: _model.itemHomeWidgetModel1,
                                  updateCallback: () => safeSetState(() {}),
                                  child: ItemHomeWidgetWidget(
                                    housenumber: 'บ้านเลขที่ 1/1',
                                    numuser: '7',
                                    alley: 'ซอย 1',
                                  ),
                                ),
                              ),
                          () => wrapWithModel(
                                model: _model.itemHomeWidgetModel2,
                                updateCallback: () => safeSetState(() {}),
                                child: ItemHomeWidgetWidget(
                                  housenumber: 'บ้านเลขที่ 1/2',
                                  numuser: '3',
                                  alley: 'ซอย 1',
                                ),
                              ),
                          () => wrapWithModel(
                                model: _model.itemHomeWidgetModel3,
                                updateCallback: () => safeSetState(() {}),
                                child: ItemHomeWidgetWidget(
                                  housenumber: 'บ้านเลขที่ 1/3',
                                  numuser: '7',
                                  alley: 'ซอย 1',
                                ),
                              ),
                          () => wrapWithModel(
                                model: _model.itemHomeWidgetModel4,
                                updateCallback: () => safeSetState(() {}),
                                child: ItemHomeWidgetWidget(
                                  housenumber: 'บ้านเลขที่ 1/4',
                                  numuser: '5',
                                  alley: 'ซอย 1',
                                ),
                              ),
                          () => wrapWithModel(
                                model: _model.itemHomeWidgetModel5,
                                updateCallback: () => safeSetState(() {}),
                                child: ItemHomeWidgetWidget(
                                  housenumber: 'บ้านเลขที่ 1/5',
                                  numuser: '3',
                                  alley: 'ซอย 1',
                                ),
                              ),
                          () => wrapWithModel(
                                model: _model.itemHomeWidgetModel6,
                                updateCallback: () => safeSetState(() {}),
                                child: ItemHomeWidgetWidget(
                                  housenumber: 'บ้านเลขที่ 1/6',
                                  numuser: '2',
                                  alley: 'ซอย 2',
                                ),
                              ),
                          () => wrapWithModel(
                                model: _model.itemHomeWidgetModel7,
                                updateCallback: () => safeSetState(() {}),
                                child: ItemHomeWidgetWidget(
                                  housenumber: 'บ้านเลขที่ 1/7',
                                  numuser: '3',
                                  alley: 'ซอย 2',
                                ),
                              ),
                          () => wrapWithModel(
                                model: _model.itemHomeWidgetModel8,
                                updateCallback: () => safeSetState(() {}),
                                child: ItemHomeWidgetWidget(
                                  housenumber: 'บ้านเลขที่ 1/8',
                                  numuser: '2',
                                  alley: 'ซอย 2',
                                ),
                              ),
                          () => wrapWithModel(
                                model: _model.itemHomeWidgetModel9,
                                updateCallback: () => safeSetState(() {}),
                                child: ItemHomeWidgetWidget(
                                  housenumber: 'บ้านเลขที่ 1/9',
                                  numuser: '6',
                                  alley: 'ซอย 3',
                                ),
                              ),
                          () => wrapWithModel(
                                model: _model.itemHomeWidgetModel10,
                                updateCallback: () => safeSetState(() {}),
                                child: ItemHomeWidgetWidget(
                                  housenumber: 'บ้านเลขที่ 1/10',
                                  numuser: '1',
                                  alley: 'ซอย 3',
                                ),
                              ),
                          () => wrapWithModel(
                                model: _model.itemHomeWidgetModel11,
                                updateCallback: () => safeSetState(() {}),
                                child: ItemHomeWidgetWidget(
                                  housenumber: 'บ้านเลขที่ 1/11',
                                  numuser: '5',
                                  alley: 'ซอย 3',
                                ),
                              ),
                          () => wrapWithModel(
                                model: _model.itemHomeWidgetModel12,
                                updateCallback: () => safeSetState(() {}),
                                child: ItemHomeWidgetWidget(
                                  housenumber: 'บ้านเลขที่ 1/12',
                                  numuser: '6',
                                  alley: 'ซอย 3',
                                ),
                              ),
                          () => wrapWithModel(
                                model: _model.itemHomeWidgetModel13,
                                updateCallback: () => safeSetState(() {}),
                                child: ItemHomeWidgetWidget(
                                  housenumber: 'บ้านเลขที่ 1/13',
                                  numuser: '4',
                                  alley: 'ซอย 4',
                                ),
                              ),
                          () => wrapWithModel(
                                model: _model.itemHomeWidgetModel14,
                                updateCallback: () => safeSetState(() {}),
                                child: ItemHomeWidgetWidget(
                                  housenumber: 'บ้านเลขที่ 1/14',
                                  numuser: '2',
                                  alley: 'ซอย 4',
                                ),
                              ),
                          () => wrapWithModel(
                                model: _model.itemHomeWidgetModel15,
                                updateCallback: () => safeSetState(() {}),
                                child: ItemHomeWidgetWidget(
                                  housenumber: 'บ้านเลขที่ 1/15',
                                  numuser: '3',
                                  alley: 'ซอย 4',
                                ),
                              ),
                          () => wrapWithModel(
                                model: _model.itemHomeWidgetModel16,
                                updateCallback: () => safeSetState(() {}),
                                child: ItemHomeWidgetWidget(
                                  housenumber: 'บ้านเลขที่ 1/16',
                                  numuser: '1',
                                  alley: 'ซอย 4',
                                ),
                              ),
                          () => wrapWithModel(
                                model: _model.itemHomeWidgetModel17,
                                updateCallback: () => safeSetState(() {}),
                                child: ItemHomeWidgetWidget(
                                  housenumber: 'บ้านเลขที่ 1/17',
                                  numuser: '5',
                                  alley: 'ซอย 4',
                                ),
                              ),
                          () => wrapWithModel(
                                model: _model.itemHomeWidgetModel18,
                                updateCallback: () => safeSetState(() {}),
                                child: ItemHomeWidgetWidget(
                                  housenumber: 'บ้านเลขที่ 1/18',
                                  numuser: '5',
                                  alley: 'ซอย 5',
                                ),
                              ),
                          () => wrapWithModel(
                                model: _model.itemHomeWidgetModel19,
                                updateCallback: () => safeSetState(() {}),
                                child: ItemHomeWidgetWidget(
                                  housenumber: 'บ้านเลขที่ 1/19',
                                  numuser: '4',
                                  alley: 'ซอย 5',
                                ),
                              ),
                          () => wrapWithModel(
                                model: _model.itemHomeWidgetModel20,
                                updateCallback: () => safeSetState(() {}),
                                child: ItemHomeWidgetWidget(
                                  housenumber: 'บ้านเลขที่ 1/20',
                                  numuser: '5',
                                  alley: 'ซอย 5',
                                ),
                              ),
                          () => wrapWithModel(
                                model: _model.itemHomeWidgetModel21,
                                updateCallback: () => safeSetState(() {}),
                                child: ItemHomeWidgetWidget(
                                  housenumber: 'บ้านเลขที่ 1/21',
                                  numuser: '7',
                                  alley: 'ซอย 5',
                                ),
                              ),
                          () => wrapWithModel(
                                model: _model.itemHomeWidgetModel22,
                                updateCallback: () => safeSetState(() {}),
                                child: ItemHomeWidgetWidget(
                                  housenumber: 'บ้านเลขที่ 1/22',
                                  numuser: '5',
                                  alley: 'ซอย 5',
                                ),
                              ),
                          () => wrapWithModel(
                                model: _model.itemHomeWidgetModel23,
                                updateCallback: () => safeSetState(() {}),
                                child: ItemHomeWidgetWidget(
                                  housenumber: 'บ้านเลขที่ 1/23',
                                  numuser: '1',
                                  alley: 'ซอย 5',
                                ),
                              ),
                          () => wrapWithModel(
                                model: _model.itemHomeWidgetModel24,
                                updateCallback: () => safeSetState(() {}),
                                child: ItemHomeWidgetWidget(
                                  housenumber: 'บ้านเลขที่ 1/24',
                                  numuser: '5',
                                  alley: 'ซอย 6',
                                ),
                              ),
                          () => wrapWithModel(
                                model: _model.itemHomeWidgetModel25,
                                updateCallback: () => safeSetState(() {}),
                                child: ItemHomeWidgetWidget(
                                  housenumber: 'บ้านเลขที่ 1/25',
                                  numuser: '2',
                                  alley: 'ซอย 6',
                                ),
                              ),
                          () => wrapWithModel(
                                model: _model.itemHomeWidgetModel26,
                                updateCallback: () => safeSetState(() {}),
                                child: ItemHomeWidgetWidget(
                                  housenumber: 'บ้านเลขที่ 1/26',
                                  numuser: '3',
                                  alley: 'ซอย 6',
                                ),
                              ),
                          () => wrapWithModel(
                                model: _model.itemHomeWidgetModel27,
                                updateCallback: () => safeSetState(() {}),
                                child: ItemHomeWidgetWidget(
                                  housenumber: 'บ้านเลขที่ 1/27',
                                  numuser: '5',
                                  alley: 'ซอย 6',
                                ),
                              ),
                          () => wrapWithModel(
                                model: _model.itemHomeWidgetModel28,
                                updateCallback: () => safeSetState(() {}),
                                child: ItemHomeWidgetWidget(
                                  housenumber: 'บ้านเลขที่ 1/28',
                                  numuser: '8',
                                  alley: 'ซอย 6',
                                ),
                              ),
                          () => wrapWithModel(
                                model: _model.itemHomeWidgetModel29,
                                updateCallback: () => safeSetState(() {}),
                                child: ItemHomeWidgetWidget(
                                  housenumber: 'บ้านเลขที่ 1/29',
                                  numuser: '5',
                                  alley: 'ซอย 6',
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
