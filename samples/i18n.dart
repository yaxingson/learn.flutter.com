import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class FormLocalizations {
  final Locale _locale;

  FormLocalizations(this._locale);

  static Map<String, Map<String, String>> _localized = {
    'en_US': {'registry': 'registry'},
    'zh_CN': {'registry': '注册'},
    'ja': {'registry': 'レジストリ'}
  };

  String get(String path) {
    return _localized[_locale.toString()]![path]!;
  }
}

class FormLocalizationsDelegate
    extends LocalizationsDelegate<FormLocalizations> {
  @override
  Future<FormLocalizations> load(Locale locale) {
    return SynchronousFuture(FormLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) {
    return true;
  }

  @override
  bool shouldReload(covariant LocalizationsDelegate<FormLocalizations> old) {
    return false;
  }
}

class I18nDemo extends StatelessWidget {
  @override
  Widget build(BuildContext ctx) {
    final Locale locale = Localizations.localeOf(ctx);
    final String text =
        Localizations.of(ctx, FormLocalizations).get('registry');

    return Center(
        child: Column(
      children: [
        Text('${locale.languageCode}-${locale.countryCode}'),
        Text('${locale.toString()}'),
        Text(text),
      ],
    ));
  }
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext ctx) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        locale: Locale('zh', 'CN'),
        localizationsDelegates: [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          FormLocalizationsDelegate(),
        ],
        supportedLocales: [
          Locale('en', 'US'),
          Locale('zh', 'CN'),
          Locale('ja')
        ],
        localeResolutionCallback: (locale, supportedLocales) {
          if (locale != null) {
            return locale;
          }
          return Locale('zh', 'CN');
        },
        home: Scaffold(body: I18nDemo()));
  }
}

main() => runApp(App());
