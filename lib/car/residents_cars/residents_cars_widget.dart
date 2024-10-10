import '/car/widget/item_residents_cars_widget/item_residents_cars_widget_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/utils/searchbar/searchbar_widget.dart';
import '/utils/sidebar/sidebar_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'residents_cars_model.dart';
export 'residents_cars_model.dart';

class ResidentsCarsWidget extends StatefulWidget {
  const ResidentsCarsWidget({super.key});

  @override
  State<ResidentsCarsWidget> createState() => _ResidentsCarsWidgetState();
}

class _ResidentsCarsWidgetState extends State<ResidentsCarsWidget> {
  late ResidentsCarsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ResidentsCarsModel());

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
                  selectsidebar: 4,
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
                                'รถยนต์ของลูกบ้าน',
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
                      itemCount: 15,
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
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
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
                          () => wrapWithModel(
                                model: _model.itemResidentsCarsWidgetModel15,
                                updateCallback: () => safeSetState(() {}),
                                child: ItemResidentsCarsWidgetWidget(
                                  licenseplate: 'ทะเบียน ก 331',
                                  detailcare: 'กรุงเทพมหานคร HONDA CITI สีขาว',
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  housenumber: 'บ้านเลขที่ 1/1',
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
