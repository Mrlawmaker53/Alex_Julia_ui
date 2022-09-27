import 'package:get/get_state_manager/get_state_manager.dart';

class DashbordController extends GetxController{
  var tabIndex =0;
  void IndexChange(int index)
  {
    tabIndex=index;
    update();
  }
}