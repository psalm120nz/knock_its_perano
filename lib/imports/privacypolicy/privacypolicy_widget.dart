import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'privacypolicy_model.dart';
export 'privacypolicy_model.dart';

class PrivacypolicyWidget extends StatefulWidget {
  const PrivacypolicyWidget({super.key});

  @override
  State<PrivacypolicyWidget> createState() => _PrivacypolicyWidgetState();
}

class _PrivacypolicyWidgetState extends State<PrivacypolicyWidget> {
  late PrivacypolicyModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PrivacypolicyModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return
        // You will have to add an action on this rich text to go to your login page.
        Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 12.0),
      child: RichText(
        textScaler: MediaQuery.of(context).textScaler,
        text: TextSpan(
          children: [
            const TextSpan(
              text: 'Terms & Conditions  ',
              style: TextStyle(),
            ),
            TextSpan(
              text: 'Privacy Policy',
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Space Grotesk',
                    color: const Color(0xFFCE6103),
                    fontWeight: FontWeight.w600,
                  ),
            )
          ],
          style: FlutterFlowTheme.of(context).bodyMedium,
        ),
      ),
    );
  }
}
