import '/components/derm_avail_appts_widget.dart';
import '/components/e_n_t_appt_schedule_widget.dart';
import '/components/e_n_t_follow_up_widget.dart';
import '/components/f_m_avail_appts_widget.dart';
import '/components/gastro_avail_appts_widget.dart';
import '/components/neuro_appt_schedule_widget.dart';
import '/components/neurology_follow_up_widget.dart';
import '/components/o_p_h_avail_appts_widget.dart';
import '/components/ortho_appt_schedule_widget.dart';
import '/components/pulm_avail_appts_widget.dart';
import '/components/urgent_care_locations_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'book_appt_model.dart';
export 'book_appt_model.dart';

class BookApptWidget extends StatefulWidget {
  const BookApptWidget({super.key});

  @override
  State<BookApptWidget> createState() => _BookApptWidgetState();
}

class _BookApptWidgetState extends State<BookApptWidget> {
  late BookApptModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BookApptModel());
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
        backgroundColor: FlutterFlowTheme.of(context).info,
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
                'ks62o9nc' /* Appointment Scheduling */,
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
                      '35cadnte' /* Close */,
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
        body: Visibility(
          visible: responsiveVisibility(
            context: context,
            phone: false,
          ),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: double.infinity,
                  height: 356.0,
                  decoration: const BoxDecoration(),
                  child: Container(
                    width: 100.0,
                    height: 344.0,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.contain,
                        image: Image.asset(
                          'assets/images/Book_Appt.png',
                        ).image,
                      ),
                    ),
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                      child: SingleChildScrollView(
                        primary: false,
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              FFLocalizations.of(context).getText(
                                'ww6wcuyb' /* Not feeling 
so well? */
                                ,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .displaySmall
                                  .override(
                                    fontFamily: 'Noto Serif',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    fontSize: 33.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                            ),
                            Align(
                              alignment: const AlignmentDirectional(1.0, 0.0),
                              child: Text(
                                FFLocalizations.of(context).getText(
                                  '0ke6ip8w' /* Need a
 routine
 visit? */
                                  ,
                                ),
                                maxLines: 3,
                                style: FlutterFlowTheme.of(context)
                                    .displaySmall
                                    .override(
                                      fontFamily: 'Noto Serif',
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      fontSize: 34.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                              ),
                            ),
                            Align(
                              alignment: const AlignmentDirectional(-1.0, 0.0),
                              child: Text(
                                FFLocalizations.of(context).getText(
                                  '5tlyhgcp' /* Let's get you to the 
best car... */
                                  ,
                                ),
                                maxLines: 2,
                                style: FlutterFlowTheme.of(context)
                                    .labelMedium
                                    .override(
                                      fontFamily: 'Noto Serif',
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      fontSize: 18.0,
                                    ),
                              ),
                            ),
                            Align(
                              alignment: const AlignmentDirectional(1.0, 1.0),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 10.0),
                                child: Text(
                                  FFLocalizations.of(context).getText(
                                    'g94lhaea' /* Let's get you to the 
best car... */
                                    ,
                                  ),
                                  maxLines: 2,
                                  style: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .override(
                                        fontFamily: 'Noto Serif',
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        fontSize: 18.0,
                                      ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Divider(
                  thickness: 3.0,
                  color: FlutterFlowTheme.of(context).alternate,
                ),
                Align(
                  alignment: const AlignmentDirectional(0.0, -1.0),
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 20.0),
                    child: Text(
                      FFLocalizations.of(context).getText(
                        'dl6la0w0' /* Appointment Scheduling */,
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Noto Serif',
                            fontSize: 50.0,
                          ),
                    ),
                  ),
                ),
                Align(
                  alignment: const AlignmentDirectional(0.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Align(
                          alignment: const AlignmentDirectional(0.0, -1.0),
                          child: Text(
                            FFLocalizations.of(context).getText(
                              'grtfyrj7' /* Is this an emergency? */,
                            ),
                            style:
                                FlutterFlowTheme.of(context).bodyLarge.override(
                                      fontFamily: 'Noto Serif',
                                      fontSize: 25.0,
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
                    Expanded(
                      child: Align(
                        alignment: const AlignmentDirectional(0.0, 0.0),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 10.0, 0.0, 0.0),
                          child: FlutterFlowDropDown<String>(
                            controller: _model.emergencyValueController ??=
                                FormFieldController<String>(null),
                            options: [
                              FFLocalizations.of(context).getText(
                                'si6z34hp' /* Yes */,
                              ),
                              FFLocalizations.of(context).getText(
                                'wngpouhj' /* No */,
                              )
                            ],
                            onChanged: (val) async {
                              setState(() => _model.emergencyValue = val);
                              if ((_model.emergencyValue == 'Yes') ||
                                  ((_model.emergencyValue == 'Sí') ||
                                      ((_model.emergencyValue == '是的') ||
                                          (_model.emergencyValue == 'Đúng') ||
                                          (_model.emergencyValue == 'نعم')))) {
                                await showDialog(
                                  context: context,
                                  builder: (alertDialogContext) {
                                    return AlertDialog(
                                      content: const Text(
                                          'If this is an emergency, please dial 911. Do not proceed with scheduling.'),
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
                                return;
                              }
                            },
                            width: 300.0,
                            height: 60.0,
                            textStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Noto Serif',
                                  fontSize: 20.0,
                                ),
                            hintText: FFLocalizations.of(context).getText(
                              'h859ty99' /* Please select... */,
                            ),
                            icon: Icon(
                              Icons.keyboard_arrow_down_rounded,
                              color: FlutterFlowTheme.of(context).secondaryText,
                              size: 24.0,
                            ),
                            fillColor: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            elevation: 2.0,
                            borderColor:
                                FlutterFlowTheme.of(context).primaryText,
                            borderWidth: 2.0,
                            borderRadius: 8.0,
                            margin: const EdgeInsetsDirectional.fromSTEB(
                                16.0, 4.0, 16.0, 4.0),
                            hidesUnderline: true,
                            isOverButton: true,
                            isSearchable: false,
                            isMultiSelect: false,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                if ((_model.emergencyValue == 'No') ||
                    ((_model.emergencyValue == '不') ||
                        ((_model.emergencyValue == 'KHÔNG') &&
                            (_model.emergencyValue == 'لا'))))
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Align(
                          alignment: const AlignmentDirectional(0.0, 0.0),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 10.0, 0.0, 0.0),
                            child: Text(
                              FFLocalizations.of(context).getText(
                                'hkqw950p' /* Which type of visit are you sc... */,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyLarge
                                  .override(
                                    fontFamily: 'Noto Serif',
                                    fontSize: 25.0,
                                  ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 10.0, 0.0, 0.0),
                          child: FlutterFlowDropDown<String>(
                            controller: _model.typeofVisitValueController ??=
                                FormFieldController<String>(null),
                            options: [
                              FFLocalizations.of(context).getText(
                                'j0k9g6bb' /* Sick (New Problem) */,
                              ),
                              FFLocalizations.of(context).getText(
                                'mbn1q109' /* Routine Follow Up */,
                              )
                            ],
                            onChanged: (val) =>
                                setState(() => _model.typeofVisitValue = val),
                            width: 300.0,
                            height: 60.0,
                            textStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Noto Serif',
                                  fontSize: 20.0,
                                ),
                            hintText: FFLocalizations.of(context).getText(
                              'm3hejawr' /* Please select... */,
                            ),
                            icon: Icon(
                              Icons.keyboard_arrow_down_rounded,
                              color: FlutterFlowTheme.of(context).secondaryText,
                              size: 24.0,
                            ),
                            fillColor: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            elevation: 2.0,
                            borderColor:
                                FlutterFlowTheme.of(context).primaryText,
                            borderWidth: 2.0,
                            borderRadius: 8.0,
                            margin: const EdgeInsetsDirectional.fromSTEB(
                                16.0, 4.0, 16.0, 4.0),
                            hidesUnderline: true,
                            isOverButton: true,
                            isSearchable: false,
                            isMultiSelect: false,
                          ),
                        ),
                      ],
                    ),
                  ),
                if ((_model.typeofVisitValue == 'Sick (New Problem)') ||
                    ((_model.typeofVisitValue == 'Enfermo (nuevo problema)') ||
                        ((_model.typeofVisitValue == '生病了（新問題）') ||
                            (_model.typeofVisitValue == 'Ốm (Vấn đề mới)') ||
                            (_model.typeofVisitValue == 'مريض (مشكلة جديدة)'))))
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Align(
                          alignment: const AlignmentDirectional(0.0, 0.0),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 10.0, 0.0, 0.0),
                            child: Text(
                              FFLocalizations.of(context).getText(
                                'pxlvpfvo' /* What type of symptoms are you ... */,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyLarge
                                  .override(
                                    fontFamily: 'Noto Serif',
                                    fontSize: 25.0,
                                  ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 10.0, 0.0, 0.0),
                          child: FlutterFlowDropDown<String>(
                            controller: _model.listofSymptomsValueController ??=
                                FormFieldController<String>(null),
                            options: [
                              FFLocalizations.of(context).getText(
                                'v74dx0bk' /* Abdominal pain */,
                              ),
                              FFLocalizations.of(context).getText(
                                'vvboidhw' /* Allergic reactions */,
                              ),
                              FFLocalizations.of(context).getText(
                                '9jfnr6w7' /* Bronchitis */,
                              ),
                              FFLocalizations.of(context).getText(
                                'em4d41wq' /* Broken bones */,
                              ),
                              FFLocalizations.of(context).getText(
                                '4ial464o' /* Chest pain or pressure */,
                              ),
                              FFLocalizations.of(context).getText(
                                'hoz3j17v' /* Diarrhea */,
                              ),
                              FFLocalizations.of(context).getText(
                                'p0mtvtfz' /* Earache */,
                              ),
                              FFLocalizations.of(context).getText(
                                'vcrhxp6i' /* Eye Injury */,
                              ),
                              FFLocalizations.of(context).getText(
                                'qmqw4ke2' /* Fever */,
                              ),
                              FFLocalizations.of(context).getText(
                                'a9z8ldxe' /* Flu */,
                              ),
                              FFLocalizations.of(context).getText(
                                'x5ezoqw1' /* Chronic headaches */,
                              ),
                              FFLocalizations.of(context).getText(
                                'p67gb4n6' /* Loss of consciousness */,
                              ),
                              FFLocalizations.of(context).getText(
                                'rtdgvn4f' /* Rashes */,
                              ),
                              FFLocalizations.of(context).getText(
                                'carm25a9' /* Seizures */,
                              ),
                              FFLocalizations.of(context).getText(
                                '3g4nlkpr' /* Sinus infection */,
                              ),
                              FFLocalizations.of(context).getText(
                                'gzf14azw' /* Small cut - may require stitch... */,
                              ),
                              FFLocalizations.of(context).getText(
                                'jcsl0q05' /* Sore throat */,
                              ),
                              FFLocalizations.of(context).getText(
                                'a9lktjs3' /* Urinary tract infection */,
                              ),
                              FFLocalizations.of(context).getText(
                                'ec2g2i7n' /* Uncontrolled bleeding */,
                              ),
                              FFLocalizations.of(context).getText(
                                'abxxcjnw' /* Vomiting */,
                              )
                            ],
                            onChanged: (val) => setState(
                                () => _model.listofSymptomsValue = val),
                            width: 300.0,
                            height: 60.0,
                            textStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Noto Serif',
                                  fontSize: 20.0,
                                ),
                            hintText: FFLocalizations.of(context).getText(
                              'zajfzfsy' /* Please select... */,
                            ),
                            icon: Icon(
                              Icons.keyboard_arrow_down_rounded,
                              color: FlutterFlowTheme.of(context).secondaryText,
                              size: 24.0,
                            ),
                            fillColor: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            elevation: 2.0,
                            borderColor:
                                FlutterFlowTheme.of(context).primaryText,
                            borderWidth: 2.0,
                            borderRadius: 8.0,
                            margin: const EdgeInsetsDirectional.fromSTEB(
                                16.0, 4.0, 16.0, 4.0),
                            hidesUnderline: true,
                            isOverButton: true,
                            isSearchable: false,
                            isMultiSelect: false,
                          ),
                        ),
                      ],
                    ),
                  ),
                if ((_model.typeofVisitValue == 'Routine Follow Up') ||
                    ((_model.typeofVisitValue == 'Seguimiento de rutina') ||
                        ((_model.typeofVisitValue == '例行跟進') ||
                            ((_model.typeofVisitValue == 'Theo dõi định kỳ') ||
                                (_model.typeofVisitValue ==
                                    'المتابعة الروتينية')))))
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Align(
                          alignment: const AlignmentDirectional(0.0, 0.0),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 10.0, 0.0, 0.0),
                            child: Text(
                              FFLocalizations.of(context).getText(
                                'qoo7vq4w' /* Which recent visit is this pro... */,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyLarge
                                  .override(
                                    fontFamily: 'Noto Serif',
                                    fontSize: 25.0,
                                  ),
                            ),
                          ),
                        ),
                        Builder(
                          builder: (context) => Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 10.0, 0.0, 0.0),
                            child: FlutterFlowDropDown<String>(
                              controller: _model.dropDownValueController ??=
                                  FormFieldController<String>(null),
                              options: [
                                FFLocalizations.of(context).getText(
                                  't31c6iu3' /* Cardiology */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'x0dxdxbj' /* Gastroenterology */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'llvf0rjr' /* Dermatology */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'gfiu5uvj' /* Orthopedics  */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'f78sg0oa' /* Neurology */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'gyi88idv' /* Pulmonary */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'i872hr6x' /* Ophthalmology */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'odz5u9g9' /* Primary Care */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'cou2fjfc' /* Otolaryngology (ENT) */,
                                )
                              ],
                              onChanged: (val) async {
                                setState(() => _model.dropDownValue = val);
                                if ((_model.dropDownValue ==
                                        'Otolaryngology (ENT)') ||
                                    ((_model.dropDownValue ==
                                            'Otorrinolaringología (ENT)') ||
                                        ((_model.dropDownValue ==
                                                '耳鼻喉科 (ENT)') ||
                                            ((_model.dropDownValue ==
                                                    'Khoa Tai Mũi Họng (ENT)') ||
                                                (_model.dropDownValue ==
                                                    'طب الأنف والأذن والحنجرة'))))) {
                                  await showDialog(
                                    context: context,
                                    builder: (dialogContext) {
                                      return Dialog(
                                        elevation: 0,
                                        insetPadding: EdgeInsets.zero,
                                        backgroundColor: Colors.transparent,
                                        alignment:
                                            const AlignmentDirectional(0.0, 0.0)
                                                .resolve(
                                                    Directionality.of(context)),
                                        child: GestureDetector(
                                          onTap: () => _model
                                                  .unfocusNode.canRequestFocus
                                              ? FocusScope.of(context)
                                                  .requestFocus(
                                                      _model.unfocusNode)
                                              : FocusScope.of(context)
                                                  .unfocus(),
                                          child: const ENTFollowUpWidget(),
                                        ),
                                      );
                                    },
                                  ).then((value) => setState(() {}));
                                } else {
                                  if ((_model.dropDownValue == 'Neurology') ||
                                      ((_model.dropDownValue == 'Neurología') ||
                                          ((_model.dropDownValue == '神經病學') ||
                                              ((_model.dropDownValue ==
                                                      'Thần kinh học') ||
                                                  (_model.dropDownValue ==
                                                      'علم الأعصاب'))))) {
                                    await showDialog(
                                      context: context,
                                      builder: (dialogContext) {
                                        return Dialog(
                                          elevation: 0,
                                          insetPadding: EdgeInsets.zero,
                                          backgroundColor: Colors.transparent,
                                          alignment: const AlignmentDirectional(
                                                  0.0, 0.0)
                                              .resolve(
                                                  Directionality.of(context)),
                                          child: GestureDetector(
                                            onTap: () => _model
                                                    .unfocusNode.canRequestFocus
                                                ? FocusScope.of(context)
                                                    .requestFocus(
                                                        _model.unfocusNode)
                                                : FocusScope.of(context)
                                                    .unfocus(),
                                            child: const SizedBox(
                                              height: 500.0,
                                              width: double.infinity,
                                              child: NeurologyFollowUpWidget(),
                                            ),
                                          ),
                                        );
                                      },
                                    ).then((value) => setState(() {}));

                                    return;
                                  } else {
                                    await showDialog(
                                      context: context,
                                      builder: (alertDialogContext) {
                                        return AlertDialog(
                                          title: const Text('Uh oh...'),
                                          content: const Text(
                                              'Looks like you haven\'t been seen recently by the speciaist you\'ve selected.'),
                                          actions: [
                                            TextButton(
                                              onPressed: () => Navigator.pop(
                                                  alertDialogContext),
                                              child: const Text('Close'),
                                            ),
                                          ],
                                        );
                                      },
                                    );
                                  }
                                }
                              },
                              width: 300.0,
                              height: 60.0,
                              textStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Noto Serif',
                                    fontSize: 20.0,
                                  ),
                              hintText: FFLocalizations.of(context).getText(
                                '0fkl8ne0' /* Please select... */,
                              ),
                              icon: Icon(
                                Icons.keyboard_arrow_down_rounded,
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                size: 24.0,
                              ),
                              fillColor: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              elevation: 2.0,
                              borderColor:
                                  FlutterFlowTheme.of(context).primaryText,
                              borderWidth: 2.0,
                              borderRadius: 8.0,
                              margin: const EdgeInsetsDirectional.fromSTEB(
                                  16.0, 4.0, 16.0, 4.0),
                              hidesUnderline: true,
                              isOverButton: true,
                              isSearchable: false,
                              isMultiSelect: false,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                if (((_model.listofSymptomsValue == 'Allergic reactions') ||
                        ((_model.listofSymptomsValue ==
                                'Reacciones alérgicas') ||
                            ((_model.listofSymptomsValue == '過敏反應') ||
                                (_model.listofSymptomsValue ==
                                    'Phản ứng dị ứng') ||
                                (_model.listofSymptomsValue ==
                                    'ردود الفعل التحسسية')))) ||
                    ((_model.listofSymptomsValue == 'Rashes') ||
                        ((_model.listofSymptomsValue == 'erupciones') ||
                            ((_model.listofSymptomsValue == '皮疹') ||
                                ((_model.listofSymptomsValue == 'phát ban') ||
                                    (_model.listofSymptomsValue ==
                                        'الطفح الجلدي'))))))
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 10.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Align(
                          alignment: const AlignmentDirectional(0.0, 0.0),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 10.0, 0.0, 0.0),
                            child: Text(
                              FFLocalizations.of(context).getText(
                                'j92o77s1' /* Hmm... It looks like you need ... */,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyLarge
                                  .override(
                                    fontFamily: 'Noto Serif',
                                    fontSize: 30.0,
                                  ),
                            ),
                          ),
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.asset(
                            'assets/images/Derm_Doctor.png',
                            width: 740.0,
                            height: 200.0,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Builder(
                          builder: (context) => Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 5.0, 0.0, 0.0),
                            child: FFButtonWidget(
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
                                      child: GestureDetector(
                                        onTap: () => _model
                                                .unfocusNode.canRequestFocus
                                            ? FocusScope.of(context)
                                                .requestFocus(
                                                    _model.unfocusNode)
                                            : FocusScope.of(context).unfocus(),
                                        child: const DermAvailApptsWidget(),
                                      ),
                                    );
                                  },
                                ).then((value) => setState(() {}));
                              },
                              text: FFLocalizations.of(context).getText(
                                '8uw4827f' /* View Available Appointments */,
                              ),
                              options: FFButtonOptions(
                                height: 50.0,
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
                                      fontSize: 25.0,
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
                      ],
                    ),
                  ),
                if ((_model.listofSymptomsValue == 'Bronchitis') ||
                    ((_model.listofSymptomsValue == 'Bronquitis') ||
                        ((_model.listofSymptomsValue == '支氣管炎') ||
                            ((_model.listofSymptomsValue == 'Viêm phế quản') ||
                                (_model.listofSymptomsValue ==
                                    'التهاب شعبي')))))
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 10.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Align(
                          alignment: const AlignmentDirectional(0.0, 0.0),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 10.0, 0.0, 0.0),
                            child: Text(
                              FFLocalizations.of(context).getText(
                                'cqqf2xv6' /* Hmm... It looks like you need ... */,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyLarge
                                  .override(
                                    fontFamily: 'Noto Serif',
                                    fontSize: 18.0,
                                  ),
                            ),
                          ),
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.asset(
                            'assets/images/Pulmonary_Doctor.png',
                            width: 740.0,
                            height: 200.0,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Builder(
                          builder: (context) => Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 5.0, 0.0, 0.0),
                            child: FFButtonWidget(
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
                                      child: GestureDetector(
                                        onTap: () => _model
                                                .unfocusNode.canRequestFocus
                                            ? FocusScope.of(context)
                                                .requestFocus(
                                                    _model.unfocusNode)
                                            : FocusScope.of(context).unfocus(),
                                        child: const PulmAvailApptsWidget(),
                                      ),
                                    );
                                  },
                                ).then((value) => setState(() {}));
                              },
                              text: FFLocalizations.of(context).getText(
                                'ur78j3qx' /* View Available Appointments */,
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
                      ],
                    ),
                  ),
                if ((_model.listofSymptomsValue == 'Broken bones') ||
                    ((_model.listofSymptomsValue == 'Huesos rotos') ||
                        ((_model.listofSymptomsValue == '骨折') ||
                            ((_model.listofSymptomsValue == 'Xương bị gãy') ||
                                (_model.listofSymptomsValue == 'عظام مهشمة')))))
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 10.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Align(
                          alignment: const AlignmentDirectional(0.0, 0.0),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 10.0, 0.0, 0.0),
                            child: Text(
                              FFLocalizations.of(context).getText(
                                'fh5rpwlo' /* Hmm... It looks like you need ... */,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyLarge
                                  .override(
                                    fontFamily: 'Noto Serif',
                                    fontSize: 18.0,
                                  ),
                            ),
                          ),
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.asset(
                            'assets/images/Ortho_Doctor_(1).png',
                            width: 740.0,
                            height: 200.0,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Builder(
                          builder: (context) => Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 5.0, 0.0, 0.0),
                            child: FFButtonWidget(
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
                                      child: GestureDetector(
                                        onTap: () => _model
                                                .unfocusNode.canRequestFocus
                                            ? FocusScope.of(context)
                                                .requestFocus(
                                                    _model.unfocusNode)
                                            : FocusScope.of(context).unfocus(),
                                        child: const OrthoApptScheduleWidget(),
                                      ),
                                    );
                                  },
                                ).then((value) => setState(() {}));
                              },
                              text: FFLocalizations.of(context).getText(
                                'p3njxi63' /* View Available Appointments */,
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
                      ],
                    ),
                  ),
                if ((_model.listofSymptomsValue == 'Chest pain or pressure') ||
                    ((_model.listofSymptomsValue ==
                            'Dolor o presión en el pecho') ||
                        ((_model.listofSymptomsValue == '胸痛或有壓迫感') ||
                            ((_model.listofSymptomsValue ==
                                    'Đau ngực hoặc áp lực') ||
                                (_model.listofSymptomsValue ==
                                    'ألم في الصدر أو ضغط')))))
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 10.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Align(
                          alignment: const AlignmentDirectional(0.0, 0.0),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 10.0, 0.0, 0.0),
                            child: Text(
                              FFLocalizations.of(context).getText(
                                'kq5gg5ds' /* Hmm... It looks like you need ... */,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyLarge
                                  .override(
                                    fontFamily: 'Noto Serif',
                                    fontSize: 18.0,
                                  ),
                            ),
                          ),
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.asset(
                            'assets/images/Cardiologist_Doctor.png',
                            width: 740.0,
                            height: 200.0,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 5.0, 0.0, 0.0),
                          child: FFButtonWidget(
                            onPressed: () {
                              print('Button pressed ...');
                            },
                            text: FFLocalizations.of(context).getText(
                              'o4odunzz' /* View Available Appointments */,
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
                if ((_model.listofSymptomsValue == 'Diarrhea') ||
                    ((_model.listofSymptomsValue == 'Earache') ||
                        ((_model.listofSymptomsValue == 'Fever') ||
                            ((_model.listofSymptomsValue == 'Flu') ||
                                ((_model.listofSymptomsValue == 'Sore throat') ||
                                    (_model.listofSymptomsValue ==
                                        'Urinary tract infection'))))) ||
                    ((_model.listofSymptomsValue == 'Diarrea') ||
                        ((_model.listofSymptomsValue == '腹瀉') ||
                            ((_model.listofSymptomsValue == 'Bệnh tiêu chảy') ||
                                ((_model.listofSymptomsValue == 'إسهال') ||
                                    ((_model.listofSymptomsValue ==
                                            'Dolor de oidos') ||
                                        ((_model.listofSymptomsValue == '耳痛') ||
                                            ((_model.listofSymptomsValue ==
                                                    'Đau tai') ||
                                                (_model.listofSymptomsValue ==
                                                    'ألم الأذن'))))))) ||
                        ((_model.listofSymptomsValue == 'Fiebre') ||
                            ((_model.listofSymptomsValue == '發燒') ||
                                ((_model.listofSymptomsValue == 'Sốt') ||
                                    ((_model.listofSymptomsValue == 'حمى') ||
                                        ((_model.listofSymptomsValue == 'Gripe') ||
                                            ((_model.listofSymptomsValue ==
                                                    '流感') ||
                                                ((_model.listofSymptomsValue ==
                                                        'Cúm') ||
                                                    (_model.listofSymptomsValue ==
                                                        'أنفلونزا') ||
                                                    ((_model.listofSymptomsValue ==
                                                            'Infección del tracto urinario') ||
                                                        ((_model.listofSymptomsValue ==
                                                                '泌尿道感染') ||
                                                            ((_model.listofSymptomsValue ==
                                                                    'Nhiễm trùng đường tiết niệu') ||
                                                                ((_model.listofSymptomsValue ==
                                                                        'التهاب المسالك البولية') ||
                                                                    ((_model.listofSymptomsValue == 'Dolor de garganta') ||
                                                                        ((_model.listofSymptomsValue == '喉嚨痛') || ((_model.listofSymptomsValue == 'Đau họng') || (_model.listofSymptomsValue == 'إلتهاب الحلق')))))))))))))))))
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 10.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Align(
                          alignment: const AlignmentDirectional(0.0, 0.0),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 10.0, 0.0, 0.0),
                            child: Text(
                              FFLocalizations.of(context).getText(
                                'w1w2abct' /* Hmm... It looks like you need ... */,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyLarge
                                  .override(
                                    fontFamily: 'Noto Serif',
                                    fontSize: 18.0,
                                  ),
                            ),
                          ),
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.asset(
                            'assets/images/Primary_Care_Doctor.png',
                            width: 740.0,
                            height: 200.0,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Builder(
                          builder: (context) => Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 5.0, 0.0, 0.0),
                            child: FFButtonWidget(
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
                                      child: GestureDetector(
                                        onTap: () => _model
                                                .unfocusNode.canRequestFocus
                                            ? FocusScope.of(context)
                                                .requestFocus(
                                                    _model.unfocusNode)
                                            : FocusScope.of(context).unfocus(),
                                        child: const FMAvailApptsWidget(),
                                      ),
                                    );
                                  },
                                ).then((value) => setState(() {}));
                              },
                              text: FFLocalizations.of(context).getText(
                                'nxdwl1sw' /* View Available Appointments */,
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
                      ],
                    ),
                  ),
                if ((_model.listofSymptomsValue == 'Uncontrolled bleeding') ||
                    (_model.listofSymptomsValue == 'Vomiting') ||
                    (_model.listofSymptomsValue ==
                        'Small cut that may require stitching') ||
                    ((_model.listofSymptomsValue == 'Sangrado incontrolado') ||
                        ((_model.listofSymptomsValue == '失控的出血') ||
                            ((_model.listofSymptomsValue ==
                                    'Chảy máu không kiểm soát') ||
                                ((_model.listofSymptomsValue ==
                                        'نزيف غير منضبط') ||
                                    ((_model.listofSymptomsValue ==
                                            'Vómitos') ||
                                        ((_model.listofSymptomsValue == '嘔吐') ||
                                            ((_model.listofSymptomsValue ==
                                                    'Nôn mửa') ||
                                                (_model.listofSymptomsValue ==
                                                    'القيء') ||
                                                ((_model.listofSymptomsValue ==
                                                        'Corte pequeño: puede requerir costura') ||
                                                    ((_model.listofSymptomsValue ==
                                                            '小切口 - 可能需要縫合') ||
                                                        ((_model.listofSymptomsValue ==
                                                                'Vết cắt nhỏ - có thể cần phải khâu') ||
                                                            (_model.listofSymptomsValue ==
                                                                'قطع صغير - قد يتطلب الخياطة'))))))))))))
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 10.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Align(
                          alignment: const AlignmentDirectional(0.0, 0.0),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 10.0, 0.0, 0.0),
                            child: Text(
                              FFLocalizations.of(context).getText(
                                '15dcym9x' /* Hmm... It looks like you need ... */,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyLarge
                                  .override(
                                    fontFamily: 'Noto Serif',
                                    fontSize: 18.0,
                                  ),
                            ),
                          ),
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.asset(
                            'assets/images/Urgent_Care_Doctor.png',
                            width: 740.0,
                            height: 200.0,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Builder(
                          builder: (context) => Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 5.0, 0.0, 0.0),
                            child: FFButtonWidget(
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
                                      child: GestureDetector(
                                        onTap: () => _model
                                                .unfocusNode.canRequestFocus
                                            ? FocusScope.of(context)
                                                .requestFocus(
                                                    _model.unfocusNode)
                                            : FocusScope.of(context).unfocus(),
                                        child: const UrgentCareLocationsWidget(),
                                      ),
                                    );
                                  },
                                ).then((value) => setState(() {}));
                              },
                              text: FFLocalizations.of(context).getText(
                                'd6n3iybv' /* Find Nearest Urgent Care */,
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
                                      fontFamily: 'Readex Pro',
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
                        ),
                      ],
                    ),
                  ),
                if ((_model.listofSymptomsValue == 'Eye Injury') ||
                    ((_model.listofSymptomsValue == 'Herida de ojo') ||
                        ((_model.listofSymptomsValue == '眼睛受傷') ||
                            ((_model.listofSymptomsValue ==
                                    'Chấn thương mắt') ||
                                (_model.listofSymptomsValue ==
                                    'إصابة العين')))))
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 10.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Align(
                          alignment: const AlignmentDirectional(0.0, 0.0),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 10.0, 0.0, 0.0),
                            child: Text(
                              FFLocalizations.of(context).getText(
                                'e2wu5xmt' /* Hmm... It looks like you need ... */,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyLarge
                                  .override(
                                    fontFamily: 'Noto Serif',
                                    fontSize: 18.0,
                                  ),
                            ),
                          ),
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.asset(
                            'assets/images/Eye_Care_Doctor.png',
                            width: 740.0,
                            height: 200.0,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Builder(
                          builder: (context) => Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 5.0, 0.0, 0.0),
                            child: FFButtonWidget(
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
                                      child: GestureDetector(
                                        onTap: () => _model
                                                .unfocusNode.canRequestFocus
                                            ? FocusScope.of(context)
                                                .requestFocus(
                                                    _model.unfocusNode)
                                            : FocusScope.of(context).unfocus(),
                                        child: const OPHAvailApptsWidget(),
                                      ),
                                    );
                                  },
                                ).then((value) => setState(() {}));
                              },
                              text: FFLocalizations.of(context).getText(
                                'v75jnk9p' /* View Available Appointments */,
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
                      ],
                    ),
                  ),
                if ((_model.listofSymptomsValue == 'Chronic headaches') ||
                    ((_model.listofSymptomsValue == 'Loss of consciousness') ||
                        (_model.listofSymptomsValue == 'Seizures')) ||
                    ((_model.listofSymptomsValue ==
                            'Dolores de cabeza crónicos') ||
                        ((_model.listofSymptomsValue == '慢性頭痛') ||
                            ((_model.listofSymptomsValue ==
                                    'Đau đầu mãn tính') ||
                                ((_model.listofSymptomsValue ==
                                        'الصداع المزمن') ||
                                    ((_model.listofSymptomsValue ==
                                            'Pérdida de consciencia') ||
                                        ((_model.listofSymptomsValue ==
                                                '意識喪失') ||
                                            ((_model.listofSymptomsValue ==
                                                    'Mất ý thức') ||
                                                ((_model.listofSymptomsValue ==
                                                        'فقدان الوعي') ||
                                                    ((_model.listofSymptomsValue ==
                                                            'Convulsiones') ||
                                                        ((_model.listofSymptomsValue ==
                                                                '癲癇發作') ||
                                                            ((_model.listofSymptomsValue ==
                                                                    'Co giật') ||
                                                                (_model.listofSymptomsValue ==
                                                                    'النوبات')))))))))))))
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 10.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Align(
                          alignment: const AlignmentDirectional(0.0, 0.0),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 10.0, 0.0, 0.0),
                            child: Text(
                              FFLocalizations.of(context).getText(
                                'd5w7kggo' /* Hmm... It looks like you need ... */,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyLarge
                                  .override(
                                    fontFamily: 'Noto Serif',
                                    fontSize: 18.0,
                                  ),
                            ),
                          ),
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.asset(
                            'assets/images/Neuro_Doctor.png',
                            width: 740.0,
                            height: 200.0,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Builder(
                          builder: (context) => Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 5.0, 0.0, 0.0),
                            child: FFButtonWidget(
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
                                      child: GestureDetector(
                                        onTap: () => _model
                                                .unfocusNode.canRequestFocus
                                            ? FocusScope.of(context)
                                                .requestFocus(
                                                    _model.unfocusNode)
                                            : FocusScope.of(context).unfocus(),
                                        child: const NeuroApptScheduleWidget(),
                                      ),
                                    );
                                  },
                                ).then((value) => setState(() {}));
                              },
                              text: FFLocalizations.of(context).getText(
                                'g0icmgn9' /* View Available Appointments */,
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
                      ],
                    ),
                  ),
                if ((_model.listofSymptomsValue == 'Sinus infection') ||
                    ((_model.listofSymptomsValue == 'Infección sinusal') ||
                        ((_model.listofSymptomsValue == '鼻竇感染') ||
                            ((_model.listofSymptomsValue == 'Viêm xoang') ||
                                (_model.listofSymptomsValue ==
                                    'التهابات الجيوب الانفية')))))
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 10.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Align(
                          alignment: const AlignmentDirectional(0.0, 0.0),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 10.0, 0.0, 0.0),
                            child: Text(
                              FFLocalizations.of(context).getText(
                                'ilvnwhvk' /* Hmm... It looks like you need ... */,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyLarge
                                  .override(
                                    fontFamily: 'Noto Serif',
                                    fontSize: 18.0,
                                  ),
                            ),
                          ),
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.asset(
                            'assets/images/ENT_Doctor.png',
                            width: 740.0,
                            height: 200.0,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Builder(
                          builder: (context) => Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 5.0, 0.0, 0.0),
                            child: FFButtonWidget(
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
                                      child: GestureDetector(
                                        onTap: () => _model
                                                .unfocusNode.canRequestFocus
                                            ? FocusScope.of(context)
                                                .requestFocus(
                                                    _model.unfocusNode)
                                            : FocusScope.of(context).unfocus(),
                                        child: const ENTApptScheduleWidget(),
                                      ),
                                    );
                                  },
                                ).then((value) => setState(() {}));
                              },
                              text: FFLocalizations.of(context).getText(
                                '6u6hyrq0' /* View Available Appointments */,
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
                      ],
                    ),
                  ),
                if ((_model.listofSymptomsValue == 'Abdominal pain') ||
                    ((_model.listofSymptomsValue == 'Dolor abdominal') ||
                        ((_model.listofSymptomsValue == '腹痛') ||
                            ((_model.listofSymptomsValue == 'Đau bụng') ||
                                (_model.listofSymptomsValue == 'وجع بطن')))))
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 10.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Align(
                          alignment: const AlignmentDirectional(0.0, 0.0),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 10.0, 0.0, 0.0),
                            child: Text(
                              FFLocalizations.of(context).getText(
                                'm3i6s64i' /* Hmm... It looks like you need ... */,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyLarge
                                  .override(
                                    fontFamily: 'Noto Serif',
                                    fontSize: 18.0,
                                  ),
                            ),
                          ),
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.asset(
                            'assets/images/Gastro_Doctor.png',
                            width: 740.0,
                            height: 200.0,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Builder(
                          builder: (context) => Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 5.0, 0.0, 0.0),
                            child: FFButtonWidget(
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
                                      child: GestureDetector(
                                        onTap: () => _model
                                                .unfocusNode.canRequestFocus
                                            ? FocusScope.of(context)
                                                .requestFocus(
                                                    _model.unfocusNode)
                                            : FocusScope.of(context).unfocus(),
                                        child: const GastroAvailApptsWidget(),
                                      ),
                                    );
                                  },
                                ).then((value) => setState(() {}));
                              },
                              text: FFLocalizations.of(context).getText(
                                'rpcxnnmx' /* View Available Appointments */,
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
                      ],
                    ),
                  ),
                Align(
                  alignment: const AlignmentDirectional(0.0, 1.0),
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                    child: FFButtonWidget(
                      onPressed: () async {
                        setState(() {
                          _model.emergencyValueController?.reset();
                          _model.typeofVisitValueController?.reset();
                          _model.listofSymptomsValueController?.reset();
                          _model.dropDownValueController?.reset();
                        });
                      },
                      text: FFLocalizations.of(context).getText(
                        'qt8yo04w' /* Clear Fields */,
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
