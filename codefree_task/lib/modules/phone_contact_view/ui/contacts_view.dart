import 'package:codefree_task/modules/phone_contact_view/controller/phone_contact_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:search_page/search_page.dart';

class PhoneContactView extends StatelessWidget {
  const PhoneContactView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size screenSize = Get.size;
    ScreenUtil.init(
        BoxConstraints(
            maxHeight: screenSize.height, maxWidth: screenSize.width),
        designSize: Size(screenSize.width, screenSize.height));
    return GetBuilder<PhoneContactController>(
        init: PhoneContactController(),
        builder: (controller) {
          return SafeArea(
              child: Scaffold(
            appBar: AppBar(
              title: Text(
                'Contacts',
                style: TextStyle(fontSize: 18.sp),
              ),
              centerTitle: true,
              actions: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.w),
                  child: GestureDetector(
                      onTap: () async {
                        await showSearch(
                          context: context,
                          delegate: SearchPage<String>(
                              items: controller.contactList,
                              searchStyle: TextStyle(fontSize: 16.sp),
                              searchLabel: 'Search Contacts',
                              filter: (contact) => [contact],
                              builder: (contact) {
                                return Card(
                                  child: Padding(
                                    padding: EdgeInsets.all(10.sp),
                                    child: Row(
                                      children: [
                                        Text(contact, style: TextStyle(fontSize: 16.sp),
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              }),
                        );
                      },
                      child: Icon(Icons.search)),
                )
              ],
            ),
            body: Padding(
              padding: EdgeInsets.all(10.sp),
              child: SingleChildScrollView(
                child: controller.isLoading.value
                    ? Center(child: CircularProgressIndicator())
                    : Column(
                        children: [
                          SizedBox(
                            height: 5.h,
                          ),
                          ListView.builder(
                              shrinkWrap: true,
                              physics: NeverScrollableScrollPhysics(),
                              itemCount: controller.contactList.length,
                              itemBuilder: (context, index) {
                                return Card(
                                  child: Padding(
                                    padding: EdgeInsets.all(10.sp),
                                    child: Row(
                                      children: [
                                        Text(
                                          '${controller.contactList[index]}',
                                          style: TextStyle(fontSize: 16.sp),
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              }),
                        ],
                      ),
              ),
            ),
          ));
        });
  }
}
