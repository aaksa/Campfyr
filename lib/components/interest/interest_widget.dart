import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'interest_model.dart';
export 'interest_model.dart';

class InterestWidget extends StatefulWidget {
  const InterestWidget({super.key});

  @override
  State<InterestWidget> createState() => _InterestWidgetState();
}

class _InterestWidgetState extends State<InterestWidget> {
  late InterestModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => InterestModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
