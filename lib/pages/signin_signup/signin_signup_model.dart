import '/flutter_flow/flutter_flow_util.dart';
import '/imports/privacypolicy/privacypolicy_widget.dart';
import 'signin_signup_widget.dart' show SigninSignupWidget;
import 'package:flutter/material.dart';

class SigninSignupModel extends FlutterFlowModel<SigninSignupWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for privacypolicy component.
  late PrivacypolicyModel privacypolicyModel;
  // State field(s) for emailAddress widget.
  FocusNode? emailAddressFocusNode;
  TextEditingController? emailAddressController;
  String? Function(BuildContext, String?)? emailAddressControllerValidator;
  // State field(s) for password widget.
  FocusNode? passwordFocusNode;
  TextEditingController? passwordController;
  late bool passwordVisibility;
  String? Function(BuildContext, String?)? passwordControllerValidator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    privacypolicyModel = createModel(context, () => PrivacypolicyModel());
    passwordVisibility = false;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    privacypolicyModel.dispose();
    emailAddressFocusNode?.dispose();
    emailAddressController?.dispose();

    passwordFocusNode?.dispose();
    passwordController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
