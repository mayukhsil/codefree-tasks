import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:get/get.dart';

class TimerController extends GetxController {

  @override
  onInit(){
    CountDownController countDownController = CountDownController();
    super.onInit();
  }

  RxInt duration = 0.obs;
  final CountDownController countDownController = CountDownController();


}