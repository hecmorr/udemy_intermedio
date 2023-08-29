import 'package:flutter/material.dart';
import 'package:miscelaneos/app/view/home_page.dart';
import 'package:miscelaneos/config/theme/app_theme.dart';
import 'package:miscelaneos/l10n/l10n.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme().getTheme(),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      home: const HomePage(),
    );
  }
}
