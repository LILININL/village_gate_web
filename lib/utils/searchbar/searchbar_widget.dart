import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'searchbar_model.dart';
export 'searchbar_model.dart';

class SearchbarWidget extends StatefulWidget {
  const SearchbarWidget({super.key});

  @override
  State<SearchbarWidget> createState() => _SearchbarWidgetState();
}

class _SearchbarWidgetState extends State<SearchbarWidget>
    with TickerProviderStateMixin {
  late SearchbarModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SearchbarModel());

    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();

    animationsMap.addAll({
      'iconButtonOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          RotateEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 580.0.ms,
            begin: -0.5,
            end: 0.0,
          ),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 580.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 450),
      curve: Curves.easeInOut,
      width: _model.searchexpand! ? 250.0 : 48.0,
      height: 48.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).primaryBackground,
        borderRadius: BorderRadius.circular(100.0),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          if (_model.searchexpand == true)
            Expanded(
              child: TextFormField(
                controller: _model.textController,
                focusNode: _model.textFieldFocusNode,
                autofocus: true,
                obscureText: false,
                decoration: InputDecoration(
                  alignLabelWithHint: false,
                  hintText: 'ค้นหา ...',
                  hintStyle: FlutterFlowTheme.of(context).bodyLarge.override(
                        fontFamily:
                            FlutterFlowTheme.of(context).bodyLargeFamily,
                        color: FlutterFlowTheme.of(context).secondaryText,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w300,
                        useGoogleFonts: GoogleFonts.asMap().containsKey(
                            FlutterFlowTheme.of(context).bodyLargeFamily),
                      ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(100.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(100.0),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(100.0),
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(100.0),
                  ),
                  contentPadding:
                      EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 0.0, 0.0),
                  prefixIcon: Icon(
                    Icons.search_rounded,
                    color: FlutterFlowTheme.of(context).accent1,
                    size: 20.0,
                  ),
                ),
                style: FlutterFlowTheme.of(context).bodyLarge.override(
                      fontFamily: FlutterFlowTheme.of(context).bodyLargeFamily,
                      color: FlutterFlowTheme.of(context).primaryText,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.w300,
                      useGoogleFonts: GoogleFonts.asMap().containsKey(
                          FlutterFlowTheme.of(context).bodyLargeFamily),
                    ),
                cursorColor: FlutterFlowTheme.of(context).primary,
                validator: _model.textControllerValidator.asValidator(context),
              ),
            ),
          if (_model.searchexpand == true)
            FlutterFlowIconButton(
              borderRadius: 100.0,
              buttonSize: 48.0,
              icon: Icon(
                Icons.keyboard_arrow_right_rounded,
                color: FlutterFlowTheme.of(context).accent1,
                size: 20.0,
              ),
              onPressed: () async {
                _model.searchexpand = false;
                _model.updatePage(() {});
              },
            ).animateOnPageLoad(
                animationsMap['iconButtonOnPageLoadAnimation']!),
          if (_model.searchexpand == false)
            FlutterFlowIconButton(
              borderRadius: 100.0,
              buttonSize: 48.0,
              icon: Icon(
                Icons.search_rounded,
                color: FlutterFlowTheme.of(context).accent1,
                size: 20.0,
              ),
              onPressed: () async {
                _model.searchexpand = true;
                _model.updatePage(() {});
              },
            ),
        ],
      ),
    );
  }
}
