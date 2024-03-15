import '/components/introvideo_arabic_widget.dart';
import '/components/introvideo_chinese_widget.dart';
import '/components/introvideo_e_s_p_widget.dart';
import '/components/introvideo_vietnamese_widget.dart';
import '/components/introvideo_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'auth_home_model.dart';
export 'auth_home_model.dart';

class AuthHomeWidget extends StatefulWidget {
  const AuthHomeWidget({super.key});

  @override
  State<AuthHomeWidget> createState() => _AuthHomeWidgetState();
}

class _AuthHomeWidgetState extends State<AuthHomeWidget> {
  late AuthHomeModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AuthHomeModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      if (FFLocalizations.of(context).getVariableText(
            enText: 'English',
            esText: 'Spanish',
            zh_HantText: 'Chinese',
            viText: 'Vietnamese',
            arText: 'Arabic',
          ) ==
          'English') {
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
                onTap: () => _model.unfocusNode.canRequestFocus
                    ? FocusScope.of(context).requestFocus(_model.unfocusNode)
                    : FocusScope.of(context).unfocus(),
                child: const IntrovideoWidget(),
              ),
            );
          },
        ).then((value) => setState(() {}));

        context.pushNamed('Home');
      } else if (FFLocalizations.of(context).getVariableText(
            enText: '',
            esText: 'Spanish',
            zh_HantText: '',
            viText: '',
            arText: '',
          ) ==
          'Spanish') {
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
                onTap: () => _model.unfocusNode.canRequestFocus
                    ? FocusScope.of(context).requestFocus(_model.unfocusNode)
                    : FocusScope.of(context).unfocus(),
                child: const IntrovideoESPWidget(),
              ),
            );
          },
        ).then((value) => setState(() {}));

        context.pushNamed('Home');
      } else if (FFLocalizations.of(context).getVariableText(
            enText: '',
            esText: '',
            zh_HantText: 'Chinese (Traditional)',
            viText: '',
            arText: '',
          ) ==
          'Chinese (Traditional)') {
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
                onTap: () => _model.unfocusNode.canRequestFocus
                    ? FocusScope.of(context).requestFocus(_model.unfocusNode)
                    : FocusScope.of(context).unfocus(),
                child: const IntrovideoChineseWidget(),
              ),
            );
          },
        ).then((value) => setState(() {}));

        context.pushNamed('Home');
      } else if (FFLocalizations.of(context).getVariableText(
            enText: '',
            esText: '',
            zh_HantText: '',
            viText: 'Vietnamese',
            arText: '',
          ) ==
          'Vietnamese') {
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
                onTap: () => _model.unfocusNode.canRequestFocus
                    ? FocusScope.of(context).requestFocus(_model.unfocusNode)
                    : FocusScope.of(context).unfocus(),
                child: const IntrovideoVietnameseWidget(),
              ),
            );
          },
        ).then((value) => setState(() {}));

        context.pushNamed('Home');
      } else {
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
                onTap: () => _model.unfocusNode.canRequestFocus
                    ? FocusScope.of(context).requestFocus(_model.unfocusNode)
                    : FocusScope.of(context).unfocus(),
                child: const IntrovideoArabicWidget(),
              ),
            );
          },
        ).then((value) => setState(() {}));

        context.pushNamed('Home');
      }
    });
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) => GestureDetector(
        onTap: () => _model.unfocusNode.canRequestFocus
            ? FocusScope.of(context).requestFocus(_model.unfocusNode)
            : FocusScope.of(context).unfocus(),
        child: Scaffold(
          key: scaffoldKey,
          backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
          body: const SafeArea(
            top: true,
            child: Align(
              alignment: AlignmentDirectional(0.0, 0.0),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 300.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
