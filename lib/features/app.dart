import 'package:app_theme_change/features/app_provider/app_tehem_provider.dart';
import 'package:app_theme_change/features/common_widgets/error_widgets/error_card.dart';
import 'package:app_theme_change/util/app_constants.dart';
import 'package:app_theme_change/util/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:app_theme_change/features/home/home_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';


class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {

  //region Init
  @override
  void initState() {
    super.initState();
  }
  //endregion


  @override
  Widget build(BuildContext context) {
    return   MultiProvider(
      providers: [


        ChangeNotifierProvider(create: (context) => AppThemeProvider()),


      ],
      child: ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        child: Consumer<AppThemeProvider>(
          builder: (BuildContext context, AppThemeProvider appThemeProvider, Widget? child) {
            return MaterialApp(
              themeMode: appThemeProvider.themeMode,
              darkTheme: AppTheme.darkTheme,
              theme: AppTheme.lightTheme,
              debugShowCheckedModeBanner: false,
              // scrollBehavior: MyCustomScrollBehavior(),
              builder: (context,child){
                ScreenUtil.init(context);
                ErrorWidget.builder = (errorDetails) {
                  return const ErrorCard();
                };
                return child!;
              },

              home: HomeScreen(),
            );
          },

        ),
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