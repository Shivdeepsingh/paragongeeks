import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

import 'modals/appstate.dart';
import 'utils/routes.dart';
import 'utils/theme.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) {
    runApp(new MyApp());
  });
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  buildMaterialApp() {
    return MaterialApp(
      title: 'Paragon Greeks',
      theme: new ThemeData(
          primarySwatch: SalonTheme.color,
          iconTheme: IconThemeData(color: SalonTheme.color)),
      initialRoute: "/",
      routes: Routes.routes,
      onGenerateRoute: Routes.generateRoute,
      onUnknownRoute: Routes.unknownRoute,
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (BuildContext context) => AppState(),
        )
      ],
      child: Consumer<AppState>(
        builder: (context, counter, _) {
          return buildMaterialApp();
        },
      ),
    );
  }
}
