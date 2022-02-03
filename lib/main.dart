
import 'package:e3/profile/profilePage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'BestPlayer/Resolution.dart';
import 'BottomNavigationBar.dart';
import 'login/chart/Pop.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
      overlays: [SystemUiOverlay.bottom, SystemUiOverlay.top]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Init.instance.initialize(),
      builder: (context, AsyncSnapshot snapshot) {
        // Show splash screen while waiting for app resources to load:
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const MaterialApp(
              debugShowCheckedModeBanner: false,
              home: Splash());
        } else {
          // Loading is done, return the app:
          return MaterialApp(
            debugShowCheckedModeBanner: false,

            home:
            //RotationAndFitPage(),
            MyHomePage(),
          );
        }
      },
    );
  }
}
class Splash extends StatelessWidget {

  const Splash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool lightMode =
        MediaQuery.of(context).platformBrightness == Brightness.light;
    return Scaffold(
      backgroundColor:
      lightMode ? const Color(0xffFFFFFF) : const Color(0xff042a49),
      body: Center(
          child: lightMode
              ? Image.asset('assets/images/avv.gif')
              : Image.asset('assets/splash_dark.png')),
    );
  }
}
class Init {
  Init._();
  static final instance = Init._();

  Future initialize() async {
    // This is where you can initialize the resources needed by your app while
    // the splash screen is displayed.  Remove the following example because
    // delaying the user experience is a bad design practice!
    await Future.delayed(const Duration(seconds: 3));
  }
}

/*
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home:ProfilePage()
      //HomeDash(),

         // LoginHome(),
          //AudioHome(),
          //AudioPage(),
      //ChannelPage(),
       //BottomNavigationBarH(),
    );
  }
}
*/
