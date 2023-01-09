import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:shoes_flutter/UI/Dashboard_pages.dart';

import '../Controller/splash_screen_controller.dart';
import '../String Files/String_utils.dart';

class splash_screen extends StatelessWidget {
  splash_screen({Key? key}) : super(key: key);
  final splashController = Get.put(SplashController());

  @override
  Widget build(BuildContext context) {
    splashController.startAnimation();
    return Scaffold(
      // backgroundColor: Colors.deepPurpleAccent,
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            /*color: Color(0xFF7c4dff)*/
            gradient:
                LinearGradient(colors: [Color(0xFF8672FF), Color(0xFF7D69F4)])),

        // building the layout
        child: LayoutBuilder(
          builder: (context, constraints) {
            return Stack(
              children: [
                Obx(
                  () => AnimatedPositioned(
                    duration: Duration(milliseconds: 1900),
                    top: splashController.animate.value ? 55 : 0,
                    left: splashController.animate.value ? 8 : 0,
                    // right: constraints.maxWidth * 0.05,
                    child: Image.asset(
                      nick_white_icon,
                      height: 29.47,
                      width: 80,
                    ),
                  ),
                ),

                // for creating the purple ball

                Obx(
                  () => AnimatedPositioned(
                      duration: Duration(milliseconds: 1900),
                      top: splashController.animate.value ? -130 : 0,
                      left: splashController.animate.value ? 280 : 0,
                      child: Container(
                        height: constraints.maxHeight * 0.75,
                        width: constraints.maxWidth * 0.80,
                        decoration: BoxDecoration(
                            /*    color: Color(0xFF836FFF)*/
                            gradient: LinearGradient(colors: [
                              Color(0xFF8672FF),
                              Color(0xFF9586F6).withOpacity(0.9)
                            ]),
                            shape: BoxShape.circle),
                      )),
                ),

                // for creating the red ball

                Obx(
                  () => AnimatedPositioned(
                      duration: Duration(milliseconds: 1900),
                      top: splashController.animate.value ? 60 : 0,
                      left: splashController.animate.value ? -40 : 0,
                      child: Container(
                        height: constraints.maxHeight * 0.80,
                        width: constraints.maxWidth * 0.50,
                        decoration: BoxDecoration(
                            color: Color(0XFFFFD88B), shape: BoxShape.circle),
                      )),
                ),

                ///============== shoes img===================
                Center(
                  child: Stack(
                    children: [
                      // providing text to the container
                      Obx(
                        () => AnimatedPositioned(
                          duration: Duration(milliseconds: 1900),
                          top: splashController.animate.value ? 130 : 0,

                          // right: constraints.maxWidth * 0.05,
                          child: Image.asset(
                            shoes_splash_screen,
                            height: 304,
                            width: 373.14,
                          ),
                        ),
                      ),
                      Obx(
                        () => AnimatedPositioned(
                            duration: Duration(milliseconds: 1900),
                            bottom: splashController.animate.value ? 190 : 0,
                            left: splashController.animate.value ? 8 : 0,
                            child: SizedBox(
                              width: 263.w,
                              child: AnimatedOpacity(
                                duration: Duration(milliseconds: 1600),
                                opacity: splashController.animate.value ? 1 : 0,
                                child: Text(
                                  SUMMER_COLLECTIONS_2023,
                                  style: TextStyle(
                                    fontSize: 35.sp,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w900,
                                    fontFamily: "Gilroy-Bold",
                                  ),
                                ),
                              ),
                            )),
                      ),
                      Obx(
                        () => AnimatedPositioned(
                            duration: Duration(milliseconds: 1900),
                            bottom: splashController.animate.value ? 140 : 0,
                            left: splashController.animate.value ? 8 : 0,
                            child: SizedBox(
                              width: 299.w,
                              child: AnimatedOpacity(
                                duration: Duration(milliseconds: 1600),
                                opacity: splashController.animate.value ? 1 : 0,
                                child: Text(
                                  splash_screen_sub_text,
                                  style: TextStyle(
                                      fontSize: 17.sp,
                                      color: Colors.white,
                                      fontFamily: "Gilroy",
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            )),
                      ),
                      Obx(
                        () => AnimatedPositioned(
                            duration: Duration(milliseconds: 1900),
                            bottom: splashController.animate.value ? 40 : 0,
                            left: splashController.animate.value ? 40 : 0,
                            child: SizedBox(
                              width: 290.w,
                              height: 62.h,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: const Color(0XFFFFFFFF),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                ),
                                child: Text(
                                  Get_Started,
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600,
                                      fontFamily: "Gilroy",
                                      fontSize: 21.sp),
                                ),
                                onPressed: () {
                                  Get.to(Dashboard_pages(),
                                      transition: Transition.fade,
                                      duration: Duration(seconds: 1));
                                },
                              ),
                            )),
                      ),
                    ],
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
