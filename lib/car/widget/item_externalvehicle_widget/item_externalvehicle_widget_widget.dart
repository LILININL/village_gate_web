import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'item_externalvehicle_widget_model.dart';
export 'item_externalvehicle_widget_model.dart';

class ItemExternalvehicleWidgetWidget extends StatefulWidget {
  const ItemExternalvehicleWidgetWidget({
    super.key,
    String? licenseplate,
    String? detailcare,
    String? datetime,
    this.color,
  })  : this.licenseplate = licenseplate ?? 'licenseplate',
        this.detailcare = detailcare ?? 'detailcare',
        this.datetime = datetime ?? 'datetime';

  final String licenseplate;
  final String detailcare;
  final String datetime;
  final Color? color;

  @override
  State<ItemExternalvehicleWidgetWidget> createState() =>
      _ItemExternalvehicleWidgetWidgetState();
}

class _ItemExternalvehicleWidgetWidgetState
    extends State<ItemExternalvehicleWidgetWidget> {
  late ItemExternalvehicleWidgetModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ItemExternalvehicleWidgetModel());

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
      decoration: BoxDecoration(
        color: Color(0xE6FFFFFF),
        image: DecorationImage(
          fit: BoxFit.contain,
          alignment: AlignmentDirectional(1.0, 1.0),
          image: Image.asset(
            'assets/images/car.png',
          ).image,
        ),
        borderRadius: BorderRadius.circular(24.0),
        border: Border.all(
          color: FlutterFlowTheme.of(context).primaryBackground,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 24.0,
                      height: 24.0,
                      decoration: BoxDecoration(
                        color: widget!.color,
                        shape: BoxShape.circle,
                      ),
                      child: Align(
                        alignment: AlignmentDirectional(0.0, 0.0),
                        child: Icon(
                          Icons.directions_car_rounded,
                          color: FlutterFlowTheme.of(context).primaryBackground,
                          size: 12.0,
                        ),
                      ),
                    ),
                    Text(
                      widget!.licenseplate,
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily:
                                FlutterFlowTheme.of(context).bodyMediumFamily,
                            letterSpacing: 0.0,
                            useGoogleFonts: GoogleFonts.asMap().containsKey(
                                FlutterFlowTheme.of(context).bodyMediumFamily),
                          ),
                    ),
                  ].divide(SizedBox(width: 8.0)),
                ),
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget!.detailcare,
                  maxLines: 1,
                  style: FlutterFlowTheme.of(context).bodySmall.override(
                        fontFamily:
                            FlutterFlowTheme.of(context).bodySmallFamily,
                        letterSpacing: 0.0,
                        useGoogleFonts: GoogleFonts.asMap().containsKey(
                            FlutterFlowTheme.of(context).bodySmallFamily),
                      ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Align(
                      alignment: AlignmentDirectional(0.0, 0.0),
                      child: Text(
                        widget!.datetime,
                        textAlign: TextAlign.center,
                        maxLines: 1,
                        style: FlutterFlowTheme.of(context).labelSmall.override(
                              fontFamily:
                                  FlutterFlowTheme.of(context).labelSmallFamily,
                              letterSpacing: 0.0,
                              useGoogleFonts: GoogleFonts.asMap().containsKey(
                                  FlutterFlowTheme.of(context)
                                      .labelSmallFamily),
                            ),
                      ),
                    ),
                  ],
                ),
              ].divide(SizedBox(height: 4.0)),
            ),
          ].divide(SizedBox(height: 8.0)),
        ),
      ),
    );
  }
}
