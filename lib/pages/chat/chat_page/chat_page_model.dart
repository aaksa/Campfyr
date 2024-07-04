import '/chat_groupwbubbles/chat_thread_component/chat_thread_component_widget.dart';
import '/components/nav_bar/nav_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'chat_page_widget.dart' show ChatPageWidget;
import 'package:flutter/material.dart';

class ChatPageModel extends FlutterFlowModel<ChatPageWidget> {
  ///  Local state fields for this page.

  bool? isEditingProfile = true;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for chat_ThreadComponent component.
  late ChatThreadComponentModel chatThreadComponentModel;
  // Model for NavBar component.
  late NavBarModel navBarModel;

  @override
  void initState(BuildContext context) {
    chatThreadComponentModel =
        createModel(context, () => ChatThreadComponentModel());
    navBarModel = createModel(context, () => NavBarModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    chatThreadComponentModel.dispose();
    navBarModel.dispose();
  }
}
