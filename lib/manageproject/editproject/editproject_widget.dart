import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/manageproject/add_staff/add_staff_widget.dart';
import '/utils/delet/delet_widget.dart';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'editproject_model.dart';
export 'editproject_model.dart';

class EditprojectWidget extends StatefulWidget {
  const EditprojectWidget({super.key});

  @override
  State<EditprojectWidget> createState() => _EditprojectWidgetState();
}

class _EditprojectWidgetState extends State<EditprojectWidget>
    with TickerProviderStateMixin {
  late EditprojectModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EditprojectModel());

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
      width: _model.searchexpand! ? 240.0 : 48.0,
      height: 48.0,
      decoration: BoxDecoration(
        color: Color(0x19227A4C),
        borderRadius: BorderRadius.circular(100.0),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          if (_model.searchexpand == true)
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Builder(
                  builder: (context) => FlutterFlowIconButton(
                    borderRadius: 100.0,
                    buttonSize: 48.0,
                    icon: Icon(
                      Icons.person_add_alt_1,
                      color: FlutterFlowTheme.of(context).accent1,
                      size: 20.0,
                    ),
                    onPressed: () async {
                      showDialog(
                        barrierDismissible: false,
                        context: context,
                        builder: (dialogContext) {
                          return Dialog(
                            elevation: 0,
                            insetPadding: EdgeInsets.zero,
                            backgroundColor: Colors.transparent,
                            alignment: AlignmentDirectional(0.0, 0.0)
                                .resolve(Directionality.of(context)),
                            child: AddStaffWidget(),
                          );
                        },
                      );
                    },
                  ),
                ),
                FlutterFlowIconButton(
                  borderColor: Colors.transparent,
                  borderRadius: 100.0,
                  buttonSize: 48.0,
                  icon: Icon(
                    Icons.mode_edit,
                    color: FlutterFlowTheme.of(context).accent1,
                    size: 20.0,
                  ),
                  onPressed: () {
                    print('IconButton pressed ...');
                  },
                ),
                Builder(
                  builder: (context) => FlutterFlowIconButton(
                    borderRadius: 100.0,
                    buttonSize: 48.0,
                    icon: Icon(
                      Icons.delete_outlined,
                      color: FlutterFlowTheme.of(context).accent1,
                      size: 20.0,
                    ),
                    onPressed: () async {
                      showDialog(
                        barrierDismissible: false,
                        context: context,
                        builder: (dialogContext) {
                          return Dialog(
                            elevation: 0,
                            insetPadding: EdgeInsets.zero,
                            backgroundColor: Colors.transparent,
                            alignment: AlignmentDirectional(0.0, 0.0)
                                .resolve(Directionality.of(context)),
                            child: DeletWidget(),
                          );
                        },
                      );
                    },
                  ),
                ),
              ].divide(SizedBox(width: 16.0)).addToEnd(SizedBox(width: 16.0)),
            ),
          Container(
            width: 48.0,
            height: 48.0,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
            ),
            child: Stack(
              children: [
                if (_model.searchexpand == false)
                  FlutterFlowIconButton(
                    borderRadius: 100.0,
                    buttonSize: 48.0,
                    fillColor: Color(0x5C227A4C),
                    icon: Icon(
                      Icons.keyboard_control,
                      color: FlutterFlowTheme.of(context).accent1,
                      size: 20.0,
                    ),
                    onPressed: () async {
                      _model.searchexpand = true;
                      _model.updatePage(() {});
                    },
                  ),
                if (_model.searchexpand == true)
                  FlutterFlowIconButton(
                    borderRadius: 100.0,
                    buttonSize: 48.0,
                    fillColor: Color(0x5C227A4C),
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
              ],
            ),
          ),
        ],
      ),
    );
  }
}
