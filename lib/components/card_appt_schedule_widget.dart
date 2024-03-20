import '/components/confirmed_appt_card_widget.dart';
import '/flutter_flow/flutter_flow_radio_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'card_appt_schedule_model.dart';
export 'card_appt_schedule_model.dart';

class CardApptScheduleWidget extends StatefulWidget {
  const CardApptScheduleWidget({super.key});

  @override
  State<CardApptScheduleWidget> createState() => _CardApptScheduleWidgetState();
}

class _CardApptScheduleWidgetState extends State<CardApptScheduleWidget> {
  late CardApptScheduleModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CardApptScheduleModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      elevation: 5.0,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(0.0),
          bottomRight: Radius.circular(0.0),
          topLeft: Radius.circular(16.0),
          topRight: Radius.circular(16.0),
        ),
      ),
      child: Container(
        width: 830.0,
        height: 500.0,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(0.0),
            bottomRight: Radius.circular(0.0),
            topLeft: Radius.circular(16.0),
            topRight: Radius.circular(16.0),
          ),
          border: Border.all(
            color: FlutterFlowTheme.of(context).primary,
            width: 6.0,
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
              child: Container(
                width: 50.0,
                height: 4.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).primaryBackground,
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 0.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Align(
                    alignment: const AlignmentDirectional(0.0, 0.0),
                    child: Text(
                      FFLocalizations.of(context).getText(
                        'x58ai5vo' /* Available Appointments */,
                      ),
                      textAlign: TextAlign.start,
                      style:
                          FlutterFlowTheme.of(context).headlineSmall.override(
                                fontFamily: 'Noto Serif',
                                color: FlutterFlowTheme.of(context).primaryText,
                                letterSpacing: 1.0,
                                fontWeight: FontWeight.w600,
                              ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 32.0),
              child: ListView(
                padding: EdgeInsets.zero,
                primary: false,
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                children: [
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(16.0, 12.0, 16.0, 0.0),
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        borderRadius: BorderRadius.circular(8.0),
                        border: Border.all(
                          color: FlutterFlowTheme.of(context).alternate,
                          width: 2.0,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            16.0, 12.0, 8.0, 12.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              FFLocalizations.of(context).getText(
                                'sv2qq2jy' /* Cardiology */,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyLarge
                                  .override(
                                    fontFamily: 'Noto Serif',
                                    fontWeight: FontWeight.w600,
                                  ),
                            ),
                            const Icon(
                              Icons.chevron_right_rounded,
                              color: Color(0xFF7C8791),
                              size: 24.0,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            FlutterFlowRadioButton(
              options: [
                FFLocalizations.of(context).getText(
                  'h2nllrln' /* Wednesday, March 20 - 10 AM */,
                ),
                FFLocalizations.of(context).getText(
                  'nokiwvjt' /* Wednesday, March 20 - 11 AM */,
                ),
                FFLocalizations.of(context).getText(
                  'fh7an51x' /* Friday, March 22 - 1 PM */,
                ),
                FFLocalizations.of(context).getText(
                  'bfijdhpd' /* Friday, March 22 - 2 PM */,
                )
              ].toList(),
              onChanged: (val) => setState(() {}),
              controller: _model.radioButtonValueController ??=
                  FormFieldController<String>(
                      FFLocalizations.of(context).getText(
                'g2inr668' /* Wednesday, March 20 - 10 AM */,
              )),
              optionHeight: 35.0,
              textStyle: FlutterFlowTheme.of(context).labelMedium,
              selectedTextStyle:
                  FlutterFlowTheme.of(context).headlineSmall.override(
                        fontFamily: 'Noto Serif',
                        color: FlutterFlowTheme.of(context).primary,
                      ),
              buttonPosition: RadioButtonPosition.left,
              direction: Axis.vertical,
              radioButtonColor: FlutterFlowTheme.of(context).info,
              inactiveRadioButtonColor:
                  FlutterFlowTheme.of(context).secondaryText,
              toggleable: false,
              horizontalAlignment: WrapAlignment.start,
              verticalAlignment: WrapCrossAlignment.start,
            ),
            Builder(
              builder: (context) => FFButtonWidget(
                onPressed: () async {
                  await showDialog(
                    context: context,
                    builder: (dialogContext) {
                      return Dialog(
                        elevation: 0,
                        insetPadding: EdgeInsets.zero,
                        backgroundColor: Colors.transparent,
                        alignment: const AlignmentDirectional(0.0, 0.0)
                            .resolve(Directionality.of(context)),
                        child: ConfirmedApptCardWidget(
                          apptdate: _model.radioButtonValue,
                        ),
                      );
                    },
                  ).then((value) => setState(() {}));
                },
                text: FFLocalizations.of(context).getText(
                  '568r7ud7' /* Select */,
                ),
                options: FFButtonOptions(
                  height: 40.0,
                  padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                  iconPadding:
                      const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  color: FlutterFlowTheme.of(context).primary,
                  textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                        fontFamily: 'Noto Serif',
                        color: Colors.white,
                      ),
                  elevation: 3.0,
                  borderSide: const BorderSide(
                    color: Colors.transparent,
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
