import '/flutter_flow/flutter_flow_calendar.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'medication_management_copy_widget.dart'
    show MedicationManagementCopyWidget;
import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

class MedicationManagementCopyModel
    extends FlutterFlowModel<MedicationManagementCopyWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for Calendar widget.
  DateTimeRange? calendarSelectedDay;
  // State field(s) for SwitchListTile widget.
  bool? switchListTileValue1;
  AudioPlayer? soundPlayer1;
  // State field(s) for SwitchListTile widget.
  bool? switchListTileValue2;
  AudioPlayer? soundPlayer2;
  // State field(s) for SwitchListTile widget.
  bool? switchListTileValue3;
  AudioPlayer? soundPlayer3;
  // State field(s) for SwitchListTile widget.
  bool? switchListTileValue4;
  AudioPlayer? soundPlayer4;
  // State field(s) for SwitchListTile widget.
  bool? switchListTileValue5;
  AudioPlayer? soundPlayer5;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    calendarSelectedDay = DateTimeRange(
      start: DateTime.now().startOfDay,
      end: DateTime.now().endOfDay,
    );
  }

  @override
  void dispose() {
    unfocusNode.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
