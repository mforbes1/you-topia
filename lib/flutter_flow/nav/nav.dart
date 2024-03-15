import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '/index.dart';
import '/flutter_flow/flutter_flow_util.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';

const kTransitionInfoKey = '__transition_info__';

class AppStateNotifier extends ChangeNotifier {
  AppStateNotifier._();

  static AppStateNotifier? _instance;
  static AppStateNotifier get instance => _instance ??= AppStateNotifier._();

  bool showSplashImage = true;

  void stopShowingSplashImage() {
    showSplashImage = false;
    notifyListeners();
  }
}

GoRouter createRouter(AppStateNotifier appStateNotifier) => GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      refreshListenable: appStateNotifier,
      errorBuilder: (context, state) => const WelcomeScreenWidget(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) => const WelcomeScreenWidget(),
        ),
        FFRoute(
          name: 'Home',
          path: '/home',
          builder: (context, params) => const HomeWidget(),
        ),
        FFRoute(
          name: 'AppointmentDetails',
          path: '/appointmentDetails',
          builder: (context, params) => AppointmentDetailsWidget(
            scheduledAppt: params.getParam('scheduledAppt', ParamType.bool),
          ),
        ),
        FFRoute(
          name: 'BookAppt',
          path: '/bookAppt',
          builder: (context, params) => const BookApptWidget(),
        ),
        FFRoute(
          name: 'auth_home',
          path: '/authHome',
          builder: (context, params) => const AuthHomeWidget(),
        ),
        FFRoute(
          name: 'WelcomeScreen',
          path: '/welcomeScreen',
          builder: (context, params) => const WelcomeScreenWidget(),
        ),
        FFRoute(
          name: 'auth_Create',
          path: '/authCreate',
          builder: (context, params) => const AuthCreateWidget(),
        ),
        FFRoute(
          name: 'auth_Login',
          path: '/authLogin',
          builder: (context, params) => const AuthLoginWidget(),
        ),
        FFRoute(
          name: 'Labs',
          path: '/labs',
          builder: (context, params) => const LabsWidget(),
        ),
        FFRoute(
          name: 'CopyMedicalRecords',
          path: '/copyMedicalRecords',
          builder: (context, params) => const CopyMedicalRecordsWidget(),
        ),
        FFRoute(
          name: 'SendMedicalRecords',
          path: '/sendMedicalRecords',
          builder: (context, params) => const SendMedicalRecordsWidget(),
        ),
        FFRoute(
          name: 'HelpPage',
          path: '/helpPage',
          builder: (context, params) => const HelpPageWidget(),
        ),
        FFRoute(
          name: 'MoreDetailsAVSNeuro',
          path: '/moreDetailsAVSNeuro',
          builder: (context, params) => MoreDetailsAVSNeuroWidget(
            scheduledAppt: params.getParam('scheduledAppt', ParamType.bool),
          ),
        ),
        FFRoute(
          name: 'MoreDetailsAVSENT',
          path: '/moreDetailsAVSENT',
          builder: (context, params) => MoreDetailsAVSENTWidget(
            scheduledAppt: params.getParam('scheduledAppt', ParamType.bool),
          ),
        ),
        FFRoute(
          name: 'AllMessages',
          path: '/allMessages',
          builder: (context, params) => AllMessagesWidget(
            messageENT: params.getParam('messageENT', ParamType.String),
          ),
        ),
        FFRoute(
          name: 'ActivityNotifications',
          path: '/activityNotifications',
          builder: (context, params) => const ActivityNotificationsWidget(),
        ),
        FFRoute(
          name: 'Account',
          path: '/account',
          builder: (context, params) => AccountWidget(
            userName: params.getParam('userName', ParamType.String),
          ),
        ),
        FFRoute(
          name: 'Bill',
          path: '/bill',
          builder: (context, params) => BillWidget(
            scheduledAppt: params.getParam('scheduledAppt', ParamType.bool),
          ),
        ),
        FFRoute(
          name: 'MedicationManagementCopy',
          path: '/medicationManagementCopy',
          builder: (context, params) => const MedicationManagementCopyWidget(),
        )
      ].map((r) => r.toRoute(appStateNotifier)).toList(),
      observers: [routeObserver],
    );

extension NavParamExtensions on Map<String, String?> {
  Map<String, String> get withoutNulls => Map.fromEntries(
        entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
}

extension NavigationExtensions on BuildContext {
  void safePop() {
    // If there is only one route on the stack, navigate to the initial
    // page instead of popping.
    if (canPop()) {
      pop();
    } else {
      go('/');
    }
  }
}

extension _GoRouterStateExtensions on GoRouterState {
  Map<String, dynamic> get extraMap =>
      extra != null ? extra as Map<String, dynamic> : {};
  Map<String, dynamic> get allParams => <String, dynamic>{}
    ..addAll(pathParameters)
    ..addAll(queryParameters)
    ..addAll(extraMap);
  TransitionInfo get transitionInfo => extraMap.containsKey(kTransitionInfoKey)
      ? extraMap[kTransitionInfoKey] as TransitionInfo
      : TransitionInfo.appDefault();
}

class FFParameters {
  FFParameters(this.state, [this.asyncParams = const {}]);

  final GoRouterState state;
  final Map<String, Future<dynamic> Function(String)> asyncParams;

  Map<String, dynamic> futureParamValues = {};

  // Parameters are empty if the params map is empty or if the only parameter
  // present is the special extra parameter reserved for the transition info.
  bool get isEmpty =>
      state.allParams.isEmpty ||
      (state.extraMap.length == 1 &&
          state.extraMap.containsKey(kTransitionInfoKey));
  bool isAsyncParam(MapEntry<String, dynamic> param) =>
      asyncParams.containsKey(param.key) && param.value is String;
  bool get hasFutures => state.allParams.entries.any(isAsyncParam);
  Future<bool> completeFutures() => Future.wait(
        state.allParams.entries.where(isAsyncParam).map(
          (param) async {
            final doc = await asyncParams[param.key]!(param.value)
                .onError((_, __) => null);
            if (doc != null) {
              futureParamValues[param.key] = doc;
              return true;
            }
            return false;
          },
        ),
      ).onError((_, __) => [false]).then((v) => v.every((e) => e));

  dynamic getParam<T>(
    String paramName,
    ParamType type, [
    bool isList = false,
  ]) {
    if (futureParamValues.containsKey(paramName)) {
      return futureParamValues[paramName];
    }
    if (!state.allParams.containsKey(paramName)) {
      return null;
    }
    final param = state.allParams[paramName];
    // Got parameter from `extras`, so just directly return it.
    if (param is! String) {
      return param;
    }
    // Return serialized value.
    return deserializeParam<T>(
      param,
      type,
      isList,
    );
  }
}

class FFRoute {
  const FFRoute({
    required this.name,
    required this.path,
    required this.builder,
    this.requireAuth = false,
    this.asyncParams = const {},
    this.routes = const [],
  });

  final String name;
  final String path;
  final bool requireAuth;
  final Map<String, Future<dynamic> Function(String)> asyncParams;
  final Widget Function(BuildContext, FFParameters) builder;
  final List<GoRoute> routes;

  GoRoute toRoute(AppStateNotifier appStateNotifier) => GoRoute(
        name: name,
        path: path,
        pageBuilder: (context, state) {
          fixStatusBarOniOS16AndBelow(context);
          final ffParams = FFParameters(state, asyncParams);
          final page = ffParams.hasFutures
              ? FutureBuilder(
                  future: ffParams.completeFutures(),
                  builder: (context, _) => builder(context, ffParams),
                )
              : builder(context, ffParams);
          final child = page;

          final transitionInfo = state.transitionInfo;
          return transitionInfo.hasTransition
              ? CustomTransitionPage(
                  key: state.pageKey,
                  child: child,
                  transitionDuration: transitionInfo.duration,
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) =>
                          PageTransition(
                    type: transitionInfo.transitionType,
                    duration: transitionInfo.duration,
                    reverseDuration: transitionInfo.duration,
                    alignment: transitionInfo.alignment,
                    child: child,
                  ).buildTransitions(
                    context,
                    animation,
                    secondaryAnimation,
                    child,
                  ),
                )
              : MaterialPage(key: state.pageKey, child: child);
        },
        routes: routes,
      );
}

class TransitionInfo {
  const TransitionInfo({
    required this.hasTransition,
    this.transitionType = PageTransitionType.fade,
    this.duration = const Duration(milliseconds: 300),
    this.alignment,
  });

  final bool hasTransition;
  final PageTransitionType transitionType;
  final Duration duration;
  final Alignment? alignment;

  static TransitionInfo appDefault() => const TransitionInfo(hasTransition: false);
}

class RootPageContext {
  const RootPageContext(this.isRootPage, [this.errorRoute]);
  final bool isRootPage;
  final String? errorRoute;

  static bool isInactiveRootPage(BuildContext context) {
    final rootPageContext = context.read<RootPageContext?>();
    final isRootPage = rootPageContext?.isRootPage ?? false;
    final location = GoRouter.of(context).location;
    return isRootPage &&
        location != '/' &&
        location != rootPageContext?.errorRoute;
  }

  static Widget wrap(Widget child, {String? errorRoute}) => Provider.value(
        value: RootPageContext(true, errorRoute),
        child: child,
      );
}
