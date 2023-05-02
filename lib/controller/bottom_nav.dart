import 'package:get/get.dart';
import 'package:peace_global_logistics/view/profile.dart';

import '../view/account_details.dart';

class BottomNavController extends GetxController{

  var selecteIndex = 0.obs;
  List pages = [
    TodoList(),
    Profile()
  ];

  navOntap(int index){
    selecteIndex.value =index ;
    update();
  }


}