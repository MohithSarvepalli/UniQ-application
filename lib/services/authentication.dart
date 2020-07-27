import 'dart:collection';

import 'package:UniQ/services/LoginScreen.dart';
//import 'package:UniQ/views/OTP.dart';
import 'package:UniQ/views/OTPVerified.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
//import 'package:firestorebasic/database/user.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter/material.dart';
import 'package:imei_plugin/imei_plugin.dart';
import 'package:UniQ/views/EnterMobile.dart';
import 'package:unique_identifier/unique_identifier.dart';

//import 'package:UniQ/views/Signin.dart';

final _auth = FirebaseAuth.instance;
final firestoreInstance = Firestore.instance;
String email = "akhil@gmail.com";
String password = "123456";
register(email, password, context) async {

  try {
    var imei = await ImeiPlugin.getId();


    final snapShot1 = await Firestore.instance
        .collection('imei')
        .where('imei', arrayContains: imei)
        .getDocuments();
    //print(snapShot1.documents[0].data['imei'][0]);
    if(snapShot1.documents.isEmpty) {

      final newuser = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      if (newuser != null) {
        storing(imei);
        FlutterToast.showToast(
            msg: "Registered  successfully",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.CENTER,
            timeInSecForIosWeb: 5);
        Navigator.pop(context);
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => EnterMobile()),
        );
      } else {
        print('yes');
        FlutterToast.showToast(
            msg: 'registration failed',
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.CENTER,
            timeInSecForIosWeb: 5);
      }

    }
    else
      {
        FlutterToast.showToast(
            msg: 'Sorry you already have an account on this device',
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.CENTER,
            timeInSecForIosWeb: 5);
      }

  } catch (e) {
    print(e);
  }
}

signin(email, password, context) async {
  final user =
      await _auth.signInWithEmailAndPassword(email: email, password: password);
  if (user != null) {
    FlutterToast.showToast(
        msg: "signed in  successfully ",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 5);
    Navigator.pop(context);
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => OTPVerified()),
    );
  } else {
    FlutterToast.showToast(
        msg: "invalid details",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 5);
    return 1;
  }

}
storing(imei) async {
 // var imei = await ImeiPlugin.getImei();

  DocumentReference data = Firestore.instance.collection("imei").document("imei");


  Firestore.instance.collection('imei').document("imei")
      .updateData({ 'imei': FieldValue.arrayUnion([imei])});
}