import '/flutter_flow/flutter_flow_util.dart';
import 'login_widget.dart' show LoginWidget;
import 'package:flutter/material.dart';

class LoginModel extends FlutterFlowModel<LoginWidget> {
  ///  Local state fields for this page.

  bool? isLogin = true;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for emailAddress widget.
  FocusNode? emailAddressFocusNode;
  TextEditingController? emailAddressTextController;
  String? Function(BuildContext, String?)? emailAddressTextControllerValidator;
  // State field(s) for password widget.
  FocusNode? passwordFocusNode;
  TextEditingController? passwordTextController;
  late bool passwordVisibility;
  String? Function(BuildContext, String?)? passwordTextControllerValidator;
  // State field(s) for firstName-register widget.
  FocusNode? firstNameRegisterFocusNode;
  TextEditingController? firstNameRegisterTextController;
  String? Function(BuildContext, String?)?
      firstNameRegisterTextControllerValidator;
  // State field(s) for emailAddress--register widget.
  FocusNode? emailAddressRegisterFocusNode;
  TextEditingController? emailAddressRegisterTextController;
  String? Function(BuildContext, String?)?
      emailAddressRegisterTextControllerValidator;
  // State field(s) for password--register widget.
  FocusNode? passwordRegisterFocusNode;
  TextEditingController? passwordRegisterTextController;
  late bool passwordRegisterVisibility;
  String? Function(BuildContext, String?)?
      passwordRegisterTextControllerValidator;
  // State field(s) for confirmpassword--register widget.
  FocusNode? confirmpasswordRegisterFocusNode;
  TextEditingController? confirmpasswordRegisterTextController;
  late bool confirmpasswordRegisterVisibility;
  String? Function(BuildContext, String?)?
      confirmpasswordRegisterTextControllerValidator;

  @override
  void initState(BuildContext context) {
    passwordVisibility = false;
    passwordRegisterVisibility = false;
    confirmpasswordRegisterVisibility = false;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    emailAddressFocusNode?.dispose();
    emailAddressTextController?.dispose();

    passwordFocusNode?.dispose();
    passwordTextController?.dispose();

    firstNameRegisterFocusNode?.dispose();
    firstNameRegisterTextController?.dispose();

    emailAddressRegisterFocusNode?.dispose();
    emailAddressRegisterTextController?.dispose();

    passwordRegisterFocusNode?.dispose();
    passwordRegisterTextController?.dispose();

    confirmpasswordRegisterFocusNode?.dispose();
    confirmpasswordRegisterTextController?.dispose();
  }
}
