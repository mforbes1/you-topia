import '/flutter_flow/flutter_flow_checkbox_group.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_radio_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:signature/signature.dart';
import 'copy_medical_records_model.dart';
export 'copy_medical_records_model.dart';

class CopyMedicalRecordsWidget extends StatefulWidget {
  const CopyMedicalRecordsWidget({super.key});

  @override
  State<CopyMedicalRecordsWidget> createState() =>
      _CopyMedicalRecordsWidgetState();
}

class _CopyMedicalRecordsWidgetState extends State<CopyMedicalRecordsWidget> {
  late CopyMedicalRecordsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CopyMedicalRecordsModel());

    _model.textController1 ??= TextEditingController();
    _model.textFieldFocusNode1 ??= FocusNode();

    _model.textController2 ??= TextEditingController();
    _model.textFieldFocusNode2 ??= FocusNode();
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
          automaticallyImplyLeading: false,
          leading: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(12.0, 6.0, 0.0, 6.0),
            child: Container(
              width: 300.0,
              height: 300.0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).primary,
                shape: BoxShape.circle,
                border: Border.all(
                  color: FlutterFlowTheme.of(context).primary,
                  width: 2.0,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(2.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(50.0),
                  child: Image.asset(
                    'assets/images/Profile_image.png',
                    width: 300.0,
                    height: 300.0,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
          title: Align(
            alignment: const AlignmentDirectional(0.0, 0.0),
            child: Text(
              FFLocalizations.of(context).getText(
                'khauzvn9' /* Medical Records */,
              ),
              style: FlutterFlowTheme.of(context).headlineMedium.override(
                    fontFamily: 'Noto Serif',
                    color: const Color(0xFF6082B6),
                    fontSize: 40.0,
                    fontWeight: FontWeight.w600,
                  ),
            ),
          ),
          actions: [
            Align(
              alignment: const AlignmentDirectional(1.0, 1.0),
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 10.0),
                child: InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    context.pushNamed('Home');
                  },
                  child: Text(
                    FFLocalizations.of(context).getText(
                      '23ypyit8' /* Close */,
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Noto Serif',
                          fontSize: 16.0,
                          fontWeight: FontWeight.w800,
                        ),
                  ),
                ),
              ),
            ),
            Align(
              alignment: const AlignmentDirectional(0.0, 1.0),
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 5.0, 8.0),
                child: FlutterFlowIconButton(
                  borderColor: Colors.transparent,
                  borderRadius: 20.0,
                  buttonSize: 49.0,
                  icon: FaIcon(
                    FontAwesomeIcons.solidWindowClose,
                    color: FlutterFlowTheme.of(context).primaryText,
                    size: 34.0,
                  ),
                  onPressed: () async {
                    context.pushNamed('Home');
                  },
                ),
              ),
            ),
          ],
          centerTitle: false,
          elevation: 0.0,
        ),
        body: SafeArea(
          top: true,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.asset(
                          'assets/images/Medical_Records_3.png',
                          width: double.infinity,
                          height: 230.0,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(16.0, 4.0, 0.0, 0.0),
                      child: Text(
                        FFLocalizations.of(context).getText(
                          '1vcfdnud' /* Copy of Medical Records */,
                        ),
                        style: FlutterFlowTheme.of(context)
                            .headlineMedium
                            .override(
                              fontFamily: 'Noto Serif',
                              fontSize: 35.0,
                            ),
                      ),
                    ),
                    Divider(
                      height: 20.0,
                      thickness: 2.0,
                      indent: 16.0,
                      endIndent: 16.0,
                      color: FlutterFlowTheme.of(context).alternate,
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(16.0, 4.0, 16.0, 0.0),
                      child: Text(
                        FFLocalizations.of(context).getText(
                          'bcw8o5km' /* Complete the following form to... */,
                        ),
                        style: FlutterFlowTheme.of(context).bodyLarge.override(
                              fontFamily: 'Noto Serif',
                              fontSize: 22.0,
                            ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(16.0, 8.0, 16.0, 0.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 8.0, 0.0, 8.0),
                            child: Container(
                              width: double.infinity,
                              height: 40.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .primaryBackground,
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              alignment: const AlignmentDirectional(-0.9, 0.0),
                              child: Text(
                                FFLocalizations.of(context).getText(
                                  '1f9qpe68' /* Date Range */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .labelMedium
                                    .override(
                                      fontFamily: 'Noto Serif',
                                      fontSize: 18.0,
                                    ),
                              ),
                            ),
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              FFButtonWidget(
                                onPressed: () async {
                                  final datePicked1Date = await showDatePicker(
                                    context: context,
                                    initialDate: getCurrentTimestamp,
                                    firstDate: DateTime(1900),
                                    lastDate: getCurrentTimestamp,
                                  );

                                  if (datePicked1Date != null) {
                                    safeSetState(() {
                                      _model.datePicked1 = DateTime(
                                        datePicked1Date.year,
                                        datePicked1Date.month,
                                        datePicked1Date.day,
                                      );
                                    });
                                  }
                                },
                                text: FFLocalizations.of(context).getText(
                                  '5mtnaht8' /* From: */,
                                ),
                                options: FFButtonOptions(
                                  height: 40.0,
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      24.0, 0.0, 24.0, 0.0),
                                  iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  color: FlutterFlowTheme.of(context).primary,
                                  textStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .override(
                                        fontFamily: 'Noto Serif',
                                        color: Colors.white,
                                        fontSize: 18.0,
                                      ),
                                  elevation: 3.0,
                                  borderSide: const BorderSide(
                                    color: Colors.transparent,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                              ),
                              Text(
                                dateTimeFormat(
                                  'yMd',
                                  _model.datePicked1,
                                  locale:
                                      FFLocalizations.of(context).languageCode,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Noto Serif',
                                      fontSize: 16.0,
                                    ),
                              ),
                              FFButtonWidget(
                                onPressed: () async {
                                  final datePicked2Date = await showDatePicker(
                                    context: context,
                                    initialDate: getCurrentTimestamp,
                                    firstDate: DateTime(1900),
                                    lastDate: getCurrentTimestamp,
                                  );

                                  if (datePicked2Date != null) {
                                    safeSetState(() {
                                      _model.datePicked2 = DateTime(
                                        datePicked2Date.year,
                                        datePicked2Date.month,
                                        datePicked2Date.day,
                                      );
                                    });
                                  }
                                },
                                text: FFLocalizations.of(context).getText(
                                  'fc4q3jyq' /* To: */,
                                ),
                                options: FFButtonOptions(
                                  height: 40.0,
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      24.0, 0.0, 24.0, 0.0),
                                  iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  color: FlutterFlowTheme.of(context).primary,
                                  textStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .override(
                                        fontFamily: 'Noto Serif',
                                        color: Colors.white,
                                        fontSize: 18.0,
                                      ),
                                  elevation: 3.0,
                                  borderSide: const BorderSide(
                                    color: Colors.transparent,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                              ),
                              Text(
                                valueOrDefault<String>(
                                  dateTimeFormat(
                                    'yMd',
                                    _model.datePicked2,
                                    locale: FFLocalizations.of(context)
                                        .languageCode,
                                  ),
                                  '[Select To Date]',
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Noto Serif',
                                      fontSize: 16.0,
                                    ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 8.0, 0.0, 8.0),
                            child: Container(
                              width: double.infinity,
                              height: 40.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .primaryBackground,
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              alignment: const AlignmentDirectional(-0.9, 0.0),
                              child: Text(
                                FFLocalizations.of(context).getText(
                                  'ptg3vu9t' /* Type of Records */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .labelMedium
                                    .override(
                                      fontFamily: 'Noto Serif',
                                      fontSize: 18.0,
                                    ),
                              ),
                            ),
                          ),
                          FlutterFlowCheckboxGroup(
                            options: [
                              FFLocalizations.of(context).getText(
                                'uaprucyu' /* Lab Results */,
                              ),
                              FFLocalizations.of(context).getText(
                                'zuc9kxfq' /* Allergies */,
                              ),
                              FFLocalizations.of(context).getText(
                                'kvz32bia' /* History */,
                              ),
                              FFLocalizations.of(context).getText(
                                'r1tge327' /* Problem List */,
                              ),
                              FFLocalizations.of(context).getText(
                                'ydjsn4iu' /* Chart Review */,
                              )
                            ],
                            onChanged: (val) => setState(
                                () => _model.checkboxGroupValues1 = val),
                            controller: _model.checkboxGroupValueController1 ??=
                                FormFieldController<List<String>>(
                              [],
                            ),
                            activeColor: FlutterFlowTheme.of(context).primary,
                            checkColor: Colors.white,
                            checkboxBorderColor:
                                FlutterFlowTheme.of(context).secondaryText,
                            textStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Noto Serif',
                                  fontSize: 16.0,
                                ),
                            itemPadding: const EdgeInsetsDirectional.fromSTEB(
                                8.0, 0.0, 0.0, 0.0),
                            checkboxBorderRadius: BorderRadius.circular(4.0),
                            initialized: _model.checkboxGroupValues1 != null,
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 8.0, 0.0, 8.0),
                            child: Container(
                              width: double.infinity,
                              height: 40.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .primaryBackground,
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              alignment: const AlignmentDirectional(-0.9, 0.0),
                              child: Text(
                                FFLocalizations.of(context).getText(
                                  'yq5bnevh' /* Encounter/Visit */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .labelMedium
                                    .override(
                                      fontFamily: 'Noto Serif',
                                      fontSize: 18.0,
                                    ),
                              ),
                            ),
                          ),
                          FlutterFlowCheckboxGroup(
                            options: [
                              FFLocalizations.of(context).getText(
                                'zwisqpz6' /* Neurology */,
                              ),
                              FFLocalizations.of(context).getText(
                                't56dajni' /* Otorhinolaryngology (ENT) */,
                              )
                            ],
                            onChanged: (val) => setState(
                                () => _model.checkboxGroupValues2 = val),
                            controller: _model.checkboxGroupValueController2 ??=
                                FormFieldController<List<String>>(
                              [],
                            ),
                            activeColor: FlutterFlowTheme.of(context).primary,
                            checkColor: Colors.white,
                            checkboxBorderColor:
                                FlutterFlowTheme.of(context).secondaryText,
                            textStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Noto Serif',
                                  fontSize: 16.0,
                                ),
                            itemPadding: const EdgeInsetsDirectional.fromSTEB(
                                8.0, 0.0, 0.0, 0.0),
                            checkboxBorderRadius: BorderRadius.circular(4.0),
                            initialized: _model.checkboxGroupValues2 != null,
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 8.0, 0.0, 8.0),
                            child: Container(
                              width: double.infinity,
                              height: 40.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .primaryBackground,
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              alignment: const AlignmentDirectional(-0.9, 0.0),
                              child: Text(
                                FFLocalizations.of(context).getText(
                                  'ulex9rog' /* Are you requesting these recor... */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .labelMedium
                                    .override(
                                      fontFamily: 'Noto Serif',
                                      fontSize: 18.0,
                                    ),
                              ),
                            ),
                          ),
                          FlutterFlowRadioButton(
                            options: [
                              FFLocalizations.of(context).getText(
                                'n0s31s3u' /* Myself */,
                              ),
                              FFLocalizations.of(context).getText(
                                'jfdtwnxp' /* Someone Else */,
                              )
                            ].toList(),
                            onChanged: (val) => setState(() {}),
                            controller: _model.radioButtonValueController ??=
                                FormFieldController<String>(null),
                            optionHeight: 32.0,
                            textStyle: FlutterFlowTheme.of(context).labelMedium,
                            selectedTextStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Noto Serif',
                                  fontSize: 16.0,
                                ),
                            buttonPosition: RadioButtonPosition.left,
                            direction: Axis.horizontal,
                            radioButtonColor:
                                FlutterFlowTheme.of(context).primary,
                            inactiveRadioButtonColor:
                                FlutterFlowTheme.of(context).secondaryText,
                            toggleable: false,
                            horizontalAlignment: WrapAlignment.start,
                            verticalAlignment: WrapCrossAlignment.start,
                          ),
                          if (_model.radioButtonValue == 'Someone Else')
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 8.0, 0.0, 8.0),
                              child: Container(
                                width: double.infinity,
                                height: 40.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .primaryBackground,
                                  borderRadius: BorderRadius.circular(12.0),
                                ),
                                alignment: const AlignmentDirectional(-0.9, 0.0),
                                child: Text(
                                  FFLocalizations.of(context).getText(
                                    'vnifsb6o' /* Recepient Contact Information */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .override(
                                        fontFamily: 'Noto Serif',
                                        fontSize: 18.0,
                                      ),
                                ),
                              ),
                            ),
                          if (_model.radioButtonValue == 'Someone Else')
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  8.0, 0.0, 8.0, 0.0),
                              child: TextFormField(
                                controller: _model.textController1,
                                focusNode: _model.textFieldFocusNode1,
                                autofocus: true,
                                obscureText: false,
                                decoration: InputDecoration(
                                  labelText:
                                      FFLocalizations.of(context).getText(
                                    'm2fkuem6' /* Name */,
                                  ),
                                  labelStyle: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .override(
                                        fontFamily: 'Noto Serif',
                                        fontSize: 16.0,
                                      ),
                                  hintStyle: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .override(
                                        fontFamily: 'Noto Serif',
                                        fontSize: 16.0,
                                      ),
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context)
                                          .alternate,
                                      width: 2.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      width: 2.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  errorBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context).error,
                                      width: 2.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  focusedErrorBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context).error,
                                      width: 2.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Noto Serif',
                                      fontSize: 16.0,
                                    ),
                                keyboardType: TextInputType.name,
                                validator: _model.textController1Validator
                                    .asValidator(context),
                              ),
                            ),
                          if (_model.radioButtonValue == 'Someone Else')
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  8.0, 0.0, 8.0, 0.0),
                              child: TextFormField(
                                controller: _model.textController2,
                                focusNode: _model.textFieldFocusNode2,
                                autofocus: true,
                                obscureText: false,
                                decoration: InputDecoration(
                                  labelText:
                                      FFLocalizations.of(context).getText(
                                    '0nckxc7v' /* Email */,
                                  ),
                                  labelStyle: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .override(
                                        fontFamily: 'Noto Serif',
                                        fontSize: 16.0,
                                      ),
                                  hintStyle: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .override(
                                        fontFamily: 'Noto Serif',
                                        fontSize: 16.0,
                                      ),
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context)
                                          .alternate,
                                      width: 2.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      width: 2.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  errorBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context).error,
                                      width: 2.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  focusedErrorBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context).error,
                                      width: 2.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Noto Serif',
                                      fontSize: 16.0,
                                    ),
                                keyboardType: TextInputType.emailAddress,
                                validator: _model.textController2Validator
                                    .asValidator(context),
                              ),
                            ),
                          if (_model.radioButtonValue == 'Someone Else')
                            ClipRect(
                              child: Signature(
                                controller: _model.signatureController ??=
                                    SignatureController(
                                  penStrokeWidth: 3.0,
                                  penColor:
                                      FlutterFlowTheme.of(context).primaryText,
                                  exportBackgroundColor: Colors.white,
                                ),
                                backgroundColor: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                height: 120.0,
                              ),
                            ),
                          if (_model.radioButtonValue == 'Someone Else')
                            Text(
                              FFLocalizations.of(context).getText(
                                'kn5eq3og' /* Signature */,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Noto Serif',
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.w600,
                                    decoration: TextDecoration.underline,
                                  ),
                            ),
                        ],
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding:
                      const EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 16.0),
                  child: FFButtonWidget(
                    onPressed: () async {
                      await showDialog(
                        context: context,
                        builder: (alertDialogContext) {
                          return AlertDialog(
                            title: const Text('Success!'),
                            content: const Text(
                                'A copy of the requested medical records are being prepared to send to the recipient. If you have requested the records for yourself, they will be sent to the email address on file. Please wait 24-48 hours for delivery.'),
                            actions: [
                              TextButton(
                                onPressed: () =>
                                    Navigator.pop(alertDialogContext),
                                child: const Text('Ok'),
                              ),
                            ],
                          );
                        },
                      );

                      context.pushNamed('Home');
                    },
                    text: FFLocalizations.of(context).getText(
                      'rc9luj5s' /* Submit */,
                    ),
                    options: FFButtonOptions(
                      width: double.infinity,
                      height: 50.0,
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      iconPadding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: FlutterFlowTheme.of(context).primary,
                      textStyle:
                          FlutterFlowTheme.of(context).titleSmall.override(
                                fontFamily: 'Noto Serif',
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                fontSize: 18.0,
                                fontWeight: FontWeight.w500,
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
        ),
      ),
    );
  }
}
