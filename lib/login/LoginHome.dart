

import 'package:e3/Color/color.dart';
import 'package:e3/login/PhoneLogIn.dart';
import 'package:e3/login/SignUp.dart';
import 'package:e3/login/log.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

class LoginHome extends StatefulWidget {
  const LoginHome({Key? key}) : super(key: key);

  @override
  _LoginHomeState createState() => _LoginHomeState();
}

class _LoginHomeState extends State<LoginHome> {


  @override

  Widget build(BuildContext context) {


    return Scaffold(
      backgroundColor: mBackgroundColor,
      body: CustomScrollView(
        // physics: const BouncingScrollPhysics(
        //     parent: AlwaysScrollableScrollPhysics()),
        slivers: <Widget>[
          SliverAppBar(
            stretch: true,
            onStretchTrigger: () {
              // Function callback for stretch
              return Future<void>.value();
            },
            expandedHeight: 430,
            flexibleSpace: FlexibleSpaceBar(
              stretchModes: const <StretchMode>[
                StretchMode.zoomBackground,
                StretchMode.blurBackground,
                StretchMode.fadeTitle,
              ],
              centerTitle: true,
              title: const Text('Hello'),
              background: Stack(
                fit: StackFit.expand,
                children: <Widget>[
                  Image.asset(
                    'assets/images/avv.gif',
                    fit: BoxFit.cover,
                  ),
                  const DecoratedBox(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment(0.0, 0.5),
                        end: Alignment.center,
                        colors: <Color>[
                          Color(0x60000000),
                          Color(0x00000000),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              <Widget>[
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Get.to(SignUp());
                        },
                        child: Container(
                          height: 45,
                          width: 300,
                          decoration: BoxDecoration(
                              color: green,
                              border: Border.all(
                                color: Colors.green,
                              ),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(25))),
                          child: Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Center(
                              child: Text(
                                'Sign up ',
                                style: TextStyle(
                                    color: mBackgroundColor,
                                    fontWeight: FontWeight.w900,
                                    fontSize: 15),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.to(PhoneLogIn());
                        },
                        child: Container(
                            height: 50,
                            width: 300,
                            decoration: BoxDecoration(
                                border: Border.all(
                                  color: mWhite,
                                ),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(25))),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: Container(
                                    height: 30,
                                    width: 30,
                                    child: Icon(
                                      Icons.phone_iphone,
                                      color: mWhite,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  'Continue with phone number',
                                  style: TextStyle(
                                      color: mWhite,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 15),
                                ),
                              ],
                            )),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      GestureDetector(
                        // onTap: (){
                        //   showDialog(
                        //       context: context,
                        //       builder: (BuildContext context) {
                        //         return Dialog(
                        //           shape: RoundedRectangleBorder(
                        //               borderRadius:
                        //               BorderRadius.circular(20.0)), //this right here
                        //           child: Container(
                        //             width: MediaQuery.of(context).size.width - 5,
                        //             height: MediaQuery.of(context).size.height -  200,
                        //             child: Padding(
                        //               padding: const EdgeInsets.all(12.0),
                        //               child: Column(
                        //                 mainAxisAlignment: MainAxisAlignment.center,
                        //                 crossAxisAlignment: CrossAxisAlignment.start,
                        //                 children: [
                        //                   Container(
                        //                     decoration: BoxDecoration(
                        //                         border: Border.all(color: Colors.blueAccent)
                        //                     ),
                        //                     child: TextField(
                        //                       decoration: InputDecoration(
                        //                           border: InputBorder.none,
                        //                           hintText: 'What do you want to remember?'),
                        //                     ),
                        //                   ),
                        //                   Container(
                        //                     decoration: BoxDecoration(
                        //                         border: Border.all(color: Colors.blueAccent)
                        //                     ),
                        //                     child: TextField(
                        //                       decoration: InputDecoration(
                        //                           border: InputBorder.none,
                        //                           hintText: 'What do you want to remember?'),
                        //                     ),
                        //                   ),
                        //                   Container(
                        //                     decoration: BoxDecoration(
                        //                         border: Border.all(color: Colors.blueAccent)
                        //                     ),
                        //                     child: TextField(
                        //                       decoration: InputDecoration(
                        //                           border: InputBorder.none,
                        //                           hintText: 'What do you want to remember?'),
                        //                     ),
                        //                   ),
                        //                   Container(
                        //                     decoration: BoxDecoration(
                        //                         border: Border.all(color: Colors.blueAccent)
                        //                     ),
                        //                     child: TextField(
                        //                       decoration: InputDecoration(
                        //                           border: InputBorder.none,
                        //                           hintText: 'What do you want to remember?'),
                        //                     ),
                        //                   ),
                        //                   SizedBox(
                        //                     //width: 320.0,
                        //                     child: RaisedButton(
                        //                       onPressed: () {},
                        //                       child: Text(
                        //                         "Save",
                        //                         style: TextStyle(color: Colors.white),
                        //                       ),
                        //                       color: const Color(0xFF1BC0C5),
                        //                     ),
                        //                   )
                        //                 ],
                        //               ),
                        //             ),
                        //           ),
                        //         );
                        //       });
                        //
                        // },

                           onTap: () {

                          Get.defaultDialog(
                              title: '',
                              backgroundColor: mWhite,
                              content: Container(
                               width: 900,
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Column(
                                      children: [
                                        Text(
                                          'Choose an account',
                                          style: TextStyle(
                                              color: mBackgroundColor,
                                              fontWeight: FontWeight.w700,
                                              fontSize: 25),
                                        ),
                                        Text(
                                          'to continue to topc',
                                          style: TextStyle(
                                              color: mBackgroundColor,
                                              fontWeight: FontWeight.w500,
                                              fontSize: 17),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Container(
                                        height: 50,
                                        child: ListTile(
                                          leading: CircleAvatar(
                                            radius: 15,
                                            backgroundImage: AssetImage(
                                                'assets/images/goo.jpg'),
                                          ),
                                          title: Text(
                                            'shri0010',
                                            style: TextStyle(
                                                color: mBackgroundColor,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 13),
                                          ),
                                          subtitle: Text(
                                            'shrika00@gmil.com',
                                            style: TextStyle(
                                                color: mBackgroundColor,
                                                fontWeight: FontWeight.normal,
                                                fontSize: 13),
                                          ),
                                        )),
                                    Divider(),
                                    Container(
                                        child: ListTile(
                                      leading: Icon(Icons.person),
                                      title: Text(
                                        'Add another account',
                                        style: TextStyle(
                                            color: mBackgroundColor,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15),
                                      ),
                                    )),
                                  ],
                                ),
                              ));
                        },
                        child: Container(
                            height: 50,
                            width: 300,
                            decoration: BoxDecoration(
                                border: Border.all(
                                  color: mWhite,
                                ),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(25))),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: Container(
                                      height: 30,
                                      width: 30,
                                      child:
                                          Image.asset('assets/images/goo.jpg')),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  'Continue with Google',
                                  style: TextStyle(
                                      color: mWhite,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 15),
                                ),
                              ],
                            )),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      GestureDetector(
                        onTap: () {
                          _launchURL();
                        },
                        child: Container(
                            height: 50,
                            width: 300,
                            decoration: BoxDecoration(
                                border: Border.all(
                                  color: mWhite,
                                ),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(25))),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: Container(
                                      height: 30,
                                      width: 30,
                                      child: Image.asset(
                                          'assets/images/fac.jpeg')),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  'Continue with Facebook',
                                  style: TextStyle(
                                      color: mWhite,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 15),
                                ),
                              ],
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: GestureDetector(
                          onTap: () {
                            Get.to(Log());
                          },
                          child: Text(
                            'Log in',
                            style: TextStyle(
                                color: mWhite,
                                fontWeight: FontWeight.w600,
                                fontSize: 15),
                          ),
                        ),
                      )
                    ],
                  ),
                ),

                // ListTiles++
              ],
            ),
          ),
        ],
      ),
    );
  }
}

_launchURL() async {
  const url = 'https://www.facebook.com';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}



