import '/components/nav_bar/nav_bar_widget.dart';
import '/components/recent_trips/recent_trips_widget.dart';
import '/components/upcoming_trip_card/upcoming_trip_card_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'home_page_widget.dart' show HomePageWidget;
import 'package:flutter/material.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for UpcomingTripCard component.
  late UpcomingTripCardModel upcomingTripCardModel1;
  // Model for UpcomingTripCard component.
  late UpcomingTripCardModel upcomingTripCardModel2;
  // Model for RecentTrips component.
  late RecentTripsModel recentTripsModel1;
  // Model for RecentTrips component.
  late RecentTripsModel recentTripsModel2;
  // Model for RecentTrips component.
  late RecentTripsModel recentTripsModel3;
  // Model for RecentTrips component.
  late RecentTripsModel recentTripsModel4;
  // Model for RecentTrips component.
  late RecentTripsModel recentTripsModel5;
  // Model for RecentTrips component.
  late RecentTripsModel recentTripsModel6;
  // Model for RecentTrips component.
  late RecentTripsModel recentTripsModel7;
  // Model for NavBar component.
  late NavBarModel navBarModel;

  @override
  void initState(BuildContext context) {
    upcomingTripCardModel1 =
        createModel(context, () => UpcomingTripCardModel());
    upcomingTripCardModel2 =
        createModel(context, () => UpcomingTripCardModel());
    recentTripsModel1 = createModel(context, () => RecentTripsModel());
    recentTripsModel2 = createModel(context, () => RecentTripsModel());
    recentTripsModel3 = createModel(context, () => RecentTripsModel());
    recentTripsModel4 = createModel(context, () => RecentTripsModel());
    recentTripsModel5 = createModel(context, () => RecentTripsModel());
    recentTripsModel6 = createModel(context, () => RecentTripsModel());
    recentTripsModel7 = createModel(context, () => RecentTripsModel());
    navBarModel = createModel(context, () => NavBarModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    upcomingTripCardModel1.dispose();
    upcomingTripCardModel2.dispose();
    recentTripsModel1.dispose();
    recentTripsModel2.dispose();
    recentTripsModel3.dispose();
    recentTripsModel4.dispose();
    recentTripsModel5.dispose();
    recentTripsModel6.dispose();
    recentTripsModel7.dispose();
    navBarModel.dispose();
  }
}
