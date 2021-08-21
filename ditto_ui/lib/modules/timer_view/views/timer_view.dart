import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:ditto_ui/modules/progression_view/views/progression_view.dart';
import 'package:ditto_ui/modules/timer_view/controllers/timer_controller.dart';
import 'package:ditto_ui/styles/app_colors.dart';
import 'package:ditto_ui/styles/app_text_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class TimerView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final Size screenSize = Get.size;
    ScreenUtil.init(
        BoxConstraints(
            maxHeight: screenSize.height, maxWidth: screenSize.width),
        designSize: Size(screenSize.width, screenSize.height));
    return GetBuilder<TimerController>(
        init: TimerController(),
        builder: (controller){
          return Scaffold(
            body: SafeArea(
                child: Padding(
                  padding: EdgeInsets.all(30.sp),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text('Daily UI',style: AppTextStyles.textHeading,),
                          SizedBox(height: 10.h,),
                          Text('Total - 3hr 15min',style: AppTextStyles.textDisabled,),
                        ],
                      ),
                      CircularCountDownTimer(
                        width: Get.width,
                        height: Get.height/4,
                        duration: 10,
                        textFormat: CountdownTextFormat.MM_SS,
                        fillColor: AppColors.primaryColor,
                        ringColor: AppColors.appGrey,
                        initialDuration: 0,
                        autoStart: false,
                        strokeWidth: 20.sp,
                        strokeCap: StrokeCap.round,
                        textStyle: AppTextStyles.textHeading,
                        controller: controller.countDownController,
                        isTimerTextShown: true,
                      ),
                      Row(
                        children: [
                          Expanded(
                            //Press this button to goto progression view
                            child: GestureDetector(
                              onTap: (){
                                Get.to(() => ProgressionView());
                              },
                              child: Container(
                                height: 50.h,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.grey.shade200,
                                ),
                                child: Center(
                                  child: Icon(Icons.arrow_back)
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: InkWell(
                              onTap: (){
                                controller.countDownController.start();
                              },
                              child: Container(
                                height: 50.h,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20.sp),
                                  color: Colors.grey.shade200,
                                ),
                                child: Center(
                                    child: Text('Start',style: AppTextStyles.textContent,)
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              height: 50.h,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.grey.shade200,
                              ),
                              child: Center(
                                  child: Icon(Icons.settings)
                              ),
                            ),
                          ),

                        ],
                      )
                    ],
                  ),
                )
            ),
          );
        }
        );
  }
}
