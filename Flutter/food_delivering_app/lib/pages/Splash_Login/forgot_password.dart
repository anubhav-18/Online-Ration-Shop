import 'dart:math';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:food_delivering_app/pages/Splash_Login/login_page.dart';
import 'package:food_delivering_app/pages/Splash_Login/signup.dart';

// import 'package:email_validator/email_validator.dart';

class ForgotPassword extends StatelessWidget {
  TextEditingController _emailTextController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  @override
  void dispose() {
    _emailTextController.dispose();

    // super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        systemOverlayStyle: SystemUiOverlayStyle.light,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios, size: 20, color: Colors.black),
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 20,
            ),
            Text(
              'Forgot Password',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 50,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: Text(
                    'Username/Email',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    child: TextFormField(
                      controller: _emailTextController,
                      cursorColor: Colors.white,
                      textInputAction: TextInputAction.done,
                      decoration: InputDecoration(
                        labelText: 'Enter Email Address',
                      ),
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      // validator: (email) =>
                      //     email != null && !EmailValidator.validate(email)
                      //         ? 'Enter a valid email'
                      //         : null,
                    )
                    // inputTextField('Enter Email Address',
                    //     Icons.person_outline, false, _emailTextController),
                    ),
                SizedBox(
                  height: 40,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: MaterialButton(
                    minWidth: double.infinity,
                    height: 60,
                    color: Colors.amber[400],
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    onPressed: () async {
                      try {
                        await FirebaseAuth.instance
                            .sendPasswordResetEmail(
                                email: _emailTextController.text)
                            .then((value) => Navigator.of(context).pop());
                        // .catchError((e) => Sta);
                        // .catchError(e) {}
                        //   .onError((error, stackTrace) {
                        // print('Error ${error.toString()}');
                        // });
                      } on FirebaseAuthException catch (e) {
                        print(e);
                        showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                content: Text(e.message.toString()),
                              );
                            });
                      }
                    },
                    child: Text(
                      "Reset Password",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                // Spacer(),
                SizedBox(
                  height: 450,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  // crossAxisAlignment: CrossAxisAlignment.baseline,
                  children: [
                    Text("Don't have an Account ?"),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SignupPage()));
                      },
                      child: Text(
                        " Sign Up",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

TextField inputTextField(String label, IconData icon, bool isPasswordType,
    TextEditingController Controller) {
  return TextField(
    controller: Controller,
    obscureText: isPasswordType,
    enableSuggestions: !isPasswordType,
    autocorrect: !isPasswordType,
    cursorColor: Colors.white,
    decoration: InputDecoration(
      contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
      enabledBorder: OutlineInputBorder(
        // borderRadius: BorderRadius.circular(30),
        borderSide: BorderSide(color: Colors.black),
      ),
      border: OutlineInputBorder(borderSide: BorderSide(color: Colors.black)),
      prefixIcon: Icon(
        icon,
        color: Colors.black,
      ),
      labelText: label,
      filled: true,
      floatingLabelBehavior: FloatingLabelBehavior.never,
      fillColor: Colors.white70,
    ),
    keyboardType: isPasswordType
        ? TextInputType.visiblePassword
        : TextInputType.emailAddress,
  );
}
