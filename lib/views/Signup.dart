//import 'package:UniQ/services/LoginScreen.dart';
import 'package:UniQ/services/authentication.dart';
import 'package:UniQ/views/ForgotPassword.dart';
import 'package:fluttertoast/fluttertoast.dart';

import './Signin.dart';
import './EnterMobile.dart';
import 'package:UniQ/views/EnterMobile.dart';
import 'package:UniQ/views/Signin.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:adobe_xd/page_link.dart';
import 'package:flutter/widgets.dart';

class SizeConfig {
  static MediaQueryData _mediaQueryData;
  static double screenWidth;
  static double screenHeight;
  static double blockSizeHorizontal;
  static double blockSizeVertical;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;
    blockSizeHorizontal = screenWidth / 100;
    blockSizeVertical = screenHeight / 100;
  }
}

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final email = TextEditingController();

  final password = TextEditingController();

  final rpassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'UniQ',
      home: Scaffold(
        resizeToAvoidBottomPadding: false,
        backgroundColor: const Color(0xffffffff),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            SizedBox(
              width: SizeConfig.blockSizeVertical * 2,
            ),
            SingleChildScrollView(
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      height: 0,
                    ),
                    SizedBox(
                        width: SizeConfig.blockSizeHorizontal * 60,
                        child: Text(
                          'Create an\nAccount',
                          style: TextStyle(
                            fontFamily: 'Lato',
                            fontSize: 30,
                            color: const Color(0xff000000),
                            fontWeight: FontWeight.w600,
                          ),
                          textAlign: TextAlign.center,
                        )),
                    SizedBox(
                      height: SizeConfig.blockSizeVertical * 5,
                    ),

                    // Email or Phone TextArea
                    Container(
                      width: SizeConfig.blockSizeHorizontal * 60,
                      height: SizeConfig.blockSizeVertical * 7,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(24.0),
                        color: const Color(0x21838383),
                        boxShadow: [
                          BoxShadow(
                            color: const Color(0x29000000),
                            offset: Offset(0, 3),
                            blurRadius: 6,
                          ),
                        ],
                      ),
                      child: Row(
                        children: <Widget>[
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            width: 22.0,
                            height: 22.0,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: const AssetImage(
                                    'assets/images/ProfileIcon.png'),
                                fit: BoxFit.cover,
                                colorFilter: new ColorFilter.mode(
                                    Colors.black.withOpacity(0.6),
                                    BlendMode.dstIn),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: SizeConfig.blockSizeHorizontal * 8,
                          ),
                          Flexible(
                            child: Container(
                              width: SizeConfig.blockSizeHorizontal * 38,
                              child: TextField(
                                controller: email,
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Email/Mobile',
                                  hintStyle: TextStyle(
                                    fontFamily: 'Lato',
                                    fontSize: 15,
                                    color: const Color(0xff5c5c5c),
                                    height: 2.1333333333333333,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ), //Email or Phone  Text area ends

                    SizedBox(
                      height: SizeConfig.blockSizeVertical * 3,
                    ),

                    //Password TextArea
                    Container(
                      width: SizeConfig.blockSizeHorizontal * 60,
                      height: SizeConfig.blockSizeVertical * 7,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(24.0),
                        color: const Color(0x21838383),
                        boxShadow: [
                          BoxShadow(
                            color: const Color(0x29000000),
                            offset: Offset(0, 3),
                            blurRadius: 6,
                          ),
                        ],
                      ),
                      child: Row(
                        children: <Widget>[
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            width: 22.0,
                            height: 22.0,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: const AssetImage(
                                    'assets/images/PasswordIcon.png'),
                                fit: BoxFit.cover,
                                colorFilter: new ColorFilter.mode(
                                    Colors.black.withOpacity(0.6),
                                    BlendMode.dstIn),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: SizeConfig.blockSizeHorizontal * 8,
                          ),
                          Flexible(
                            child: Container(
                              width: SizeConfig.blockSizeHorizontal * 38,
                              child: TextField(
                                obscureText: true,
                                controller: password,
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Password',
                                  hintStyle: TextStyle(
                                    fontFamily: 'Lato',
                                    fontSize: 15,
                                    color: const Color(0xffECF4FB),
                                    height: 2.1333333333333333,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ), //Password TextArea ends

                    SizedBox(
                      height: SizeConfig.blockSizeVertical * 3,
                    ),

                    //Repeat Password TextArea
                    Container(
                      width: SizeConfig.blockSizeHorizontal * 60,
                      height: SizeConfig.blockSizeVertical * 7,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(24.0),
                        color: const Color(0x21838383),
                        boxShadow: [
                          BoxShadow(
                            color: const Color(0x29000000),
                            offset: Offset(0, 3),
                            blurRadius: 6,
                          ),
                        ],
                      ),
                      child: Row(
                        children: <Widget>[
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            width: 22.0,
                            height: 22.0,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: const AssetImage(
                                    'assets/images/PasswordIcon.png'),
                                fit: BoxFit.cover,
                                colorFilter: new ColorFilter.mode(
                                    Colors.black.withOpacity(0.6),
                                    BlendMode.dstIn),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: SizeConfig.blockSizeHorizontal * 8,
                          ),
                          Flexible(
                            child: Container(
                              width: SizeConfig.blockSizeHorizontal * 38,
                              child: TextField(
                                controller: rpassword,
                                obscureText: true,
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Repeat Password',
                                  hintStyle: TextStyle(
                                    fontFamily: 'Lato',
                                    fontSize: 15,
                                    color: const Color(0xffECF4FB),
                                    height: 2.1333333333333333,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ), //Repeat Password TextArea ends

                    SizedBox(
                      height: 35,
                    ),

                    // Button
                    ClipRRect(
                      borderRadius: BorderRadius.circular(24.0),
                      child: Container(

                        width: 210.0,
//                          height: 46.0,
                        decoration: BoxDecoration(
                        borderRadius:BorderRadius.circular(24.0),
                          gradient: LinearGradient(
                            begin: Alignment(-1.35, 2.14),
                            end: Alignment(1.13, -2.03),
                            colors: [
                              const Color(0xffee00ff),
                              const Color(0xff6600ff)
                            ],
                            stops: [0.0, 1.0],
                          ),
                          boxShadow: [
//                              BoxShadow(
//                                color: const Color(0x29000000),
//                                offset: Offset(0, 3),
//                                blurRadius: 3,
//                              ),
                          ],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: FlatButton(
                            splashColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            child: Text(
                              'Create Account',
                              style: TextStyle(
                                fontFamily: 'Montserrat-SemiBold',
                                fontSize: 18,
                                color: const Color(0xffffffff),
//                                height: 2,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            onPressed: () async {
/* Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => SignIn()),
                          ); */ ////BUTTON ON PRESS
                              if (email.text != null ||
                                  password.text == rpassword.text) {
                                register(email.text, password.text, context);
                              } else {
                                FlutterToast.showToast(
                                    msg: "Please enter valid credentials",
                                    toastLength: Toast.LENGTH_SHORT,
                                    gravity: ToastGravity.CENTER,
                                    timeInSecForIosWeb: 5);
                              }
                            },
                          ),
                        ),
                      ),
                    ),

                    SizedBox(
                      height: 14,
                    ),

                    Text(
                      'Signup with',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 12,
                        color: const Color(0xffECF4FB),
                        height: 2.6666666666666665,
                      ),
                      textAlign: TextAlign.left,
                    ),

                    SizedBox(
                      height: 5,
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        //FB Button
                        FlatButton(
                          child: Container(
                            width: 46.0,
                            height: 46.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(24.0),
                              gradient: LinearGradient(
                                begin: Alignment(-1.35, 2.14),
                                end: Alignment(1.13, -2.03),
                                colors: [
                                  const Color(0xffee00ff),
                                  const Color(0xff6600ff)
                                ],
                                stops: [0.0, 1.0],
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: const Color(0x29000000),
                                  offset: Offset(0, 3),
                                  blurRadius: 6,
                                ),
                              ],
                            ),
                            child: Icon(
                              FontAwesomeIcons.facebookF,
                              color: Colors.white,
                            ),
                          ),
                          onPressed: () {
                            print("Hello"); ////BUTTON ON PRESS
                          },
                        ), //FB Button

                        //Google Button
                        FlatButton(
                          child: Container(
                            width: 46.0,
                            height: 46.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(24.0),
                              gradient: LinearGradient(
                                begin: Alignment(-1.35, 2.14),
                                end: Alignment(1.13, -2.03),
                                colors: [
                                  const Color(0xffee00ff),
                                  const Color(0xff6600ff)
                                ],
                                stops: [0.0, 1.0],
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: const Color(0x29000000),
                                  offset: Offset(0, 3),
                                  blurRadius: 6,
                                ),
                              ],
                            ),
                            child: Icon(
                              FontAwesomeIcons.google,
                              color: Colors.white,
                            ),
                          ),
                          onPressed: () {
                            print("Hello"); ////BUTTON ON PRESS
                          },
                        ), //Google Button

                        SizedBox(
                          width: 20,
                        ),

                        //Phone Button
                        PageLink(
                          child: Container(
                            width: 46.0,
                            height: 46.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(24.0),
                              gradient: LinearGradient(
                                begin: Alignment(-1.35, 2.14),
                                end: Alignment(1.13, -2.03),
                                colors: [
                                  const Color(0xffee00ff),
                                  const Color(0xff6600ff)
                                ],
                                stops: [0.0, 1.0],
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: const Color(0x29000000),
                                  offset: Offset(0, 3),
                                  blurRadius: 6,
                                ),
                              ],
                            ),
                            child: Icon(
                              FontAwesomeIcons.phone,
                              color: Colors.white,
                            ),
                          ),
                          links: [
                            PageLinkInfo(
                              transition: LinkTransition.Fade,
                              ease: Curves.easeOut,
                              duration: 0.3,
                              pageBuilder: () => EnterMobile(),
                            ),
                          ],
                        ), //Phone Button
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Stack(
              children: <Widget>[
                Image.asset(
                  "assets/images/Path3.png",
                  height: 1920,
                ),
                RotatedBox(
                  quarterTurns: 1,
                  child: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          SizedBox(
                            width: SizeConfig.blockSizeHorizontal * 28,
                          ),
                          Text(
                            "Signup",
                            style: TextStyle(
                              fontFamily: 'Segoe UI',
                              fontSize: 20,
                              color: const Color(0xffffffff),
                              fontWeight: FontWeight.w600,
                            ),
                            textAlign: TextAlign.left,
                          ),
                          SizedBox(
                            width: SizeConfig.blockSizeHorizontal * 5,
                          ),
                          PageLink(
                              child: Text(
                                "Signin",
                                style: TextStyle(
                                  fontFamily: 'Segoe UI',
                                  fontSize: 20,
                                  color: const Color(0xffffffff),
                                  fontWeight: FontWeight.w600,
                                ),
                                textAlign: TextAlign.left,
                              ),
                              links: [
                                PageLinkInfo(
                                  transition: LinkTransition.Fade,
                                  ease: Curves.easeOut,
                                  duration: 0.3,
                                  pageBuilder: () => SignIn(),
                                ),
                              ]),
                          SizedBox(
                            width: SizeConfig.blockSizeHorizontal * 5,
                          ),
                          PageLink(
                              child: Text(
                                "Forgot password?",
                                style: TextStyle(
                                  fontFamily: 'Segoe UI',
                                  fontSize: 20,
                                  color: const Color(0xffffffff),
                                  fontWeight: FontWeight.w600,
                                ),
                                textAlign: TextAlign.left,
                              ),
                              links: [
                                PageLinkInfo(
                                  transition: LinkTransition.Fade,
                                  ease: Curves.easeOut,
                                  duration: 0.3,
                                  pageBuilder: () => ForgotPassword(),
                                ),
                              ]),
                          SizedBox(
                            width: SizeConfig.blockSizeHorizontal * 5,
                          ),
                          PageLink(
                              child: Text(
                                "Policies",
                                style: TextStyle(
                                  fontFamily: 'Segoe UI',
                                  fontSize: 20,
                                  color: const Color(0xffffffff),
                                  fontWeight: FontWeight.w600,
                                ),
                                textAlign: TextAlign.left,
                              ),
                              links: [
                                PageLinkInfo(
                                  transition: LinkTransition.Fade,
                                  ease: Curves.easeOut,
                                  duration: 0.3,
                                  pageBuilder: () => SignIn(),
                                ),
                              ]),
                          SizedBox(
                            width: SizeConfig.blockSizeHorizontal * 27,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: SizeConfig.blockSizeVertical * 3.5,
                      ),
                    ],
                  ),
                ),

              ],
            )
          ],

        ),
      ),
    );
  }
}

