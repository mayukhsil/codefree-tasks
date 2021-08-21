import 'package:ditto_ui/modules/progression_view/controllers/progression_controller.dart';
import 'package:ditto_ui/styles/app_colors.dart';
import 'package:ditto_ui/styles/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProgressionView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProgressionController>(
      init: ProgressionController(),
      builder: (controller) {
        return Scaffold(
          body: Padding(
            padding: EdgeInsets.all(30.sp),
            child: SafeArea(
              child: Column(
                children: [
                  Column(
                    children: [
                      Text(
                        'Daily UI',
                        style: AppTextStyles.textHeading,
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Text(
                        'Your progression',
                        style: AppTextStyles.textDisabled,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Column(
                    children: [
                      Divider(
                        thickness: 2,
                      ),
                      SizedBox(
                        height: 70.h,
                      ),
                      Text(
                        '03:15:36',
                        style: TextStyle(fontSize: 32.sp),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Text(
                        'Total time',
                        style: AppTextStyles.textDisabled,
                      ),
                      SizedBox(
                        height: 70.h,
                      ),
                      Divider(
                        thickness: 2,
                      ),
                    ],
                  ),
                  Container(
                    height: Get.height / 5,
                    width: Get.width,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '30\$',
                              style: AppTextStyles.textHeading,
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text(
                              'Total earned',
                              style: AppTextStyles.textDisabled,
                            ),
                          ],
                        ),
                        Container(
                          height: 40.h,
                          width: 40.w,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                  color: AppColors.primaryColor, width: 3)),
                          child: Center(
                            child: Text(
                              '\$',
                              style: TextStyle(
                                  fontSize: 20.sp,
                                  color: AppColors.primaryColor),
                            ),
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '60\$',
                              style: AppTextStyles.textHeading,
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text(
                              'Total earned',
                              style: AppTextStyles.textDisabled,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  ListView(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    children: [
                      Container(
                        height: 50.h,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15.sp)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '01:26:34',
                                style: TextStyle(fontSize: 14,color: AppColors.appBlack,fontWeight: FontWeight.w700)
                            ),
                            Text(
                              '14th SEPT',
                              style: AppTextStyles.textDisabled,
                            ),
                            Text(
                              '30\$',
                              style: TextStyle(fontSize: 14,color: AppColors.primaryColor,fontWeight: FontWeight.w700),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 10.h,),
                      Container(
                        height: 50.h,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15.sp)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '01:26:34',
                                style: TextStyle(fontSize: 14,color: AppColors.appBlack,fontWeight: FontWeight.w700)
                            ),
                            Text(
                              '14th SEPT',
                              style: AppTextStyles.textDisabled,
                            ),
                            Text(
                              '3\$',
                              style: TextStyle(fontSize: 14,color: AppColors.primaryColor,fontWeight: FontWeight.w700),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 10.h,),
                      Container(
                        height: 50.h,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15.sp)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '01:26:34',
                                style: TextStyle(fontSize: 14,color: AppColors.appBlack,fontWeight: FontWeight.w700)
                            ),
                            Text(
                              '14th SEPT',
                              style: AppTextStyles.textDisabled,
                            ),
                            Text(
                              '28\$',
                              style: TextStyle(fontSize: 14,color: AppColors.primaryColor,fontWeight: FontWeight.w700),
                            ),
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
