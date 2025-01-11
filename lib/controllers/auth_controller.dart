import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  static AuthController get to => Get.find();

  final PageController pageController = PageController(initialPage: 0, viewportFraction: 0.8);
  final RxDouble selectedIndex = 0.0.obs;

  double socialMediaAnimatedValue(bool isSignUp) {
    return isSignUp
        ? 1 - AuthController.to.selectedIndex.value
        : AuthController.to.selectedIndex.value;
  }

  void updatePage(double page) {
    selectedIndex.value = page;
  }

  void navigateToPage(int page) {
    pageController.animateToPage(
      page,
      duration: const Duration(milliseconds: 1000),
      curve: Curves.fastOutSlowIn,
    );
  }

  @override
  void onClose() {
    pageController.dispose();
    super.onClose();
  }
}
