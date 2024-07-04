import '/components/nav_bar/nav_bar_widget.dart';
import '/components/recent_trips/recent_trips_widget.dart';
import '/components/upcoming_trip_card/upcoming_trip_card_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:sticky_headers/sticky_headers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'home_page_model.dart';
export 'home_page_model.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({super.key});

  @override
  State<HomePageWidget> createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  late HomePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomePageModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: Stack(
          children: [
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 70.0),
              child: SingleChildScrollView(
                primary: false,
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    StickyHeader(
                      overlapHeaders: false,
                      header: Container(
                        width: double.infinity,
                        height: 70.0,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          border: Border.all(
                            color: FlutterFlowTheme.of(context).border,
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              14.0, 0.0, 14.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(8.0),
                                child: SvgPicture.asset(
                                  'assets/images/Icon.svg',
                                  width: 27.0,
                                  height: 27.0,
                                  fit: BoxFit.contain,
                                ),
                              ),
                              Text(
                                'CAMPFYR',
                                style: FlutterFlowTheme.of(context)
                                    .headlineMedium
                                    .override(
                                      fontFamily: 'Roboto',
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      fontSize: 20.0,
                                      letterSpacing: 1.25,
                                      fontWeight: FontWeight.w900,
                                    ),
                              ),
                            ].divide(const SizedBox(width: 9.0)),
                          ),
                        ),
                      ),
                      content: Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            16.0, 0.0, 16.0, 45.0),
                        child: SingleChildScrollView(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 17.0, 0.0, 16.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Text(
                                          'UPCOMING TRIPS',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Roboto',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .mediumEmphasis,
                                                fontSize: 10.0,
                                                letterSpacing: 1.5,
                                                fontWeight: FontWeight.w500,
                                              ),
                                        ),
                                      ],
                                    ),
                                    const Expanded(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Divider(
                                            thickness: 1.0,
                                            color: Color(0xFFEEE3D9),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ].divide(const SizedBox(width: 8.0)),
                                ),
                              ),
                              ListView(
                                padding: EdgeInsets.zero,
                                primary: false,
                                shrinkWrap: true,
                                scrollDirection: Axis.vertical,
                                children: [
                                  wrapWithModel(
                                    model: _model.upcomingTripCardModel1,
                                    updateCallback: () => setState(() {}),
                                    child: const UpcomingTripCardWidget(),
                                  ),
                                  wrapWithModel(
                                    model: _model.upcomingTripCardModel2,
                                    updateCallback: () => setState(() {}),
                                    child: const UpcomingTripCardWidget(),
                                  ),
                                ].divide(const SizedBox(height: 5.0)),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 17.0, 0.0, 16.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Text(
                                          'RECENT TRIPS',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Roboto',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .mediumEmphasis,
                                                fontSize: 10.0,
                                                letterSpacing: 1.5,
                                                fontWeight: FontWeight.w500,
                                              ),
                                        ),
                                      ],
                                    ),
                                    const Expanded(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Divider(
                                            thickness: 1.0,
                                            color: Color(0xFFEEE3D9),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ].divide(const SizedBox(width: 8.0)),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 16.0),
                                child: ListView(
                                  padding: EdgeInsets.zero,
                                  primary: false,
                                  shrinkWrap: true,
                                  scrollDirection: Axis.vertical,
                                  children: [
                                    wrapWithModel(
                                      model: _model.recentTripsModel1,
                                      updateCallback: () => setState(() {}),
                                      child: const RecentTripsWidget(),
                                    ),
                                    wrapWithModel(
                                      model: _model.recentTripsModel2,
                                      updateCallback: () => setState(() {}),
                                      child: const RecentTripsWidget(),
                                    ),
                                    wrapWithModel(
                                      model: _model.recentTripsModel3,
                                      updateCallback: () => setState(() {}),
                                      child: const RecentTripsWidget(),
                                    ),
                                    wrapWithModel(
                                      model: _model.recentTripsModel4,
                                      updateCallback: () => setState(() {}),
                                      child: const RecentTripsWidget(),
                                    ),
                                    wrapWithModel(
                                      model: _model.recentTripsModel5,
                                      updateCallback: () => setState(() {}),
                                      child: const RecentTripsWidget(),
                                    ),
                                    wrapWithModel(
                                      model: _model.recentTripsModel6,
                                      updateCallback: () => setState(() {}),
                                      child: const RecentTripsWidget(),
                                    ),
                                    wrapWithModel(
                                      model: _model.recentTripsModel7,
                                      updateCallback: () => setState(() {}),
                                      child: const RecentTripsWidget(),
                                    ),
                                  ].divide(const SizedBox(height: 5.0)),
                                ),
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(
                                    'SHOW ALL',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Roboto',
                                          color: FlutterFlowTheme.of(context)
                                              .mediumEmphasis,
                                          fontSize: 10.0,
                                          letterSpacing: 1.5,
                                          fontWeight: FontWeight.w500,
                                        ),
                                  ),
                                  Icon(
                                    Icons.navigate_next,
                                    color: FlutterFlowTheme.of(context)
                                        .mediumEmphasis,
                                    size: 16.0,
                                  ),
                                ].divide(const SizedBox(width: 2.0)),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: const AlignmentDirectional(0.0, 1.0),
              child: wrapWithModel(
                model: _model.navBarModel,
                updateCallback: () => setState(() {}),
                child: const NavBarWidget(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
