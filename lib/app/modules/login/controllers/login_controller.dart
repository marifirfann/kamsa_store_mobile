import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  // Fungsi login (sesuaikan dengan logika backend atau API kamu)
  void login() {
    String email = emailController.text;
    String password = passwordController.text;

    // Logika login (bisa sesuaikan dengan API)
    if (email == 'admin@example.com' && password == 'password123') {
      Get.snackbar("Login Successful", "Welcome back!",
          snackPosition: SnackPosition.BOTTOM);
      // Navigate to home after successful login
      // Ganti HomeView() dengan halaman utama kamu
      Get.toNamed('/home');
    } else {
      Get.snackbar("Login Failed", "Incorrect email or password.",
          snackPosition: SnackPosition.BOTTOM);
    }
  }
}
