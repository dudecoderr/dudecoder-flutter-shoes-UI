import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../Model File/shoes_model.dart';
import '../String Files/String_utils.dart';

class Dashboard_pages extends StatelessWidget {
  Dashboard_pages({Key? key}) : super(key: key);

  RxString shoes_1 = 'assets/dashboard_shoes.png'.obs;
  RxInt _selectedIndex = 0.obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 410,
            right: 50,
            width: 256.w,
            child: Image.asset(
              NIKE_Symbol,
            ),
          ),
          Positioned(
            top: 465,
            right: 23,
            width: 315.w,
            child: Image.asset(
              round_Divider,
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              margin: EdgeInsets.only(top: 43, right: 20, left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 40.h,
                        width: 40.h,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          // border: Border.all(color: Colors.orange.shade700),
                          borderRadius: BorderRadius.circular(50.r),
                        ),
                        child: InkWell(
                          onTap: () {
                            Get.back();
                          },
                          child: Icon(
                            Icons.arrow_back_ios_new,
                            color: Colors.black,
                            size: 18.sp,
                          ),
                        ),
                      ),
                      Image.asset(
                        nick_icon_123,
                        height: 29.47,
                        width: 80,
                      ),
                      Container(
                        height: 40.h,
                        width: 40.h,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          // border: Border.all(color: Colors.orange.shade700),
                          borderRadius: BorderRadius.circular(50.r),
                        ),
                        child: Icon(
                          Icons.more_vert,
                          color: Colors.black,
                          size: 18.sp,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Container(
                    // color: Colors.yellow,
                    child: Row(
                      children: [
                        SizedBox(
                          child: Row(
                            children: listShoes
                                .asMap()
                                .entries
                                .map((e) => Obx(() {
                                      return Container(
                                        height: 91.h,
                                        width: 91.w,
                                        margin: EdgeInsets.only(
                                            left: (e.key == 0) ? 0 : 25),
                                        // padding: EdgeInsets.all(3),
                                        decoration: BoxDecoration(
                                          boxShadow: [
                                            BoxShadow(
                                              color: (_selectedIndex.value ==
                                                      e.key)
                                                  ? Color(0xFF8672FF)
                                                      .withOpacity(0.6)
                                                  : Color(0xFFFFFFFF),
                                              blurRadius: 7,
                                              offset: Offset(0, 5),
                                            )
                                          ],
                                          borderRadius:
                                              BorderRadius.circular(25.r),
                                        ),
                                        child: InkWell(
                                          onTap: () {
                                            _selectedIndex.value = e.key;
                                            shoes_1.value = e.value.assetsImage;
                                          },
                                          child: Container(
                                            decoration: BoxDecoration(
                                              gradient: (_selectedIndex.value ==
                                                      e.key)
                                                  ? LinearGradient(
                                                      colors: [
                                                        Color(0xFF8672FF),
                                                        Color(0xFF7D69F4)
                                                            .withOpacity(.7),
                                                      ],
                                                    )
                                                  : LinearGradient(
                                                      colors: [
                                                        Colors.white,
                                                        Colors.white
                                                            .withOpacity(.7),
                                                      ],
                                                    ),
                                              borderRadius:
                                                  BorderRadius.circular(26.r),
                                            ),
                                            child: Image.asset(
                                                e.value.assetsImage),
                                          ),
                                        ),
                                      );
                                    }))
                                .toList(),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Obx(() {
                    return Container(
                      height: 260,
                      // color: Colors.yellow,
                      child: Image.asset(
                        shoes_1.value,
                        width: MediaQuery.of(context).size.width,
                        // fit: BoxFit.cover,
                      ),
                    );
                  }),
                  SizedBox(
                    height: 80.h,
                  ),
                  Text(
                    (Nike_Kyrie),
                    style: TextStyle(
                        fontSize: 48.sp,
                        color: Colors.black,
                        fontFamily: "Gilroy-Bold",
                        fontWeight: FontWeight.w800),
                  ),
                  Text(
                    (Basketball_Shoes),
                    style: TextStyle(
                        fontSize: 22.sp,
                        color: Colors.black,
                        fontFamily: "Gilroy",
                        fontWeight: FontWeight.w400),
                  ),
                  SizedBox(height: 10.w),
                  SizedBox(
                    width: 390.w,
                    child: Text(
                      (dashboard_sub_text),
                      style: TextStyle(
                          fontSize: 15.sp,
                          color: Colors.grey,
                          fontFamily: "Gilroy",
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                  SizedBox(height: 12.h),
                  Row(
                    children: [
                      Column(
                        children: [
                          Text(
                            (Price),
                            style: TextStyle(
                                fontSize: 20.sp,
                                color: Colors.black,
                                fontFamily: "Gilroy",
                                fontWeight: FontWeight.w400),
                          ),
                          Text(
                            ("\$130"),
                            style: TextStyle(
                                fontSize: 28.sp,
                                color: Colors.black,
                                fontFamily: "Gilroy-Bold",
                                fontWeight: FontWeight.w800),
                          )
                        ],
                      ),
                      SizedBox(
                        width: 120.w,
                      ),
                      SizedBox(
                        width: 50.h,
                        height: 50.h,
                        child: ElevatedButton(
                          onPressed: () {
                            // Get.to(HomePage());
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.black,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50.r),
                            ),
                          ),
                          child: Icon(
                            Icons.file_upload_outlined,
                            color: Colors.white,
                            size: 25.sp,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      SizedBox(
                        width: 50.h,
                        height: 50.h,
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                                colors: [Color(0xFF8672FF), Color(0xFF7D69F4)]),
                            borderRadius: BorderRadius.circular(50.r),
                          ),
                          child: ElevatedButton(
                            onPressed: () {
                              // Get.to(HomePage());
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.transparent,
                              onSurface: Colors.transparent,
                              shadowColor: Colors.transparent,
                            ),
                            child: Icon(
                              Icons.shopping_bag_outlined,
                              color: Colors.white,
                              size: 25.sp,
                            ),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
