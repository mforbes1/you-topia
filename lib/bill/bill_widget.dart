import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_credit_card_form.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_radio_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'bill_model.dart';
export 'bill_model.dart';

class BillWidget extends StatefulWidget {
  const BillWidget({
    super.key,
    this.scheduledAppt,
  });

  final bool? scheduledAppt;

  @override
  State<BillWidget> createState() => _BillWidgetState();
}

class _BillWidgetState extends State<BillWidget> {
  late BillModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BillModel());
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
              width: 400.0,
              height: 400.0,
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
                    height: 200.0,
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
                'uheg773t' /* Billing */,
              ),
              style: FlutterFlowTheme.of(context).headlineMedium.override(
                    fontFamily: 'Noto Serif',
                    color: FlutterFlowTheme.of(context).primary,
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
                    context.safePop();
                  },
                  child: Text(
                    FFLocalizations.of(context).getText(
                      'a0ign2fu' /* Close */,
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
                    context.safePop();
                  },
                ),
              ),
            ),
          ],
          centerTitle: false,
          elevation: 0.0,
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Align(
                alignment: const AlignmentDirectional(0.0, 0.0),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                  child: FlutterFlowChoiceChips(
                    options: [
                      ChipData(
                          FFLocalizations.of(context).getText(
                            'wdt0tg1z' /* Billing Statements */,
                          ),
                          FontAwesomeIcons.moneyBillAlt),
                      ChipData(
                          FFLocalizations.of(context).getText(
                            'ysd2k59j' /* Past Due Balance */,
                          ),
                          FontAwesomeIcons.moneyBillWave)
                    ],
                    onChanged: (val) => setState(
                        () => _model.choiceChipsValue = val?.firstOrNull),
                    selectedChipStyle: ChipStyle(
                      backgroundColor: FlutterFlowTheme.of(context).secondary,
                      textStyle:
                          FlutterFlowTheme.of(context).bodyMedium.override(
                                fontFamily: 'Readex Pro',
                                color: FlutterFlowTheme.of(context).primaryText,
                              ),
                      iconColor: FlutterFlowTheme.of(context).primaryText,
                      iconSize: 22.0,
                      elevation: 4.0,
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    unselectedChipStyle: ChipStyle(
                      backgroundColor: FlutterFlowTheme.of(context).alternate,
                      textStyle: FlutterFlowTheme.of(context)
                          .bodyMedium
                          .override(
                            fontFamily: 'Readex Pro',
                            color: FlutterFlowTheme.of(context).secondaryText,
                          ),
                      iconColor: FlutterFlowTheme.of(context).secondaryText,
                      iconSize: 22.0,
                      elevation: 0.0,
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    chipSpacing: 12.0,
                    rowSpacing: 12.0,
                    multiselect: false,
                    initialized: _model.choiceChipsValue != null,
                    alignment: WrapAlignment.start,
                    controller: _model.choiceChipsValueController ??=
                        FormFieldController<List<String>>(
                      [
                        FFLocalizations.of(context).getText(
                          '0z50cxq6' /* Billing Statements */,
                        )
                      ],
                    ),
                    wrapped: true,
                  ),
                ),
              ),
              if (_model.choiceChipsValue == 'Billing Statements')
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.asset(
                      'assets/images/Screenshot_2024-03-19_at_11.16.08_AM.png',
                      width: 766.0,
                      height: 593.0,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              if (_model.choiceChipsValue == 'Billing Statements')
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 5.0),
                  child: FlutterFlowRadioButton(
                    options: [
                      FFLocalizations.of(context).getText(
                        '3l3ox2v5' /* Pay Now */,
                      ),
                      FFLocalizations.of(context).getText(
                        '8r32jtkn' /* Pay Later */,
                      )
                    ].toList(),
                    onChanged: (val) => setState(() {}),
                    controller: _model.radioButtonValueController ??=
                        FormFieldController<String>(
                            FFLocalizations.of(context).getText(
                      'k8oh3c50' /* Pay Now */,
                    )),
                    optionHeight: 32.0,
                    textStyle: FlutterFlowTheme.of(context).labelMedium,
                    selectedTextStyle:
                        FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Noto Serif',
                              fontSize: 20.0,
                            ),
                    buttonPosition: RadioButtonPosition.left,
                    direction: Axis.horizontal,
                    radioButtonColor: FlutterFlowTheme.of(context).primary,
                    inactiveRadioButtonColor:
                        FlutterFlowTheme.of(context).secondaryText,
                    toggleable: false,
                    horizontalAlignment: WrapAlignment.start,
                    verticalAlignment: WrapCrossAlignment.start,
                  ),
                ),
              if ((_model.radioButtonValue == 'Pay Now') &&
                  (_model.choiceChipsValue == 'Billing Statements'))
                Align(
                  alignment: const AlignmentDirectional(0.0, 0.0),
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(5.0, 20.0, 5.0, 0.0),
                    child: Text(
                      FFLocalizations.of(context).getText(
                        '8b77zz8q' /* Please do not enter your actua... */,
                      ),
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Noto Serif',
                            color: const Color(0xFFD60D19),
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.underline,
                          ),
                    ),
                  ),
                ),
              if ((_model.radioButtonValue == 'Pay Now') &&
                  (_model.choiceChipsValue == 'Billing Statements'))
                Padding(
                  padding:
                      const EdgeInsetsDirectional.fromSTEB(12.0, 10.0, 12.0, 0.0),
                  child: FlutterFlowCreditCardForm(
                    formKey: _model.creditCardFormKey,
                    creditCardModel: _model.creditCardInfo,
                    obscureNumber: true,
                    obscureCvv: false,
                    spacing: 10.0,
                    textStyle: FlutterFlowTheme.of(context).labelMedium,
                    inputDecoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).alternate,
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).alternate,
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                  ),
                ),
              if ((_model.radioButtonValue == 'Pay Now') &&
                  (_model.choiceChipsValue == 'Billing Statements'))
                FFButtonWidget(
                  onPressed: () async {
                    await showDialog(
                      context: context,
                      builder: (alertDialogContext) {
                        return AlertDialog(
                          title: const Text('Success.'),
                          content: const Text(
                              'Your payment was successful! Confirmation # 123456789. '),
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
                    '9e4n3am8' /* Submit */,
                  ),
                  options: FFButtonOptions(
                    height: 40.0,
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                    iconPadding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: FlutterFlowTheme.of(context).primary,
                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                          fontFamily: 'Noto Serif',
                          color: Colors.white,
                          fontSize: 20.0,
                        ),
                    elevation: 3.0,
                    borderSide: const BorderSide(
                      color: Colors.transparent,
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              if ((_model.radioButtonValue == 'Pay Later') &&
                  (_model.choiceChipsValue == 'Billing Statements'))
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 5.0),
                  child: Text(
                    FFLocalizations.of(context).getText(
                      'zqrntrw9' /* Where do you want to send your... */,
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Noto Serif',
                          fontSize: 20.0,
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                ),
              if ((_model.radioButtonValue == 'Pay Later') &&
                  (_model.choiceChipsValue == 'Billing Statements'))
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 5.0),
                  child: FlutterFlowDropDown<String>(
                    controller: _model.dropDownValueController ??=
                        FormFieldController<String>(null),
                    options: [
                      FFLocalizations.of(context).getText(
                        'xc27sedv' /* My Residence at Broadmead */,
                      )
                    ],
                    onChanged: (val) =>
                        setState(() => _model.dropDownValue = val),
                    width: 300.0,
                    height: 56.0,
                    textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Noto Serif',
                          fontSize: 20.0,
                        ),
                    hintText: FFLocalizations.of(context).getText(
                      'vatdkgsa' /* Please select... */,
                    ),
                    icon: Icon(
                      Icons.keyboard_arrow_down_rounded,
                      color: FlutterFlowTheme.of(context).secondaryText,
                      size: 24.0,
                    ),
                    fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                    elevation: 2.0,
                    borderColor: FlutterFlowTheme.of(context).alternate,
                    borderWidth: 2.0,
                    borderRadius: 8.0,
                    margin:
                        const EdgeInsetsDirectional.fromSTEB(16.0, 4.0, 16.0, 4.0),
                    hidesUnderline: true,
                    isOverButton: true,
                    isSearchable: false,
                    isMultiSelect: false,
                  ),
                ),
              if ((_model.radioButtonValue == 'Pay Later') &&
                  (_model.choiceChipsValue == 'Billing Statements'))
                Align(
                  alignment: const AlignmentDirectional(0.0, 0.0),
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                    child: FFButtonWidget(
                      onPressed: () async {
                        await showDialog(
                          context: context,
                          builder: (alertDialogContext) {
                            return AlertDialog(
                              title: const Text('Success.'),
                              content: const Text(
                                  'Your billing statement will be sent to your selected address within 24-48 hours. Please ensure your payment is received within 7-10 business days from receiving the statement.'),
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
                        'czcw7p4u' /* Send */,
                      ),
                      options: FFButtonOptions(
                        height: 40.0,
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            24.0, 0.0, 24.0, 0.0),
                        iconPadding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: FlutterFlowTheme.of(context).primary,
                        textStyle:
                            FlutterFlowTheme.of(context).titleSmall.override(
                                  fontFamily: 'Noto Serif',
                                  color: Colors.white,
                                  fontSize: 20.0,
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
                ),
              if (_model.choiceChipsValue == 'Past Due Balance')
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                  child: Text(
                    FFLocalizations.of(context).getText(
                      'vz15clu3' /* You currently do not have an o... */,
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Noto Serif',
                          fontSize: 30.0,
                        ),
                  ),
                ),
              if (_model.choiceChipsValue == 'Past Due Balance')
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Flexible(
                        child: Align(
                          alignment: const AlignmentDirectional(0.0, 0.0),
                          child: Container(
                            width: 536.0,
                            height: 400.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/images/Paid.png',
                                width: 500.0,
                                height: 200.0,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      FFLocalizations.of(context).getText(
                        '8nfa764q' /* Questions about your bill? Con... */,
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Noto Serif',
                            fontSize: 20.0,
                          ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
