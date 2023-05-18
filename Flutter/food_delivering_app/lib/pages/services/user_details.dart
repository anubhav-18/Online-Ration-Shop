import 'package:cloud_firestore/cloud_firestore.dart';

FirebaseFirestore firestore = FirebaseFirestore.instance;

Future addUserDetails(String username, String email) async {
  await FirebaseFirestore.instance.collection("User Details").add({
    "Username": username,
    "Email": email,
  });
}

Future locationDetails(String address) async {
  await FirebaseFirestore.instance.collection("User Details").add({
    "Address": address});
}
