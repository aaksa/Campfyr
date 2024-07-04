import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'recent_trips_model.dart';
export 'recent_trips_model.dart';

class RecentTripsWidget extends StatefulWidget {
  const RecentTripsWidget({super.key});

  @override
  State<RecentTripsWidget> createState() => _RecentTripsWidgetState();
}

class _RecentTripsWidgetState extends State<RecentTripsWidget>
    with TickerProviderStateMixin {
  late RecentTripsModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RecentTripsModel());

    animationsMap.addAll({
      'containerOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 300.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 300.0.ms,
            begin: const Offset(0.0, 20.0),
            end: const Offset(0.0, 0.0),
          ),
          TiltEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 300.0.ms,
            begin: const Offset(0.698, 0),
            end: const Offset(0, 0),
          ),
        ],
      ),
    });
    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(4.0, 0.0, 4.0, 0.0),
      child: Container(
        height: 69.0,
        constraints: const BoxConstraints(
          minWidth: 350.0,
          maxWidth: double.infinity,
        ),
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
          borderRadius: BorderRadius.circular(0.0),
          border: Border.all(
            color: FlutterFlowTheme.of(context).border,
            width: 1.0,
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(18.0, 0.0, 16.0, 0.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(0.0),
                        child: SvgPicture.asset(
                          'assets/images/Icon.svg',
                          width: 26.0,
                          height: 35.0,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 67.0,
                      child: VerticalDivider(
                        width: 5.0,
                        thickness: 1.0,
                        color: FlutterFlowTheme.of(context).border,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Expanded(
              flex: 5,
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(21.0, 0.0, 10.0, 0.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'This The Trip Name',
                      maxLines: 2,
                      style: FlutterFlowTheme.of(context)
                          .headlineMedium
                          .override(
                            fontFamily: 'Roboto',
                            color: FlutterFlowTheme.of(context).highEmphasis,
                            fontSize: 14.0,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.w500,
                          ),
                    ),
                    Text(
                      '00/00/00 - 00/00/00',
                      maxLines: 1,
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Roboto',
                            color: FlutterFlowTheme.of(context).mediumEmphasis,
                            fontSize: 12.0,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.normal,
                          ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 104.0,
              child: VerticalDivider(
                width: 2.0,
                thickness: 1.0,
                color: FlutterFlowTheme.of(context).border,
              ),
            ),
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: FlutterFlowIconButton(
                      borderWidth: 1.0,
                      buttonSize: double.infinity,
                      icon: Icon(
                        Icons.more_vert,
                        color: FlutterFlowTheme.of(context).mediumEmphasis,
                        size: 18.0,
                      ),
                      onPressed: () {
                        print('IconButton pressed ...');
                      },
                    ),
                  ),
                  Divider(
                    height: 2.0,
                    thickness: 1.0,
                    color: FlutterFlowTheme.of(context).border,
                  ),
                  Expanded(
                    child: FlutterFlowIconButton(
                      borderWidth: 1.0,
                      buttonSize: double.infinity,
                      icon: Icon(
                        Icons.navigate_next,
                        color: FlutterFlowTheme.of(context).mediumEmphasis,
                        size: 18.0,
                      ),
                      onPressed: () {
                        print('IconButton pressed ...');
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ).animateOnPageLoad(animationsMap['containerOnPageLoadAnimation']!),
    );
  }
}
