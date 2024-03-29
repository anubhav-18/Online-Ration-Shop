import 'package:email_validator/email_validator.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:food_delivering_app/pages/Home_Page.dart';
import 'package:food_delivering_app/pages/Splash_Login/login_page.dart';
import 'package:food_delivering_app/pages/Splash_Login/sign_n_login.dart';
import 'package:food_delivering_app/pages/Splash_Login/square_tile.dart';
import 'package:food_delivering_app/pages/services/google_sign.dart';
import 'package:food_delivering_app/pages/services/user_details.dart';
import 'package:provider/provider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '../services/Auth.dart';
import '../services/AuthException.dart';

class SignupPage extends StatefulWidget {
  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final formKey = GlobalKey<FormState>();
  final _authService = AuthenticationService();
  TextEditingController _passwordTextController = TextEditingController();
  TextEditingController _emailTextController = TextEditingController();
  TextEditingController _userNameTextController = TextEditingController();
  final _auth = FirebaseAuth.instance;

  void dispose() {
    _emailTextController.dispose();
    _passwordTextController.dispose();
    _userNameTextController.dispose();
    super.dispose();
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
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => signNlog()));
          },
          icon: Icon(Icons.arrow_back_ios, size: 20, color: Colors.black),
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        child: Form(
          key: formKey,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Expanded(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Text(
                          "Sign in",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "Create Your Account",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        )
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 40),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Username',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                                color: Colors.black87),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          inputTextField(Icons.account_circle_outlined, false,
                              _userNameTextController),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Email/Mobile No.',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                                color: Colors.black87),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          //Email TextFormField
                          TextFormField(
                            controller: _emailTextController,
                            obscureText: false,
                            enableSuggestions: !true,
                            autocorrect: !true,
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            validator: (email) =>
                                email != null && !EmailValidator.validate(email)
                                    ? 'Enter a valid email'
                                    : null,
                            cursorColor: Colors.white,
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 0, horizontal: 10),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black),
                              ),
                              border: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black)),
                              prefixIcon: Icon(
                                Icons.person_outline,
                                color: Colors.black,
                              ),
                              // suffixIcon: isPasswordType ? IconButton(onPressed: () { }, icon: Icon(Icons.remove_red_eye)) : null
                            ),
                            keyboardType: TextInputType.emailAddress,
                          ),
                          // inputTextField(
                          //     Icons.person_outline, false, _emailTextController),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Password',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                                color: Colors.black87),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          TextFormField(
                              controller: _passwordTextController,
                              obscureText: true,
                              enableSuggestions: false,
                              autocorrect: false,
                              autovalidateMode:
                                  AutovalidateMode.onUserInteraction,
                              validator: (value) =>
                                  value != null && value.length < 6
                                      ? 'Enter Min 6 Character '
                                      : null,
                              cursorColor: Colors.white,
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.symmetric(
                                    vertical: 0, horizontal: 10),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black),
                                ),
                                border: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.black)),
                                prefixIcon: Icon(
                                  Icons.lock_outline,
                                  color: Colors.black,
                                ),
                                // suffixIcon: isPasswordType ? IconButton(onPressed: () { }, icon: Icon(Icons.remove_red_eye)) : null
                              ),
                              keyboardType: TextInputType.visiblePassword),
                          // inputTextField(
                          //     Icons.lock_outline, true, _passwordTextController),
                          SizedBox(
                            height: 10,
                          ),
                          // inputFile(label: "Username"),
                          // inputFile(label: "Email/Mobile No."),
                          // inputFile(label: "Password", obscureText: true),
                          // inputFile(label: "Confirm Password", obscureText: true)
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 40),
                      child: Container(
                        // padding: EdgeInsets.only(top: 3, left: 3),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            border: Border(
                              bottom: BorderSide(color: Colors.orange),
                              top: BorderSide(color: Colors.orange),
                              left: BorderSide(color: Colors.orange),
                              right: BorderSide(color: Colors.orange),
                            )),
                        child: MaterialButton(
                          minWidth: double.infinity,
                          height: 60,
                          onPressed: signUp ,
                          color: Colors.amber[400],
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Text(
                            "Sign In",
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 18,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Divider(
                            thickness: 0.5,
                            color: Colors.grey[400],
                          ),
                        ),
                        Text("Or Continue With"),
                        Expanded(
                          child: Divider(
                            thickness: 0.5,
                            color: Colors.grey[400],
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // google button
                        SquareTile(
                          imagePath: 'assets/images/google.png',
                          onTap: () async {
                            await GoogleSignInProvider().googleLogin();
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => HomePage()));
                          },
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text("Already have an Account ?"),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => LoginPage()));
                          },
                          child: Text(
                            " Login",
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ))
              ]),
        ),
      ),
    );
  }

  Future signUp() async {
    final isValid = formKey.currentState!.validate();
    if (!isValid) return;

    try {
      await FirebaseAuth.instance
          .createUserWithEmailAndPassword(
              email: _emailTextController.text.trim(),
              password: _passwordTextController.text.trim())
          .then((value) {
        print("Account Created Succesfullyy");
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => HomePage()));
      });
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
    addUserDetails(_userNameTextController.text,
                                _emailTextController.text);
  }
}

// Widget inputFile({
//   label,
//   obscureText = false,
// }) {
//   return Column(
//     crossAxisAlignment: CrossAxisAlignment.start,
//     children: <Widget>[
//       Text(
//         label,
//         style: TextStyle(
//             fontSize: 15, fontWeight: FontWeight.w400, color: Colors.black87),
//       ),
//       SizedBox(
//         height: 5,
//       ),
//       TextField(
//         obscureText: obscureText,
//         decoration: InputDecoration(
//             contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
//             enabledBorder: OutlineInputBorder(
//               borderSide: BorderSide(color: Colors.black),
//             ),
//             border: OutlineInputBorder(
//                 borderSide: BorderSide(color: Colors.black))),
//       ),
//       SizedBox(
//         height: 10,
//       )
//     ],
//   );
// }

TextFormField inputTextField(
    IconData icon, bool isPasswordType, TextEditingController Controller) {
  return TextFormField(
    controller: Controller,
    obscureText: isPasswordType,
    enableSuggestions: !isPasswordType,
    autocorrect: !isPasswordType,
    autovalidateMode: AutovalidateMode.onUserInteraction,
    cursorColor: Colors.white,
    decoration: InputDecoration(
      contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.black),
      ),
      border: OutlineInputBorder(borderSide: BorderSide(color: Colors.black)),
      prefixIcon: Icon(
        icon,
        color: Colors.black,
      ),
      // suffixIcon: isPasswordType ? IconButton(onPressed: () { }, icon: Icon(Icons.remove_red_eye)) : null
    ),
    keyboardType: isPasswordType
        ? TextInputType.visiblePassword
        : TextInputType.emailAddress,
  );
}
