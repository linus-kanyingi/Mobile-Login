import 'package:login/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:login/core/app_export.dart';
import 'controller/welcome_controller.dart';

class WelcomeScreen extends GetWidget<WelcomeController> {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.whiteA700.withOpacity(0.47),
            body: SizedBox(
                width: double.maxFinite,
                child: SingleChildScrollView(
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                      _buildFour(),
                      SizedBox(height: 97.v),
                      SizedBox(
                          height: 605.v,
                          width: 389.h,
                          child:
                              Stack(alignment: Alignment.topRight, children: [
                            Align(
                                alignment: Alignment.bottomLeft,
                                child: Container(
                                    margin: EdgeInsets.only(right: 211.h),
                                    padding:
                                        EdgeInsets.symmetric(vertical: 59.v),
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                                ImageConstant.imgGroup2),
                                            fit: BoxFit.cover)),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          SizedBox(height: 9.v),
                                          CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgRectangle4,
                                              width: 107.h)
                                        ]))),
                            Align(
                                alignment: Alignment.topRight,
                                child: Padding(
                                    padding: EdgeInsets.only(
                                        left: 53.h, right: 14.h),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Container(
                                              width: 292.h,
                                              margin: EdgeInsets.symmetric(
                                                  horizontal: 14.h),
                                              child: Text(
                                                  "msg_discover_your_dream".tr,
                                                  maxLines: 2,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.center,
                                                  style: theme
                                                      .textTheme.displaySmall)),
                                          SizedBox(height: 21.v),
                                          SizedBox(
                                              width: 321.h,
                                              child: Text(
                                                  "msg_explore_all_the".tr,
                                                  maxLines: 2,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.center,
                                                  style: theme
                                                      .textTheme.bodyMedium))
                                        ]))),
                            _buildActionButtons()
                          ]))
                    ])))));
  }

  /// Section Widget
  Widget _buildFour() {
    return Align(
        alignment: Alignment.centerRight,
        child: SizedBox(
            height: 423.v,
            width: 395.h,
            child: Stack(alignment: Alignment.topRight, children: [
              CustomImageView(
                  imagePath: ImageConstant.imgEllipse2,
                  height: 354.v,
                  alignment: Alignment.topRight),
              CustomImageView(
                  imagePath: ImageConstant.imgEllipse1,
                  width: 280.h,
                  alignment: Alignment.topRight),
              CustomImageView(
                  imagePath: ImageConstant.imgGroup,
                  height: 331.v,
                  alignment: Alignment.bottomLeft)
            ])));
  }

  /// Section Widget
  Widget _buildActionButtons() {
    return Align(
        alignment: Alignment.topRight,
        child: Padding(
            padding: EdgeInsets.only(top: 257.v),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                mainAxisSize: MainAxisSize.min,
                children: [
                  CustomElevatedButton(
                      width: 160.h,
                      text: "lbl_login".tr,
                      onPressed: () {
                        onTapLogin();
                      }),
                  CustomElevatedButton(
                      width: 160.h,
                      text: "lbl_register".tr,
                      margin: EdgeInsets.only(left: 30.h),
                      buttonStyle: CustomButtonStyles.fillWhiteA,
                      buttonTextStyle: CustomTextStyles.titleLargeOnPrimary,
                      onPressed: () {
                        onTapRegister();
                      })
                ])));
  }

  /// Navigates to the loginScreen when the action is triggered.
  onTapLogin() {
    Get.toNamed(
      AppRoutes.loginScreen,
    );
  }

  /// Navigates to the registerScreen when the action is triggered.
  onTapRegister() {
    Get.toNamed(
      AppRoutes.registerScreen,
    );
  }
}
