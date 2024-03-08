import '/flutter_flow/flutter_flow_util.dart';
import 'settings_buttons_widget.dart' show SettingsButtonsWidget;
import 'package:flutter/material.dart';

class SettingsButtonsModel extends FlutterFlowModel<SettingsButtonsWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Stripe Payment] action in Button widget.
  String? paymentId;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
