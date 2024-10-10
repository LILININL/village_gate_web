import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/utils/title_widget/title_widget_widget.dart';
import 'dart:math';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'pdpa_model.dart';
export 'pdpa_model.dart';

class PdpaWidget extends StatefulWidget {
  const PdpaWidget({super.key});

  @override
  State<PdpaWidget> createState() => _PdpaWidgetState();
}

class _PdpaWidgetState extends State<PdpaWidget> with TickerProviderStateMixin {
  late PdpaModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PdpaModel());

    animationsMap.addAll({
      'iconOnPageLoadAnimation': AnimationInfo(
        loop: true,
        reverse: true,
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          TintEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 1460.0.ms,
            color: FlutterFlowTheme.of(context).secondaryBackground,
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
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(0.0),
        child: BackdropFilter(
          filter: ImageFilter.blur(
            sigmaX: 10.0,
            sigmaY: 10.0,
          ),
          child: Align(
            alignment: AlignmentDirectional(0.0, 0.0),
            child: Container(
              width: 400.0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).primaryBackground,
                borderRadius: BorderRadius.circular(32.0),
              ),
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    wrapWithModel(
                      model: _model.titleWidgetModel,
                      updateCallback: () => safeSetState(() {}),
                      child: TitleWidgetWidget(
                        title: 'นโยบายความเป็นส่วนตัว',
                      ),
                    ),
                    Icon(
                      Icons.verified_user_outlined,
                      color: FlutterFlowTheme.of(context).accent1,
                      size: 60.0,
                    ).animateOnPageLoad(
                        animationsMap['iconOnPageLoadAnimation']!),
                    ListView(
                      padding: EdgeInsets.zero,
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      children: [
                        Text(
                          'การขอความยินยอมในการรวบรวมข้อมูลส่วนบุคคล',
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
                        Text(
                          'เพื่อให้สอดคล้องกับกฎหมายคุ้มครองข้อมูลส่วนบุคคล และเพื่อให้เราสามารถให้บริการที่ดีที่สุดแก่ท่านได้ บริษัท [ชื่อบริษัท] มีความจำเป็นต้องเก็บรวบรวมข้อมูลส่วนบุคคลของท่าน เราขอความยินยอมจากท่านในการเก็บรวบรวมข้อมูลส่วนบุคคลเพื่อวัตถุประสงค์ดังต่อไปนี้:\nเพื่อการให้บริการและการสนับสนุนต่างๆ ที่เกี่ยวข้อง\nเพื่อพัฒนาผลิตภัณฑ์และบริการของเรา\nเพื่อวิเคราะห์และประเมินการใช้บริการของท่าน\nเพื่อจัดส่งข้อมูลข่าวสาร ข้อเสนอพิเศษ และโปรโมชันที่อาจตรงกับความสนใจของท่าน',
                          textAlign: TextAlign.start,
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .bodyMediumFamily,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.w300,
                                useGoogleFonts: GoogleFonts.asMap().containsKey(
                                    FlutterFlowTheme.of(context)
                                        .bodyMediumFamily),
                                lineHeight: 1.5,
                              ),
                        ),
                        Text(
                          'ข้อมูลส่วนบุคคลที่เราจะเก็บรวบรวมได้แก่:\nชื่อ-นามสกุล\nข้อมูลติดต่อ เช่น อีเมล หมายเลขโทรศัพท์\nข้อมูลการใช้งานเว็บไซต์หรือแอปพลิเคชัน\nโปรดอ่านและพิจารณานโยบายความเป็นส่วนตัวของเราที่ [ลิงก์นโยบายความเป็นส่วนตัว] เพื่อดูรายละเอียดเพิ่มเติมเกี่ยวกับการเก็บรักษาและการใช้ข้อมูลส่วนบุคคลของท่าน',
                          textAlign: TextAlign.start,
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .bodyMediumFamily,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.w300,
                                useGoogleFonts: GoogleFonts.asMap().containsKey(
                                    FlutterFlowTheme.of(context)
                                        .bodyMediumFamily),
                                lineHeight: 1.5,
                              ),
                        ),
                      ].divide(SizedBox(height: 24.0)),
                    ),
                  ].divide(SizedBox(height: 16.0)),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
