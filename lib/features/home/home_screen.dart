import 'package:app_theme_change/features/app_provider/app_tehem_provider.dart';
import 'package:app_theme_change/util/app_common_method/app_device_util.dart';
import 'package:app_theme_change/util/app_common_method/app_formater.dart';
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
      physics: AlwaysScrollableScrollPhysics(),
      shrinkWrap: true,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(height: 100.h,width: 100.w,color: Colors.green,),

            Container(height: 100,width: 100,color: Colors.green,),
          ],
        ),
        Text("Hello",style: Theme.of(context).textTheme.displayLarge,),
        Text("Hello",style: Theme.of(context).textTheme.titleExtraLarge(context),),
        Text("Ram ram",style: Theme.of(context).textTheme.headlineLarge,),
        CupertinoButton(child: Text("Switch theme",style: Theme.of(context).textTheme.bodyMedium,), onPressed: (){
          Provider.of<AppThemeProvider>(context, listen: false).toggleTheme(context: context);
        }),
        Form(
          key: homeBloc.formKey,
          child: Column(
            children: [
              TextFormField(
                controller: homeBloc.emailTextCtrl,

                onChanged: (value){
                  homeBloc.onChangeText();
                },
                validator: (value){
                  return AppValidator.validatePassword(password: value);
                },

              ),
              ElevatedButton(onPressed: (){
                homeBloc.onChangeText();
              }, child: Text("Check"))
            ],
          ),

        ),

      ],
    );
}
//endregion



}
