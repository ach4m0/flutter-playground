import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'package:forms/src/pages/forms-home-page.dart';

class FormsApp extends StatelessWidget {
  const FormsApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FormsHomePage(),
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate
      ],
      supportedLocales: [
        Locale('es', 'ES')
      ],
    );
  }
}
