import 'package:componentes/src/pages/alert_page.dart';
import 'package:componentes/src/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

// import 'package:componentes/src/pages/avatar_page.dart';
// import 'package:componentes/src/pages/home_page.dart';
// import 'package:componentes/src/pages/home_temp.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      localizationsDelegates: [
      GlobalMaterialLocalizations.delegate,
      GlobalWidgetsLocalizations.delegate,
      GlobalCupertinoLocalizations.delegate,
    ],
    supportedLocales: [

    const Locale('en', 'US'), // English, no country code
    const Locale('es', 'ES'), // Spanish, no country code
    ],
      // home: HomePage()
      routes: getApplicationRoutes(), //Metodo para separar las rutas del materialapp
      
      //Rutas definidas manualmente
      //<String, WidgetBuilder>{
      //   '/': (BuildContext context) => HomePage(),
      //   'alert': (BuildContext context) => AlertPage(),
      //   'avatar': (BuildContext context) => AvatarPage(),
      // },

      onGenerateRoute: (RouteSettings settings) {
        print('Ruta llamada ${settings.name}');

        return MaterialPageRoute(  builder: ( BuildContext context ) => AlertPage() );
      },
    );
  }
}
