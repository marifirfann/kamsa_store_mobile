import 'package:get/get.dart';

class ProfileController extends GetxController {
  // User data observable variables
  var userName = 'Muhammad Arif Irfan'.obs;  // Example initial value
  var userEmail = 'Muhammadarifirfan.doe@example.com'.obs;  // Example initial value
  var userImage = ''.obs;  // Example initial value

  // Method to update user profile
  void updateProfile(String newUserName, String newEmail, String newPassword) {
    userName.value = newUserName;
    userEmail.value = newEmail;
    // Ideally, update password in the backend too
    // Make sure to handle password update securely
    print('Updated profile: $newUserName, $newEmail');
  }

  // Method to delete user account
  void deleteAccount() {
    // Logic to delete user account from backend
    // This is just a placeholder for actual implementation
    print('Account deleted');
  }

  // Method to handle user logout
  void logout() {
    // Logic to logout the user, like clearing session data or tokens
    print('User logged out');
  }
}
