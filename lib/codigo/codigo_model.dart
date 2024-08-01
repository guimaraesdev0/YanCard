import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'codigo_widget.dart' show CodigoWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CodigoModel extends FlutterFlowModel<CodigoWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for Nova_senha widget.
  FocusNode? novaSenhaFocusNode;
  TextEditingController? novaSenhaTextController;
  String? Function(BuildContext, String?)? novaSenhaTextControllerValidator;
  // Stores action output result for [Backend Call - API (VerifyRecoveryCode)] action in Button widget.
  ApiCallResponse? apiResult3xi;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    novaSenhaFocusNode?.dispose();
    novaSenhaTextController?.dispose();
  }
}
