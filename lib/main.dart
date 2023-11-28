import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:dus_dashboard/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_web_plugins/url_strategy.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:get/get.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:responsive_framework/responsive_framework.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  /// [initHiveForFlutter] is required for Hive to work in Flutter
  await initHiveForFlutter();

  final ValueNotifier<GraphQLClient> client = GraphQLHelper.instance.getClient();

  /// set url strategy
  usePathUrlStrategy();
  runApp(App(client: client));

  /// setup data layer
  Get.lazyPut(() => AppController());
  Get.lazyPut(() => AdminController());

  /// Device Orientation Preference
  /// [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]
  SystemChrome.setPreferredOrientations(<DeviceOrientation>[
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
}

class App extends StatelessWidget {
  final ValueNotifier<GraphQLClient> client;
  const App({super.key, required this.client});

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (BuildContext context) {
        return AdaptiveTheme(
          light: AppTheme.light,
          dark: AppTheme.dark,
          initial: AdaptiveThemeMode.light,
          builder: (ThemeData theme, ThemeData darkTheme) {
            return ResponsiveBreakpoints(
              breakpoints: <Breakpoint>[
                const Breakpoint(start: 0.0, end: 450.0, name: MOBILE),
                const Breakpoint(start: 451.0, end: 960.0, name: TABLET),
                Breakpoint(
                  start: 961.0,
                  end: MediaQuery.of(context).size.width,
                  name: DESKTOP,
                ),
              ],
              child: GraphQLProvider(
                client: client,
                child: CacheProvider(
                  child: GetMaterialApp.router(
                    debugShowCheckedModeBanner: false,
                    localizationsDelegates: const <LocalizationsDelegate<dynamic>>[
                      FormBuilderLocalizations.delegate,
                      ...GlobalMaterialLocalizations.delegates,
                      GlobalWidgetsLocalizations.delegate,
                    ],
                    supportedLocales: FormBuilderLocalizations.supportedLocales,
                    title: appStrings.appTitle,
                    routeInformationParser: router.routeInformationParser,
                    routerDelegate: router.routerDelegate,
                    routeInformationProvider: router.routeInformationProvider,
                    theme: theme,
                    darkTheme: darkTheme,
                  ),
                ),
              ),
            );
          },
        );
      },
    );
  }
}
