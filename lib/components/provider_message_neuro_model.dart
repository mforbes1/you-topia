import '/flutter_flow/flutter_flow_util.dart';
import 'provider_message_neuro_widget.dart' show ProviderMessageNeuroWidget;
import 'package:flutter/material.dart';

class ProviderMessageNeuroModel
    extends FlutterFlowModel<ProviderMessageNeuroWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for messageField widget.
  FocusNode? messageFieldFocusNode;
  TextEditingController? messageFieldController;
  String? Function(BuildContext, String?)? messageFieldControllerValidator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    messageFieldFocusNode?.dispose();
    messageFieldController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
