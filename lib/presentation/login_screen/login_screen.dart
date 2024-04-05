import 'package:login/core/utils/validation_functions.dart';
import 'package:login/widgets/custom_text_form_field.dart';
import 'package:login/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:login/core/app_export.dart';
import 'controller/login_controller.dart';

// ignore_for_file: must_be_immutable
class LoginScreen extends GetWidget<LoginController> {
  LoginScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            resizeToAvoidBottomInset: false,
            body: Container(
                width: SizeUtils.width,
                height: SizeUtils.height,
                decoration: BoxDecoration(
                    color: appTheme.whiteA700,
                    image: DecorationImage(
                        image: AssetImage(ImageConstant.imgLoginScreen),
                        fit: BoxFit.cover)),
                child: Center(
                    child: SingleChildScrollView(
                        padding: EdgeInsets.only(
                            bottom: MediaQuery.of(context).viewInsets.bottom),
                        child: Form(
                            key: _formKey,
                            child: Container(
                                width: double.maxFinite,
                                padding: EdgeInsets.symmetric(horizontal: 31.h),
                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text("lbl_login_here".tr,
                                          style: theme.textTheme.headlineLarge),
                                      SizedBox(height: 22.v),
                                      SizedBox(
                                          width: 228.h,
                                          child: Text(
                                              "msg_welcome_back_you_ve_been".tr,
                                              maxLines: 2,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.center,
                                              style: CustomTextStyles
                                                  .titleLargeBlack900)),
                                      SizedBox(height: 74.v),
                                      _buildEmail(),
                                      SizedBox(height: 29.v),
                                      _buildPassword(),
                                      SizedBox(height: 31.v),
                                      Align(
                                          alignment: Alignment.centerRight,
                                          child: Padding(
                                              padding:
                                                  EdgeInsets.only(right: 9.h),
                                              child: Text(
                                                  "msg_forgot_your_password".tr,
                                                  style: theme
                                                      .textTheme.titleSmall))),
                                      SizedBox(height: 28.v),
                                      _buildSignIn(),
                                      SizedBox(height: 30.v),
                                      _buildCreateNewAccount(),
                                      SizedBox(height: 64.v),
                                      Text("msg_or_continue_with".tr,
                                          style: theme.textTheme.titleSmall),
                                      SizedBox(height: 20.v),
                                      Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Container(
                                                height: 44.v,
                                                width: 60.h,
                                                padding: EdgeInsets.symmetric(
                                                    horizontal: 18.h,
                                                    vertical: 10.v),
                                                decoration: AppDecoration
                                                    .fillPrimaryContainer
                                                    .copyWith(
                                                        borderRadius:
                                                            BorderRadiusStyle
                                                                .roundedBorder10),
                                                child: CustomImageView(
                                                    imagePath: ImageConstant
                                                        .imgPhGoogleLogoBold,
                                                    height: 24.adaptSize,
                                                    width: 24.adaptSize,
                                                    alignment:
                                                        Alignment.center)),
                                            Container(
                                                height: 44.v,
                                                width: 60.h,
                                                margin:
                                                    EdgeInsets.only(left: 10.h),
                                                padding: EdgeInsets.symmetric(
                                                    horizontal: 18.h,
                                                    vertical: 10.v),
                                                decoration: AppDecoration
                                                    .fillPrimaryContainer
                                                    .copyWith(
                                                        borderRadius:
                                                            BorderRadiusStyle
                                                                .roundedBorder10),
                                                child: CustomImageView(
                                                    imagePath: ImageConstant
                                                        .imgIcSharpFacebook,
                                                    height: 24.adaptSize,
                                                    width: 24.adaptSize,
                                                    alignment:
                                                        Alignment.center)),
                                            Container(
                                                height: 44.v,
                                                width: 60.h,
                                                margin:
                                                    EdgeInsets.only(left: 10.h),
                                                padding: EdgeInsets.symmetric(
                                                    horizontal: 18.h,
                                                    vertical: 10.v),
                                                decoration: AppDecoration
                                                    .fillPrimaryContainer
                                                    .copyWith(
                                                        borderRadius:
                                                            BorderRadiusStyle
                                                                .roundedBorder10),
                                                child: CustomImageView(
                                                    imagePath: ImageConstant
                                                        .imgIcBaselineApple,
                                                    height: 24.adaptSize,
                                                    width: 24.adaptSize,
                                                    alignment:
                                                        Alignment.center))
                                          ]),
                                      SizedBox(height: 5.v)
                                    ]))))))));
  }

  /// Section Widget
  Widget _buildEmail() {
    return Padding(
        padding: EdgeInsets.only(right: 9.h),
        child: CustomTextFormField(
            controller: controller.emailController,
            hintText: "lbl_email".tr,
            textInputType: TextInputType.emailAddress,
            validator: (value) {
              if (value == null || (!isValidEmail(value, isRequired: true))) {
                return "err_msg_please_enter_valid_email".tr;
              }
              return null;
            }));
  }

  /// Section Widget
  Widget _buildPassword() {
    return Padding(
        padding: EdgeInsets.only(right: 9.h),
        child: CustomTextFormField(
            controller: controller.passwordController,
            hintText: "lbl_password".tr,
            textInputAction: TextInputAction.done,
            textInputType: TextInputType.visiblePassword,
            validator: (value) {
              if (value == null ||
                  (!isValidPassword(value, isRequired: true))) {
                return "err_msg_please_enter_valid_password".tr;
              }
              return null;
            },
            obscureText: true,
            borderDecoration: TextFormFieldStyleHelper.fillGray));
  }

  /// Section Widget
  Widget _buildSignIn() {
    return CustomElevatedButton(
        text: "lbl_sign_in".tr, margin: EdgeInsets.only(right: 9.h));
  }

  /// Section Widget
  Widget _buildCreateNewAccount() {
    return CustomElevatedButton(
        height: 41.v,
        text: "msg_create_new_account".tr,
        margin: EdgeInsets.only(right: 9.h),
        buttonStyle: CustomButtonStyles.fillWhiteA,
        buttonTextStyle: CustomTextStyles.titleSmallSecondaryContainer,
        onPressed: () {
          onTapCreateNewAccount();
        });
  }

  /// Navigates to the registerScreen when the action is triggered.
  onTapCreateNewAccount() {
    Get.toNamed(
      AppRoutes.registerScreen,
    );
  }
}
