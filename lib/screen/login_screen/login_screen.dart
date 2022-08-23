import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hrms_app/screen/login_screen/login_screen_controller.dart';
import 'package:hrms_app/screen/login_screen/widget/login_screen_widget.dart';
import 'package:hrms_app/utils/app_res.dart';
import 'package:hrms_app/utils/app_style.dart';
import 'package:hrms_app/utils/color_res.dart';
import 'package:hrms_app/utils/image_res.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = LoginScreenController();
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                SizedBox(
                    height: Get.height * 0.25,
                    width: Get.width,
                    child: Image.asset(
                      ImageRes.loginScreenTop,
                      fit: BoxFit.fill,
                    )),
                Positioned(
                  top: Get.height * 0.05,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Welcome Back !",
                          style: AppTextStyle(
                              fontFamily: "inter",
                              textColor: Colors.white,
                              size: 30,
                              weight: FontWeight.w700),
                        ),
                        Text(
                          "Login and Start your amazing journey",
                          style: AppTextStyle(
                              fontFamily: "inter",
                              textColor: Colors.white,
                              size: 11,
                              weight: FontWeight.w700),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  SizedBox(
                      height: Get.height * 0.1,
                      child: Image.asset(ImageRes.appLogo)),
                  commonTextFormField(
                      controller: controller.userNameController,
                      iconData: const Icon(
                        Icons.person,
                        color: ColorRes.indicatorColor,
                        size: 30,
                      ),
                      inputDecoration: InputDecoration(
                          hintText: "Username",
                          border: InputBorder.none,
                          hintStyle: AppTextStyle(
                            textColor: ColorRes.greyTextFieldColor,
                            size: 15,
                          ))),
                  const SizedBox(
                    height: 30,
                  ),
                  Obx(() => commonTextFormField(
                        isObscure: controller.isShow.value,
                        iconData: const Icon(
                          Icons.lock,
                          color: ColorRes.indicatorColor,
                          size: 30,
                        ),
                        inputDecoration: InputDecoration(
                            contentPadding: const EdgeInsets.only(top: 15),
                            hintText: "Password",
                            border: InputBorder.none,
                            hintStyle: AppTextStyle(
                              textColor: ColorRes.greyTextFieldColor,
                              size: 15,
                            ),
                            suffixIcon: InkWell(
                              onTap: () => controller.onChangePassShow(),
                              child: Icon(
                                controller.isShow.value
                                    ? Icons.visibility_off
                                    : Icons.visibility,
                                color: ColorRes.blackText,
                              ),
                            )),
                      )),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "Forgot password ?",
                        style: AppTextStyle(
                            textColor: ColorRes.greyTextFieldColor),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  InkWell(
                    onTap: () => Get.toNamed(
                      AppRes.homeScreen,
                    ),
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 60, vertical: 15),
                      decoration: BoxDecoration(
                          color: ColorRes.buttonBlueColor,
                          borderRadius: BorderRadius.circular(40)),
                      child: Text(
                        "Login",
                        style: AppTextStyle(
                            fontFamily: "inter", textColor: Colors.white),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      Container(
                        width: Get.width * 0.28,
                        height: 1,
                        color: ColorRes.greyText,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        "Or Sign in with",
                        style: AppTextStyle(textColor: ColorRes.greyText),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Container(
                        width: Get.width * 0.28,
                        height: 1,
                        color: ColorRes.greyText,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      commonSocialButton(image: ImageRes.google),
                      commonSocialButton(image: ImageRes.linkedIn),
                      commonSocialButton(image: ImageRes.microsoft),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: Get.height*0.1,
        color: Colors.transparent,

        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Image.asset(
              ImageRes.loginScreenBottom,
              fit: BoxFit.cover,
              height: 110,
            )
          ],
        ),
      ),
    );
  }
}
