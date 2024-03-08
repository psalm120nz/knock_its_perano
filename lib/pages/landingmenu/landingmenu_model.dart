import '/flutter_flow/flutter_flow_util.dart';
import '/imports/privacypolicy/privacypolicy_widget.dart';
import 'landingmenu_widget.dart' show LandingmenuWidget;
import 'package:flutter/material.dart';

class LandingmenuModel extends FlutterFlowModel<LandingmenuWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for privacypolicy component.
  late PrivacypolicyModel privacypolicyModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    privacypolicyModel = createModel(context, () => PrivacypolicyModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    privacypolicyModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
