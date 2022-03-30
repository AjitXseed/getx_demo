import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:getx_demo/app/module/home/model/home_padge_model.dart';

class HomePageController extends GetxController{
  var homeData = HomeData(counter: 0).obs;

@override
void onInit(){
  //increment();
  super.onInit();
} 


  void increment(){
    homeData.update((val) {
      val!.counter++;
    });
  }

  void decrement(){
    homeData.update((val) {
      val!.counter--;
    });
  }
}