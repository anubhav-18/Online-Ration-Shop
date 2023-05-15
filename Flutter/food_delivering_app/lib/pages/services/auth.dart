import 'package:firebase_auth/firebase_auth.dart';
import 'package:food_delivering_app/pages/Splash_Login/signup.dart';
import 'package:food_delivering_app/pages/home_page.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class authrepo extends GetxController {
  static authrepo get instance => Get.find();

  final _auth = FirebaseAuth.instance;
  late final Rx<User?> firebaseUser;

  @override
  void onReady() {
    firebaseUser = Rx<User?>(_auth.currentUser);
    firebaseUser.bindStream(_auth.userChanges());
    ever(firebaseUser, _setIntialScreen);
  }

  _setIntialScreen(User? user) {
    user == null
        ? Get.offAll(() => SignupPage())
        : Get.offAll(() => HomePage());
        
  }
}
