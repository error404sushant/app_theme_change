import 'package:app_theme_change/features/app_provider/app_tehem_provider.dart';
import 'package:app_theme_change/util/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:app_theme_change/features/home/home_screen.dart';
import 'package:provider/provider.dart';


class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return   MultiProvider(
      providers: [


        ChangeNotifierProvider(create: (context) => AppThemeProvider()),


      ],
      child: Consumer<AppThemeProvider>(
        builder: (BuildContext context, AppThemeProvider appThemeProvider, Widget? child) {
          return MaterialApp(
            themeMode: appThemeProvider.themeMode,
            darkTheme: AppTheme.darkTheme,
            theme: AppTheme.lightTheme,
            debugShowCheckedModeBanner: false,
            scrollBehavior: MyCustomScrollBehavior(),
            home: HomeScreen(),
          );
        },

      ),
    );
    //endregion

  }
}

//region Over scroll blue color remove
class MyCustomScrollBehavior extends MaterialScrollBehavior {

  @override
  Widget buildOverscrollIndicator(BuildContext context, Widget child, ScrollableDetails details) {
    return child;
  }
}
//endregion