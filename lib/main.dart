import 'package:flutter/material.dart';

// pages 
import 'package:componentes/src/pages/alert_page.dart';
// routes
import 'package:componentes/src/routes/routes.dart';

void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Componentes App',
      // home: HomePage()
      initialRoute: '/',
      routes: getApplicactionRoutes(),
      onGenerateRoute: (RouteSettings setting){

        print('Ruta llamada: ${setting.name}');

        return MaterialPageRoute(
          builder: (BuildContext context) => AlertPage()
        );

      },
    );
  }
}