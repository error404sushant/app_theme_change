import 'package:app_theme_change/features/app_provider/app_tehem_provider.dart';
import 'package:app_theme_change/util/app_common_method/app_validator.dart';
import 'package:app_theme_change/util/theme/custom_text_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'home_bloc.dart';

//region Home Screen
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}
//endregion

class _HomeScreenState extends State<HomeScreen> {
  //region Build
  late HomeBloc homeBloc;
  //endregion
  //region Init
  @override
  void initState() {
    homeBloc = HomeBloc(context);
    homeBloc.init();
    super.initState();
  }
  //endregion
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Hello"),),
      body: body(),
    );
  }


  //region Body
Widget body(){
    return ListView(
      padding: EdgeInsets.symmetric(horizontal: 20),
      shrinkWrap: true,
      children: [
        Row(
          children: [
            Container(height: 100.h,width: 100.w,color: Colors.green,),
          ],
        ),

        Text("100 h and 100 w",style: Theme.of(context).textTheme.appDisplayLarge(context),),

        Row(
          children: [
            Container(height: 100.h,width: 100.h,color: Colors.green,),
          ],
        ),

        Text("100 h and 100 h",style: Theme.of(context).textTheme.appDisplayLarge(context),),

        Row(
          children: [
            Container(
              decoration: BoxDecoration(
              color: Colors.green,
                borderRadius: BorderRadius.circular(20.r),
              ),
              height: 100.r,width: 100.r),
          ],
        ),

        Text("100 r and 100 r",style: Theme.of(context).textTheme.appTitleSmall(context),),






        CupertinoButton(child: Text("Switch theme",style: Theme.of(context).textTheme.bodyMedium,), onPressed: (){
          Provider.of<AppThemeProvider>(context, listen: false).toggleTheme(context: context);
        }),
        // Form(
        //   key: homeBloc.formKey,
        //   child: Column(
        //     children: [
        //       TextFormField(
        //         controller: homeBloc.emailTextCtrl,
        //
        //         onChanged: (value){
        //           homeBloc.onChangeText();
        //         },
        //         validator: (value){
        //           return AppValidator.validatePassword(password: value);
        //         },
        //
        //       ),
        //       ElevatedButton(onPressed: (){
        //         homeBloc.onChangeText();
        //       }, child: Text("Check"))
        //     ],
        //   ),
        //
        // ),

      ],
    );
}
//endregion



}
