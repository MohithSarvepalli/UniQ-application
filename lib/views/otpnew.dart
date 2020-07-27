import 'package:UniQ/views/EnterMobile.dart';
import 'package:UniQ/views/OTPVerified.dart';
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

class OTP extends StatefulWidget {
  String phone;
  OTP({Key key,@required this.phone}): super(key:key);

  @override
  _OTPState createState() => _OTPState(phone);
}

class _OTPState extends State<OTP> {

  String phone;
  _OTPState(this.phone);
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'UniQ',
      home: Scaffold(
        //resizeToAvoidBottomPadding: false,
          backgroundColor: const Color(0xffffffff),
          body: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Stack(
                      children: <Widget>[
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: SizeConfig.blockSizeHorizontal * 42,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment(-1.52, 1.0),
                              end: Alignment(1.13, -0.95),
                              colors: [
                                const Color(0xffee00ff),
                                const Color(0xff6600ff)
                              ],
                              stops: [0.0, 1.0],
                            ),
                          ),
                        ),
                        Column(
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                PageLink(
                                  child: Icon(
                                    FontAwesomeIcons.arrowLeft,
                                    color: Colors.white,
                                  ),
                                  links: [
                                    PageLinkInfo(
                                      transition: LinkTransition.SlideRight,
                                      ease: Curves.easeOut,
                                      duration: 0.3,
                                      pageBuilder: () => EnterMobile(),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  width: SizeConfig.blockSizeHorizontal * 85,
                                  height: SizeConfig.blockSizeVertical * 13,
                                ),
                              ],
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width,
                              child: Text(
                                'Tell me something that\nonly two of us know',
                                style: TextStyle(
                                  fontFamily: 'Lato',
                                  fontSize: 22,
                                  color: const Color(0xffffffff),
                                  fontWeight: FontWeight.w700,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: SizeConfig.blockSizeVertical * 3,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Text(
                    'Please Enter Your Valid Mobile Number',
                    style: TextStyle(
                      fontFamily: 'Lato',
                      fontSize: 18,
                      color: const Color(0xff43525b),
                      fontWeight: FontWeight.w500,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Image.asset('assets/images/Phone2.png'),
                SizedBox(
                  height: SizeConfig.blockSizeVertical * 3,
                ),
                SizedBox(
                  width: SizeConfig.blockSizeHorizontal * 60,
                  height: SizeConfig.blockSizeVertical * 5,
                  child: Text(
                    'We\'ve sent your an SMS with a code to\n+91-98******31',
                    style: TextStyle(
                      fontFamily: 'Lato',
                      fontSize: 12,
                      color: const Color(0xff43525b),
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(
                  height: SizeConfig.blockSizeVertical * 2,
                ),
                Container(
                  width: SizeConfig.blockSizeHorizontal * 60,
                  height: SizeConfig.blockSizeVertical * 5,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4.0),
                    color: const Color(0xffffffff),
                    border:
                    Border.all(width: 1.0, color: const Color(0xff707070)),
                  ),
                  child: SizedBox(
                    //height: 100,
                    child: TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none, hintText: '51234'),
                      keyboardType: TextInputType.number,
                      maxLength: 6,
                    ),
                  ),
                ),
                SizedBox(
                  height: SizeConfig.blockSizeHorizontal * 6,
                ),
                FlatButton(
                  child: Container(
                    width: 66,
                    height: 66,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(64),
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
                      FontAwesomeIcons.arrowRight,
                      color: Colors.white,
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => OTPVerified()),
                    ); ////BUTTON ON PRESS
                  },
                ),
              ],
            ),
          )),
    );
  }
}
