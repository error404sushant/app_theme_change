import 'package:app_theme_change/features/app_provider/app_tehem_provider.dart';
import 'package:app_theme_change/util/app_common_method/app_device_util.dart';
import 'package:app_theme_change/util/app_common_method/app_formater.dart';
import 'package:app_theme_change/util/app_common_method/app_validator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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
    return Column(
      children: [
        Container(height: 100,width: 100,color: Colors.green,),
        Text("Display large",style: Theme.of(context).textTheme.displayLarge,),
        Text("Ram ram",style: Theme.of(context).textTheme.headlineLarge,),
        CupertinoButton(child: Text("Switch theme",style: Theme.of(context).textTheme.bodyMedium,), onPressed: (){
          Provider.of<AppThemeProvider>(context, listen: false).toggleTheme(context: context);
          AppDeviceUtil.vibrate();

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
                AppDeviceUtil.vibrate();
              }, child: Text("Check"))
            ],
          ),

        ),

      ],
    );
}
//endregion



}
