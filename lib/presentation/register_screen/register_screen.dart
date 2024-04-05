import 'package:login/core/utils/validation_functions.dart';
import 'package:login/widgets/custom_text_form_field.dart';
import 'package:login/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:login/core/app_export.dart';
import 'controller/register_controller.dart';

// ignore_for_file: must_be_immutable
class RegisterScreen extends GetWidget<RegisterController> {
  RegisterScreen({Key? key}) : super(key: key);

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
                        image: AssetImage(ImageConstant.imgRegisterScreen),
                        fit: BoxFit.cover)),
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: Form(
                        key: _formKey,
                        child: Container(
                            width: double.maxFinite,
                            padding: EdgeInsets.symmetric(
                                horizontal: 35.h, vertical: 29.v),
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  SizedBox(height: 67.v),
                                  Text("lbl_create_account".tr,
                                      style: theme.textTheme.headlineLarge),
                                  SizedBox(height: 6.v),
                                  Container(
                                      width: 320.h,
                                      margin: EdgeInsets.symmetric(
                                          horizontal: 18.h),
                                      child: Text("msg_create_an_account".tr,
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.center,
                                          style: CustomTextStyles
                                              .titleSmallBlack900)),
                                  SizedBox(height: 17.v),
                                  SizedBox(
                                      height: 687.v,
                                      width: 357.h,
                                      child: Stack(
                                          alignment: Alignment.bottomCenter,
                                          children: [
                                            Align(
                                                alignment: Alignment.topCenter,
                                                child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    children: [
                                                      _buildName(),
                                                      SizedBox(height: 26.v),
                                                      _buildPhone(),
                                                      SizedBox(height: 26.v),
                                                      _buildEmail(),
                                                      SizedBox(height: 26.v),
                                                      _buildPassword(),
                                                      SizedBox(height: 26.v),
                                                      _buildConfirmpassword(),
                                                      SizedBox(height: 53.v),
                                                      _buildSignUp(),
                                                      SizedBox(height: 30.v),
                                                      _buildButton()
                                                    ])),
                                            Align(
                                                alignment:
                                                    Alignment.bottomCenter,
                                                child: Padding(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 78.h),
                                                    child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        children: [
                                                          Text(
                                                              "msg_or_continue_with"
                                                                  .tr,
                                                              style: theme
                                                                  .textTheme
                                                                  .titleSmall),
                                                          SizedBox(
                                                              height: 20.v),
                                                          Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
                                                              children: [
                                                                Container(
                                                                    height:
                                                                        44.v,
                                                                    width: 60.h,
                                                                    padding: EdgeInsets.symmetric(
                                                                        horizontal: 18
                                                                            .h,
                                                                        vertical: 10
                                                                            .v),
                                                                    decoration: AppDecoration
                                                                        .fillPrimaryContainer
                                                                        .copyWith(
                                                                            borderRadius: BorderRadiusStyle
                                                                                .roundedBorder10),
                                                                    child: CustomImageView(
                                                                        imagePath:
                                                                            ImageConstant
                                                                                .imgPhGoogleLogoBold,
                                                                        height: 24
                                                                            .adaptSize,
                                                                        width: 24
                                                                            .adaptSize,
                                                                        alignment:
                                                                            Alignment.center)),
                                                                Container(
                                                                    height:
                                                                        44.v,
                                                                    width: 60.h,
                                                                    padding: EdgeInsets.symmetric(
                                                                        horizontal: 18
                                                                            .h,
                                                                        vertical: 10
                                                                            .v),
                                                                    decoration: AppDecoration
                                                                        .fillPrimaryContainer
                                                                        .copyWith(
                                                                            borderRadius: BorderRadiusStyle
                                                                                .roundedBorder10),
                                                                    child: CustomImageView(
                                                                        imagePath:
                                                                            ImageConstant
                                                                                .imgIcSharpFacebook,
                                                                        height: 24
                                                                            .adaptSize,
                                                                        width: 24
                                                                            .adaptSize,
                                                                        alignment:
                                                                            Alignment.center)),
                                                                Container(
                                                                    height:
                                                                        44.v,
                                                                    width: 60.h,
                                                                    padding: EdgeInsets.symmetric(
                                                                        horizontal: 18
                                                                            .h,
                                                                        vertical: 10
                                                                            .v),
                                                                    decoration: AppDecoration
                                                                        .fillPrimaryContainer
                                                                        .copyWith(
                                                                            borderRadius: BorderRadiusStyle
                                                                                .roundedBorder10),
                                                                    child: CustomImageView(
                                                                        imagePath:
                                                                            ImageConstant
                                                                                .imgIcBaselineApple,
                                                                        height: 24
                                                                            .adaptSize,
                                                                        width: 24
                                                                            .adaptSize,
                                                                        alignment:
                                                                            Alignment.center))
                                                              ])
                                                        ])))
                                          ]))
                                ])))))));
  }

  /// Section Widget
  Widget _buildName() {
    return CustomTextFormField(
        controller: controller.nameController,
        hintText: "lbl_name".tr,
        validator: (value) {
          if (!isText(value)) {
            return "err_msg_please_enter_valid_text".tr;
          }
          return null;
        });
  }

  /// Section Widget
  Widget _buildPhone() {
    return CustomTextFormField(
        controller: controller.phoneController,
        hintText: "lbl_phone_no".tr,
        textInputType: TextInputType.phone,
        validator: (value) {
          if (!isValidPhone(value)) {
            return "err_msg_please_enter_valid_phone_number".tr;
          }
          return null;
        });
  }

  /// Section Widget
  Widget _buildEmail() {
    return CustomTextFormField(
        controller: controller.emailController,
        hintText: "lbl_email".tr,
        textInputType: TextInputType.emailAddress,
        validator: (value) {
          if (value == null || (!isValidEmail(value, isRequired: true))) {
            return "err_msg_please_enter_valid_email".tr;
          }
          return null;
        });
  }

  /// Section Widget
  Widget _buildPassword() {
    return CustomTextFormField(
        controller: controller.passwordController,
        hintText: "lbl_password".tr,
        textInputType: TextInputType.visiblePassword,
        validator: (value) {
          if (value == null || (!isValidPassword(value, isRequired: true))) {
            return "err_msg_please_enter_valid_password".tr;
          }
          return null;
        },
        obscureText: true,
        borderDecoration: TextFormFieldStyleHelper.fillGray);
  }

  /// Section Widget
  Widget _buildConfirmpassword() {
    return CustomTextFormField(
        controller: controller.confirmpasswordController,
        hintText: "msg_confirm_password".tr,
        textInputAction: TextInputAction.done,
        textInputType: TextInputType.visiblePassword,
        validator: (value) {
          if (value == null || (!isValidPassword(value, isRequired: true))) {
            return "err_msg_please_enter_valid_password".tr;
          }
          return null;
        },
        obscureText: true,
        borderDecoration: TextFormFieldStyleHelper.fillGray);
  }

  /// Section Widget
  Widget _buildSignUp() {
    return CustomElevatedButton(text: "lbl_sign_up".tr);
  }

  /// Section Widget
  Widget _buildButton() {
    return GestureDetector(
        onTap: () {
          onTapButton();
        },
        child: Container(
            padding: EdgeInsets.symmetric(horizontal: 86.h, vertical: 8.v),
            decoration: AppDecoration.fillWhiteA700
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
            child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 2.v),
                  Text("msg_already_have_an".tr,
                      style: CustomTextStyles.titleSmallSecondaryContainer)
                ])));
  }

  /// Navigates to the loginScreen when the action is triggered.
  onTapButton() {
    Get.toNamed(
      AppRoutes.loginScreen,
    );
  }
}
