import 'package:app_theme_change/services/storage_service/storage_service.dart';
import 'package:flutter/cupertino.dart';

class HomeBloc{
  //region Common variable
  late BuildContext context;
  var hiveManager = HiveManager();
  //endregion

//region Text Editing Controller
  final emailTextCtrl = TextEditingController();
//endregion

//region Controller
//endregion
  //region Constructor
  HomeBloc(this.context);
  final formKey = GlobalKey<FormState>();
  //endregion
//region Init
void init(){




}
//endregion




//region Add data in hive
void addDataInHive() {
  // hiveManager.addOrUpdateData(boxName, key, value)
}
//endregion


//region On change text
void onChangeText(){
  formKey.currentState?.validate();
}
//endregion

}