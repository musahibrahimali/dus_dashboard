import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:dus_dashboard/index.dart';
import 'package:dynamic_color/dynamic_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_web_plugins/url_strategy.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:get/get.dart';
import 'package:responsive_framework/responsive_framework.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  serviceInitializers.initializeServices();

  /// set url strategy
  usePathUrlStrategy();

  /// set up the app
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return DynamicColorBuilder(
      builder: (
        ColorScheme? lightDynamic,
        ColorScheme? darkDynamic,
      ) {
        ColorScheme lightScheme;
        ColorScheme darkScheme;

        if (lightDynamic != null && darkDynamic != null) {
          lightScheme = lightDynamic.harmonized();
          lightCustomColors = lightCustomColors.harmonized(lightScheme);

          // Repeat for the dark color scheme.
          darkScheme = darkDynamic.harmonized();
          darkCustomColors = darkCustomColors.harmonized(darkScheme);
        } else {
          // Otherwise, use fallback schemes.
          lightScheme = lightColorScheme;
          darkScheme = darkColorScheme;
        }

        return ScreenUtilInit(
          designSize: const Size(360, 690),
          minTextAdapt: true,
          splitScreenMode: true,
          builder: (BuildContext context, Widget? child) {
            return AdaptiveTheme(
              light: ThemeData(
                useMaterial3: true,
                colorScheme: lightScheme,
                extensions: <ThemeExtension<dynamic>>[lightCustomColors],
              ),
              dark: ThemeData(
                useMaterial3: true,
                colorScheme: darkScheme,
                extensions: <ThemeExtension<dynamic>>[darkCustomColors],
              ),
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
                  child: GetMaterialApp.router(
                    debugShowCheckedModeBanner: false,
                    theme: ThemeData(
                      useMaterial3: true,
                      colorScheme: lightScheme,
                      extensions: <ThemeExtension<dynamic>>[lightCustomColors],
                    ),
                    darkTheme: ThemeData(
                      useMaterial3: true,
                      colorScheme: darkScheme,
                      extensions: <ThemeExtension<dynamic>>[darkCustomColors],
                    ),
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
                  ),
                );
              },
            );
          },
        );
      },
    );
  }
}
