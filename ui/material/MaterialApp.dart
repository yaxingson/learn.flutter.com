import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class ButtonDemo extends StatefulWidget {
  const ButtonDemo({super.key});
  @override
  State<ButtonDemo> createState() => _ButtonDemoState();
}

class _ButtonDemoState extends State<ButtonDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Button Demo')),
      body: const Center(
        child: Text('button')
      )
    );
  }
}

class TextDemo extends StatefulWidget {
  const TextDemo({super.key});
  @override
  State<TextDemo> createState() => _TextDemoState();
}

class _TextDemoState extends State<TextDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Text Demo')),
      body: const Center(
        child: Text('text')
      )
    );
  }
}

class NotFound extends StatelessWidget {
  const NotFound({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('404 Not Found'),
      ),
    );
  }
}

class NObserver extends NavigatorObserver {
  @override
  void didPush(Route<dynamic> route, Route<dynamic>? previousRoute) {
    print(route);
    print(previousRoute);
    super.didPush(route, previousRoute);
  }
}

class MaterialAppDemo extends StatelessWidget {
  const MaterialAppDemo({super.key});

  @override
  Widget build(BuildContext context) {
    GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
    GlobalKey<ScaffoldMessengerState> scaffoldMessengerKey = GlobalKey<ScaffoldMessengerState>();      

    return MaterialApp(
      title:'',
      color: Colors.black,
      debugShowCheckedModeBanner: false,
      debugShowMaterialGrid:true,
      showPerformanceOverlay: true,
      showSemanticsDebugger: true,
      navigatorKey: navigatorKey,
      scaffoldMessengerKey: scaffoldMessengerKey,
      navigatorObservers: [NObserver()],
      home: Scaffold(
        appBar: AppBar(title: const Text('AppBar')),
        body: Center(
          child: TextButton(
            onPressed: () {
              Navigator.pushNamed(navigatorKey.currentState?.overlay?.context ?? context, '/404');
            },
            child: const Text('goto')
          )
        ),
        floatingActionButton: FloatingActionButton(
          onPressed:() {
            showDialog(context: navigatorKey.currentState?.overlay?.context ?? context, 
                       builder: (_) => const AlertDialog(title: Text('alert dialog')));
            scaffoldMessengerKey.currentState?.showSnackBar(const SnackBar(content:Text('snack bar')));
          },
          child: const Icon(Icons.add, color: Colors.white)
        ),
      ),
      initialRoute:'/',
      routes:{
        '/button':(_) => const ButtonDemo(),
        '/text': (_) => const TextDemo()
      },
      onGenerateRoute:(setting) {
        return MaterialPageRoute(builder: (context) => const NotFound());
      },
      onGenerateInitialRoutes: (initialRoute) => [],
      onUnknownRoute: (setting) {
        return null;
      },
      builder: (context, child) {
        return Scaffold(
          appBar: AppBar(title: const Text('builder')),
          body: child!,
        );
      },
      onGenerateTitle: (context) {
        return '';
      },
      theme: ThemeData(
        fontFamily:'',
        primaryColor: Colors.blue,
        
      ),
      darkTheme: ThemeData(
        primaryColor: Colors.brown,
      ),
      themeMode: ThemeMode.dark,
      locale: const Locale('zh', 'CN'),
      supportedLocales: const [
        Locale('en', 'US'),
        Locale('zh', 'CN'),
      ],
      localizationsDelegates: const <LocalizationsDelegate<Object>>[
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      localeResolutionCallback: (locale, supportedLocales) {
        if (locale != null) {
          return locale;
        }
        
        for (final Locale supportedLocale in supportedLocales) {
          if (locale?.languageCode == supportedLocale.languageCode &&
              locale?.countryCode == supportedLocale.countryCode) {
            return supportedLocale;
          }
        }        
  
        return supportedLocales.first;
      },
      localeListResolutionCallback: (locales, supportedLocales) {
         if (locales == null || locales.isEmpty) {
          return supportedLocales.first;
        }

        for (final Locale locale in locales) {
          for (final Locale supportedLocale in supportedLocales) {
            if (locale.languageCode == supportedLocale.languageCode &&
                locale.countryCode == supportedLocale.countryCode) {
              return supportedLocale;
            }
          }
        }
        return supportedLocales.first;
      },   
    );
  }
}

void main() {
  runApp(const MaterialAppDemo());
}
