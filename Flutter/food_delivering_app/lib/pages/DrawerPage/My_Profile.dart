import 'package:flutter/material.dart';
import 'package:food_delivering_app/pages/Home_Page.dart';

class My_Profile extends StatefulWidget {
  const My_Profile({super.key});

  @override
  State<My_Profile> createState() => _My_ProfileState();
}

class _My_ProfileState extends State<My_Profile> {
  bool isObscurePassword = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Edit Profile'),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(left: 15, top: 20, right: 25),
        child: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: ListView(
            children: [
              SizedBox(height: 30),
              buildTextField("Full Name", "", false),
              buildTextField("Email", "", false),
              buildTextField("Phone No.", "", false),
              buildTextField("DOB", "", false),
              buildTextField("Password", "*******", true),
              // buildTextField("Confirm Password","*******",true),
              buildTextField("Address", "", false),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  OutlinedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text("Cancel",
                        style: TextStyle(
                            fontSize: 15,
                            letterSpacing: 2,
                            color: Colors.black)),
                    style: OutlinedButton.styleFrom(
                        padding: EdgeInsets.symmetric(horizontal: 50),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20))),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => HomePage()));
                    },
                    child: Text("Save",
                        style: TextStyle(
                            fontSize: 15,
                            letterSpacing: 2,
                            color: Colors.white)),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        padding: EdgeInsets.symmetric(horizontal: 50),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20))),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget buildTextField(
      String labelText, String placeholder, bool isPasswordTextField) {
    return Padding(
      padding: EdgeInsets.only(bottom: 30),
      child: TextField(
        // obscureText: isPasswordTextField ? true : false,
        obscureText: isObscurePassword,
        decoration: InputDecoration(
            suffixIcon: isPasswordTextField
                ? IconButton(
                    icon: Icon(Icons.remove_red_eye, color: Colors.grey),
                    onPressed: () {
                      setState(() {
                        isObscurePassword = !isObscurePassword;
                      });
                    })
                : null,
            contentPadding: EdgeInsets.only(bottom: 5),
            labelText: labelText,
            floatingLabelBehavior: FloatingLabelBehavior.always,
            hintText: placeholder,
            hintStyle: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.grey,
            )),
      ),
    );
  }
}
