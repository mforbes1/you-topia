import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'labs_model.dart';
export 'labs_model.dart';

class LabsWidget extends StatefulWidget {
  const LabsWidget({super.key});

  @override
  State<LabsWidget> createState() => _LabsWidgetState();
}

class _LabsWidgetState extends State<LabsWidget> {
  late LabsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LabsModel());
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
                'civ8xtuc' /* Lab Results */,
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
                      'waimdz7e' /* Close */,
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
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: Align(
                        alignment: const AlignmentDirectional(0.0, 0.0),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 8.0, 0.0, 8.0),
                          child: FlutterFlowChoiceChips(
                            options: [
                              ChipData(FFLocalizations.of(context).getText(
                                'zgxuk2lv' /* Pending Labs */,
                              )),
                              ChipData(FFLocalizations.of(context).getText(
                                'jyrofe0i' /* In  Review */,
                              )),
                              ChipData(FFLocalizations.of(context).getText(
                                'vluflney' /* Completed Labs */,
                              ))
                            ],
                            onChanged: (val) => setState(() =>
                                _model.choiceChipsValue = val?.firstOrNull),
                            selectedChipStyle: ChipStyle(
                              backgroundColor:
                                  FlutterFlowTheme.of(context).primary,
                              textStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    color: FlutterFlowTheme.of(context).info,
                                  ),
                              iconColor: FlutterFlowTheme.of(context).info,
                              iconSize: 18.0,
                              elevation: 2.0,
                              borderColor:
                                  FlutterFlowTheme.of(context).tertiary,
                              borderWidth: 1.0,
                              borderRadius: BorderRadius.circular(16.0),
                            ),
                            unselectedChipStyle: ChipStyle(
                              backgroundColor:
                                  FlutterFlowTheme.of(context).alternate,
                              textStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                  ),
                              iconColor:
                                  FlutterFlowTheme.of(context).secondaryText,
                              iconSize: 18.0,
                              elevation: 0.0,
                              borderColor: FlutterFlowTheme.of(context)
                                  .primaryBackground,
                              borderWidth: 1.0,
                              borderRadius: BorderRadius.circular(16.0),
                            ),
                            chipSpacing: 8.0,
                            rowSpacing: 12.0,
                            multiselect: false,
                            initialized: _model.choiceChipsValue != null,
                            alignment: WrapAlignment.start,
                            controller: _model.choiceChipsValueController ??=
                                FormFieldController<List<String>>(
                              [
                                FFLocalizations.of(context).getText(
                                  '93w75m7l' /* Completed Labs */,
                                )
                              ],
                            ),
                            wrapped: true,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Flexible(
                      child: Align(
                        alignment: const AlignmentDirectional(0.0, 0.0),
                        child: Text(
                          FFLocalizations.of(context).getText(
                            'dez8kekd' /* Tap the lab test for more deta... */,
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Noto Serif',
                                    fontSize: 25.0,
                                  ),
                        ),
                      ),
                    ),
                  ],
                ),
                Divider(
                  thickness: 1.0,
                  color: FlutterFlowTheme.of(context).accent4,
                ),
                if (_model.choiceChipsValue == 'Completed Labs')
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            10.0, 0.0, 10.0, 0.0),
                        child: FlipCard(
                          fill: Fill.fillBack,
                          direction: FlipDirection.HORIZONTAL,
                          speed: 400,
                          front: Container(
                            width: 300.0,
                            height: 300.0,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: Image.asset(
                                  'assets/images/Blood_Glucose.png',
                                ).image,
                              ),
                              borderRadius: const BorderRadius.only(
                                bottomLeft: Radius.circular(12.0),
                                bottomRight: Radius.circular(12.0),
                                topLeft: Radius.circular(12.0),
                                topRight: Radius.circular(12.0),
                              ),
                            ),
                            child: Align(
                              alignment: const AlignmentDirectional(0.0, 1.0),
                              child: Text(
                                FFLocalizations.of(context).getText(
                                  '2y7fr6jw' /* Blood Glucose */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Noto Serif',
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.w600,
                                    ),
                              ),
                            ),
                          ),
                          back: Container(
                            width: 300.0,
                            height: 236.0,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(12.0),
                                bottomRight: Radius.circular(12.0),
                                topLeft: Radius.circular(12.0),
                                topRight: Radius.circular(12.0),
                              ),
                            ),
                            child: RichText(
                              textScaler: MediaQuery.of(context).textScaler,
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: FFLocalizations.of(context).getText(
                                      '4171tfl3' /* Blood glucose testing measures... */,
                                    ),
                                    style: GoogleFonts.getFont(
                                      'Noto Serif',
                                      fontSize: 16.0,
                                    ),
                                  ),
                                  TextSpan(
                                    text: FFLocalizations.of(context).getText(
                                      'n1hc7gwm' /* A1C:  */,
                                    ),
                                    style: GoogleFonts.getFont(
                                      'Noto Serif',
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 18.0,
                                    ),
                                  ),
                                  TextSpan(
                                    text: FFLocalizations.of(context).getText(
                                      'kv52wr10' /* measures your average blood su... */,
                                    ),
                                    style: GoogleFonts.getFont(
                                      'Noto Serif',
                                      fontSize: 16.0,
                                    ),
                                  ),
                                  TextSpan(
                                    text: FFLocalizations.of(context).getText(
                                      'xcplgvla' /* 

Your results are within the ... */
                                      ,
                                    ),
                                    style: GoogleFonts.getFont(
                                      'Noto Serif',
                                      color: const Color(0xFF1CAC43),
                                      fontWeight: FontWeight.w600,
                                      fontSize: 18.0,
                                    ),
                                  )
                                ],
                                style: FlutterFlowTheme.of(context).bodyMedium,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            10.0, 0.0, 10.0, 0.0),
                        child: FlipCard(
                          fill: Fill.fillBack,
                          direction: FlipDirection.HORIZONTAL,
                          speed: 400,
                          front: Container(
                            width: 300.0,
                            height: 300.0,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: Image.asset(
                                  'assets/images/Lipids.png',
                                ).image,
                              ),
                              borderRadius: const BorderRadius.only(
                                bottomLeft: Radius.circular(12.0),
                                bottomRight: Radius.circular(12.0),
                                topLeft: Radius.circular(12.0),
                                topRight: Radius.circular(12.0),
                              ),
                            ),
                            child: Align(
                              alignment: const AlignmentDirectional(0.0, 1.0),
                              child: Text(
                                FFLocalizations.of(context).getText(
                                  'dq3gez24' /* Lipid Panel */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Noto Serif',
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.w600,
                                    ),
                              ),
                            ),
                          ),
                          back: Container(
                            width: 300.0,
                            height: 246.0,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(12.0),
                                bottomRight: Radius.circular(12.0),
                                topLeft: Radius.circular(12.0),
                                topRight: Radius.circular(12.0),
                              ),
                            ),
                            child: RichText(
                              textScaler: MediaQuery.of(context).textScaler,
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: FFLocalizations.of(context).getText(
                                      'tcsl8pcg' /* Lipid Panel testing measures y... */,
                                    ),
                                    style: GoogleFonts.getFont(
                                      'Noto Serif',
                                      fontSize: 16.0,
                                    ),
                                  ),
                                  TextSpan(
                                    text: FFLocalizations.of(context).getText(
                                      'i7lavma9' /* Total cholesterol:  */,
                                    ),
                                    style: GoogleFonts.getFont(
                                      'Noto Serif',
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 18.0,
                                    ),
                                  ),
                                  TextSpan(
                                    text: FFLocalizations.of(context).getText(
                                      'nsa9ppng' /* measures the amount of cholest... */,
                                    ),
                                    style: GoogleFonts.getFont(
                                      'Noto Serif',
                                      fontSize: 16.0,
                                    ),
                                  ),
                                  TextSpan(
                                    text: FFLocalizations.of(context).getText(
                                      'wbb4hvey' /* 

Your results are borderline ... */
                                      ,
                                    ),
                                    style: GoogleFonts.getFont(
                                      'Noto Serif',
                                      color: const Color(0xFFF4C238),
                                      fontWeight: FontWeight.w600,
                                      fontSize: 18.0,
                                      fontStyle: FontStyle.normal,
                                    ),
                                  )
                                ],
                                style: FlutterFlowTheme.of(context).bodyMedium,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                if (_model.choiceChipsValue == 'Completed Labs')
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Flexible(
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              10.0, 0.0, 10.0, 0.0),
                          child: FlipCard(
                            fill: Fill.fillBack,
                            direction: FlipDirection.HORIZONTAL,
                            speed: 400,
                            front: Container(
                              width: 300.0,
                              height: 267.0,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  fit: BoxFit.contain,
                                  alignment: const AlignmentDirectional(0.0, -1.0),
                                  image: Image.asset(
                                    'assets/images/CBC.png',
                                  ).image,
                                ),
                                borderRadius: const BorderRadius.only(
                                  bottomLeft: Radius.circular(12.0),
                                  bottomRight: Radius.circular(12.0),
                                  topLeft: Radius.circular(12.0),
                                  topRight: Radius.circular(12.0),
                                ),
                              ),
                              alignment: const AlignmentDirectional(0.0, -1.0),
                              child: Align(
                                alignment: const AlignmentDirectional(0.0, 1.0),
                                child: Text(
                                  FFLocalizations.of(context).getText(
                                    'twf8pavr' /* Complete Blood Count (CBC) */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Noto Serif',
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.w600,
                                      ),
                                ),
                              ),
                            ),
                            back: Container(
                              width: 300.0,
                              height: 319.0,
                              decoration: const BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(12.0),
                                  bottomRight: Radius.circular(12.0),
                                  topLeft: Radius.circular(12.0),
                                  topRight: Radius.circular(12.0),
                                ),
                              ),
                              child: RichText(
                                textScaler: MediaQuery.of(context).textScaler,
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: FFLocalizations.of(context).getText(
                                        'ouwlbdnt' /* CBC  */,
                                      ),
                                      style: GoogleFonts.getFont(
                                        'Noto Serif',
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 18.0,
                                      ),
                                    ),
                                    TextSpan(
                                      text: FFLocalizations.of(context).getText(
                                        'p71l5ybt' /* measures overall health and fi... */,
                                      ),
                                      style: GoogleFonts.getFont(
                                        'Noto Serif',
                                        fontSize: 16.0,
                                      ),
                                    ),
                                    TextSpan(
                                      text: FFLocalizations.of(context).getText(
                                        'gm00pgdj' /* 

Your results are following:  */
                                        ,
                                      ),
                                      style: GoogleFonts.getFont(
                                        'Noto Serif',
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        fontWeight: FontWeight.normal,
                                        fontSize: 16.0,
                                        fontStyle: FontStyle.normal,
                                      ),
                                    ),
                                    TextSpan(
                                      text: FFLocalizations.of(context).getText(
                                        'gg1hpklg' /* 
Hematocrit: Low range 25%
 */
                                        ,
                                      ),
                                      style: GoogleFonts.getFont(
                                        'Noto Serif',
                                        color: const Color(0xFFDC333D),
                                        fontWeight: FontWeight.w600,
                                        fontSize: 18.0,
                                      ),
                                    ),
                                    TextSpan(
                                      text: FFLocalizations.of(context).getText(
                                        'x0ej18w8' /* 
White blood cell count: Low r... */
                                        ,
                                      ),
                                      style: GoogleFonts.getFont(
                                        'Noto Serif',
                                        color: const Color(0xFFDC333D),
                                        fontWeight: FontWeight.w600,
                                        fontSize: 18.0,
                                      ),
                                    ),
                                    TextSpan(
                                      text: FFLocalizations.of(context).getText(
                                        '5hdjx3vp' /* Platelet count: Borderline 415... */,
                                      ),
                                      style: GoogleFonts.getFont(
                                        'Noto Serif',
                                        color: const Color(0xFFF4C238),
                                        fontWeight: FontWeight.w600,
                                        fontSize: 18.0,
                                      ),
                                    )
                                  ],
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Noto Serif',
                                      ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                Divider(
                  thickness: 1.0,
                  color: FlutterFlowTheme.of(context).accent4,
                ),
                if (_model.choiceChipsValue == 'Completed Labs')
                  Flexible(
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Align(
                          alignment: const AlignmentDirectional(0.0, 0.0),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                10.0, 0.0, 10.0, 0.0),
                            child: FlipCard(
                              fill: Fill.fillBack,
                              direction: FlipDirection.HORIZONTAL,
                              speed: 400,
                              front: Container(
                                width: 300.0,
                                height: 300.0,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: Image.asset(
                                      'assets/images/Calcium.png',
                                    ).image,
                                  ),
                                  borderRadius: const BorderRadius.only(
                                    bottomLeft: Radius.circular(12.0),
                                    bottomRight: Radius.circular(12.0),
                                    topLeft: Radius.circular(12.0),
                                    topRight: Radius.circular(12.0),
                                  ),
                                ),
                                child: Align(
                                  alignment: const AlignmentDirectional(0.0, 1.0),
                                  child: Text(
                                    FFLocalizations.of(context).getText(
                                      '2bo6ftzt' /* Calcium */,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Noto Serif',
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          fontSize: 20.0,
                                          fontWeight: FontWeight.w600,
                                        ),
                                  ),
                                ),
                              ),
                              back: Container(
                                width: 300.0,
                                height: 245.0,
                                decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(12.0),
                                    bottomRight: Radius.circular(12.0),
                                    topLeft: Radius.circular(12.0),
                                    topRight: Radius.circular(12.0),
                                  ),
                                ),
                                child: RichText(
                                  textScaler: MediaQuery.of(context).textScaler,
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text:
                                            FFLocalizations.of(context).getText(
                                          'hchru7ib' /* Total calcium  */,
                                        ),
                                        style: GoogleFonts.getFont(
                                          'Noto Serif',
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          fontWeight: FontWeight.w600,
                                          fontSize: 18.0,
                                        ),
                                      ),
                                      TextSpan(
                                        text:
                                            FFLocalizations.of(context).getText(
                                          'z3hgomb7' /* checks to make sure you have a... */,
                                        ),
                                        style: GoogleFonts.getFont(
                                          'Noto Serif',
                                          fontSize: 16.0,
                                        ),
                                      ),
                                      TextSpan(
                                        text:
                                            FFLocalizations.of(context).getText(
                                          'lxh7azp3' /* 
Your results are within the n... */
                                          ,
                                        ),
                                        style: GoogleFonts.getFont(
                                          'Noto Serif',
                                          color: const Color(0xFF1CAC43),
                                          fontWeight: FontWeight.w600,
                                          fontSize: 18.0,
                                        ),
                                      )
                                    ],
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          fontSize: 14.0,
                                        ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: const AlignmentDirectional(0.0, 0.0),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                10.0, 0.0, 10.0, 0.0),
                            child: FlipCard(
                              fill: Fill.fillBack,
                              direction: FlipDirection.HORIZONTAL,
                              speed: 400,
                              front: Align(
                                alignment: const AlignmentDirectional(0.0, 0.0),
                                child: Container(
                                  width: 300.0,
                                  height: 300.0,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: Image.asset(
                                        'assets/images/Urinalysis.png',
                                      ).image,
                                    ),
                                    borderRadius: const BorderRadius.only(
                                      bottomLeft: Radius.circular(12.0),
                                      bottomRight: Radius.circular(12.0),
                                      topLeft: Radius.circular(12.0),
                                      topRight: Radius.circular(12.0),
                                    ),
                                  ),
                                  alignment: const AlignmentDirectional(-1.0, 0.0),
                                  child: Align(
                                    alignment: const AlignmentDirectional(0.0, 1.0),
                                    child: Text(
                                      FFLocalizations.of(context).getText(
                                        '4ogfxgnb' /* Urinalysis */,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Noto Serif',
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                            fontSize: 20.0,
                                            fontWeight: FontWeight.w600,
                                          ),
                                    ),
                                  ),
                                ),
                              ),
                              back: Container(
                                width: 300.0,
                                height: 192.0,
                                decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(12.0),
                                    bottomRight: Radius.circular(12.0),
                                    topLeft: Radius.circular(12.0),
                                    topRight: Radius.circular(12.0),
                                  ),
                                ),
                                child: RichText(
                                  textScaler: MediaQuery.of(context).textScaler,
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text:
                                            FFLocalizations.of(context).getText(
                                          'v1byaelq' /* Urinalysis  */,
                                        ),
                                        style: GoogleFonts.getFont(
                                          'Noto Serif',
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          fontWeight: FontWeight.w600,
                                          fontSize: 18.0,
                                        ),
                                      ),
                                      TextSpan(
                                        text:
                                            FFLocalizations.of(context).getText(
                                          'h1o01v39' /* involves checking the appearan... */,
                                        ),
                                        style: GoogleFonts.getFont(
                                          'Noto Serif',
                                          fontSize: 16.0,
                                        ),
                                      ),
                                      TextSpan(
                                        text:
                                            FFLocalizations.of(context).getText(
                                          'rqfoq4dd' /* 

Your results are within the ... */
                                          ,
                                        ),
                                        style: GoogleFonts.getFont(
                                          'Noto Serif',
                                          color: const Color(0xFF1CAC43),
                                          fontWeight: FontWeight.w600,
                                          fontSize: 18.0,
                                        ),
                                      )
                                    ],
                                    style:
                                        FlutterFlowTheme.of(context).bodyMedium,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    if (_model.choiceChipsValue == 'In  Review')
                      Flexible(
                        child: Align(
                          alignment: const AlignmentDirectional(0.0, 0.0),
                          child: Text(
                            FFLocalizations.of(context).getText(
                              't8gwom86' /* You currently do not have any ... */,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Noto Serif',
                                  fontSize: 40.0,
                                ),
                          ),
                        ),
                      ),
                  ],
                ),
                if (_model.choiceChipsValue == 'In  Review')
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.asset(
                      'assets/images/In_review.png',
                      width: 700.0,
                      height: 700.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                if (_model.choiceChipsValue == 'Pending Labs')
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Align(
                        alignment: const AlignmentDirectional(0.0, 0.0),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              10.0, 0.0, 10.0, 0.0),
                          child: FlipCard(
                            fill: Fill.fillBack,
                            direction: FlipDirection.HORIZONTAL,
                            speed: 400,
                            front: Container(
                              width: 300.0,
                              height: 300.0,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: Image.asset(
                                    'assets/images/Tumor_Markers.png',
                                  ).image,
                                ),
                                borderRadius: const BorderRadius.only(
                                  bottomLeft: Radius.circular(12.0),
                                  bottomRight: Radius.circular(12.0),
                                  topLeft: Radius.circular(12.0),
                                  topRight: Radius.circular(12.0),
                                ),
                              ),
                              child: Align(
                                alignment: const AlignmentDirectional(0.0, 1.0),
                                child: Text(
                                  FFLocalizations.of(context).getText(
                                    'isobhdui' /* CA 125 */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Noto Serif',
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.w600,
                                      ),
                                ),
                              ),
                            ),
                            back: Container(
                              width: 300.0,
                              height: 320.0,
                              decoration: const BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(12.0),
                                  bottomRight: Radius.circular(12.0),
                                  topLeft: Radius.circular(12.0),
                                  topRight: Radius.circular(12.0),
                                ),
                              ),
                              child: RichText(
                                textScaler: MediaQuery.of(context).textScaler,
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: FFLocalizations.of(context).getText(
                                        'vlidiupb' /* Your doctor requested you take... */,
                                      ),
                                      style: GoogleFonts.getFont(
                                        'Noto Serif',
                                        fontSize: 16.0,
                                      ),
                                    ),
                                    TextSpan(
                                      text: FFLocalizations.of(context).getText(
                                        'nuetkxfo' /* CA 125  */,
                                      ),
                                      style: GoogleFonts.getFont(
                                        'Noto Serif',
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 18.0,
                                      ),
                                    ),
                                    TextSpan(
                                      text: FFLocalizations.of(context).getText(
                                        '3mzv3w5c' /* is mainly used to monitor the ... */,
                                      ),
                                      style: GoogleFonts.getFont(
                                        'Noto Serif',
                                        fontSize: 16.0,
                                      ),
                                    ),
                                    TextSpan(
                                      text: FFLocalizations.of(context).getText(
                                        'wubjcwv8' /* 

Your results are pending. */
                                        ,
                                      ),
                                      style: GoogleFonts.getFont(
                                        'Noto Serif',
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 18.0,
                                      ),
                                    )
                                  ],
                                  style:
                                      FlutterFlowTheme.of(context).bodyMedium,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(0.0, 0.0),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              10.0, 0.0, 10.0, 0.0),
                          child: FlipCard(
                            fill: Fill.fillBack,
                            direction: FlipDirection.HORIZONTAL,
                            speed: 400,
                            front: Container(
                              width: 300.0,
                              height: 300.0,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: Image.asset(
                                    'assets/images/Creatinine.png',
                                  ).image,
                                ),
                                borderRadius: const BorderRadius.only(
                                  bottomLeft: Radius.circular(12.0),
                                  bottomRight: Radius.circular(12.0),
                                  topLeft: Radius.circular(12.0),
                                  topRight: Radius.circular(12.0),
                                ),
                              ),
                              child: Align(
                                alignment: const AlignmentDirectional(0.0, 1.0),
                                child: Text(
                                  FFLocalizations.of(context).getText(
                                    'ahorcrzj' /* Creatinine */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Noto Serif',
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.w600,
                                      ),
                                ),
                              ),
                            ),
                            back: Container(
                              width: 300.0,
                              height: 320.0,
                              decoration: const BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(12.0),
                                  bottomRight: Radius.circular(12.0),
                                  topLeft: Radius.circular(12.0),
                                  topRight: Radius.circular(12.0),
                                ),
                              ),
                              child: RichText(
                                textScaler: MediaQuery.of(context).textScaler,
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: FFLocalizations.of(context).getText(
                                        't97y48k2' /* Your doctor requested you take... */,
                                      ),
                                      style: GoogleFonts.getFont(
                                        'Noto Serif',
                                        fontSize: 16.0,
                                      ),
                                    ),
                                    TextSpan(
                                      text: FFLocalizations.of(context).getText(
                                        'ux4v68ty' /* Creatinine  */,
                                      ),
                                      style: GoogleFonts.getFont(
                                        'Noto Serif',
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 18.0,
                                      ),
                                    ),
                                    TextSpan(
                                      text: FFLocalizations.of(context).getText(
                                        '3vz9wy85' /* is a blood test to evaluate fo... */,
                                      ),
                                      style: GoogleFonts.getFont(
                                        'Noto Serif',
                                        fontSize: 16.0,
                                      ),
                                    ),
                                    TextSpan(
                                      text: FFLocalizations.of(context).getText(
                                        'vlkecc5v' /* 

Your results are pending. */
                                        ,
                                      ),
                                      style: GoogleFonts.getFont(
                                        'Noto Serif',
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 18.0,
                                      ),
                                    )
                                  ],
                                  style:
                                      FlutterFlowTheme.of(context).bodyMedium,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
