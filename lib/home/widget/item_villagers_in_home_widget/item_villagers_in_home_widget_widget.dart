import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/utils/more_user_inhome/more_user_inhome_widget.dart';
import 'package:aligned_dialog/aligned_dialog.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'item_villagers_in_home_widget_model.dart';
export 'item_villagers_in_home_widget_model.dart';

class ItemVillagersInHomeWidgetWidget extends StatefulWidget {
  const ItemVillagersInHomeWidgetWidget({
    super.key,
    String? fullname,
    String? datetime,
    this.icon,
    this.colorstatus,
  })  : this.fullname = fullname ?? 'fullname',
        this.datetime = datetime ?? 'datetime';

  final String fullname;
  final String datetime;
  final Widget? icon;
  final Color? colorstatus;

  @override
  State<ItemVillagersInHomeWidgetWidget> createState() =>
      _ItemVillagersInHomeWidgetWidgetState();
}

class _ItemVillagersInHomeWidgetWidgetState
    extends State<ItemVillagersInHomeWidgetWidget> {
  late ItemVillagersInHomeWidgetModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ItemVillagersInHomeWidgetModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) => Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xE6FFFFFF),
          image: DecorationImage(
            fit: BoxFit.contain,
            alignment: AlignmentDirectional(1.0, 1.0),
            image: Image.asset(
              'assets/images/user1.png',
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
                          color: widget!.colorstatus,
                          shape: BoxShape.circle,
                        ),
                        child: Align(
                          alignment: AlignmentDirectional(0.0, 0.0),
                          child: widget!.icon!,
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(-1.0, 0.0),
                        child: Text(
                          widget!.fullname,
                          maxLines: 1,
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .bodyMediumFamily,
                                letterSpacing: 0.0,
                                useGoogleFonts: GoogleFonts.asMap().containsKey(
                                    FlutterFlowTheme.of(context)
                                        .bodyMediumFamily),
                              ),
                        ),
                      ),
                    ].divide(SizedBox(width: 8.0)),
                  ),
                ],
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
                                FlutterFlowTheme.of(context).labelSmallFamily),
                          ),
                    ),
                  ),
                  Builder(
                    builder: (context) => InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        showAlignedDialog(
                          barrierDismissible: false,
                          context: context,
                          isGlobal: false,
                          avoidOverflow: false,
                          targetAnchor: AlignmentDirectional(0.0, 0.0)
                              .resolve(Directionality.of(context)),
                          followerAnchor: AlignmentDirectional(1.0, -1.0)
                              .resolve(Directionality.of(context)),
                          builder: (dialogContext) {
                            return Material(
                              color: Colors.transparent,
                              child: MoreUserInhomeWidget(),
                            );
                          },
                        );
                      },
                      child: Icon(
                        Icons.keyboard_control,
                        color: FlutterFlowTheme.of(context).secondaryText,
                        size: 24.0,
                      ),
                    ),
                  ),
                ],
              ),
            ].divide(SizedBox(height: 8.0)),
          ),
        ),
      ),
    );
  }
}
