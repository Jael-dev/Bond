import 'package:bond_mobile/src/router/router.gr.dart';
import 'package:bond_mobile/src/utils/palette.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:google_fonts/google_fonts.dart';
import 'settings/settings_controller.dart';

/// The Widget that configures your application.
class Bond extends StatelessWidget {
  Bond({
    Key? key,
    required this.settingsController,
  }) : super(key: key);

  final SettingsController settingsController;
  final AppRouter _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return AnimatedBuilder(
      animation: settingsController,
      builder: (BuildContext context, Widget? child) {
        return MaterialApp.router(
          routerDelegate: _appRouter.delegate(),
          routeInformationParser: _appRouter.defaultRouteParser(),
          restorationScopeId: 'app',
          debugShowCheckedModeBanner: false,
          localizationsDelegates: const [
            AppLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: const [Locale('en'), Locale('fr')],
          onGenerateTitle: (BuildContext context) =>
              AppLocalizations.of(context)!.appTitle,
          theme: ThemeData(
            scaffoldBackgroundColor: Palette.white,
            appBarTheme: AppBarTheme(
              backgroundColor: Palette.white,
              elevation: 1,
              surfaceTintColor: Palette.white,
              shadowColor: Palette.grey.withOpacity(0.3),
              iconTheme: IconThemeData(color: Palette.black),
            ),
            useMaterial3: true,
            textSelectionTheme: TextSelectionThemeData(
              cursorColor: Palette.dark,
            ),
            textTheme: GoogleFonts.arimoTextTheme(textTheme).apply(
              bodyColor: Colors.black,
              displayColor: Colors.black,
            ),
          ),
          darkTheme: ThemeData.dark(),
          themeMode: ThemeMode.light,
        );
      },
    );
  }
}
