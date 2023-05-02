import 'package:get/get.dart';

class TodoController extends GetxController{
  RxBool isDone = false.obs;
  buttonOntap(){
    isDone.value=!isDone.value;
    update();
  }
}