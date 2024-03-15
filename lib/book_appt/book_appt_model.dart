import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'book_appt_widget.dart' show BookApptWidget;
import 'package:flutter/material.dart';

class BookApptModel extends FlutterFlowModel<BookApptWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for Emergency widget.
  String? emergencyValue;
  FormFieldController<String>? emergencyValueController;
  // State field(s) for TypeofVisit widget.
  String? typeofVisitValue;
  FormFieldController<String>? typeofVisitValueController;
  // State field(s) for ListofSymptoms widget.
  String? listofSymptomsValue;
  FormFieldController<String>? listofSymptomsValueController;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;

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
