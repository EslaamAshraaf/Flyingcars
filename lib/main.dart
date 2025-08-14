import 'package:carshop/Ui/HomePageScreen/Screens/Add_Card.dart';

import 'package:carshop/Ui/Auth/Loginscreen.dart';
import 'package:carshop/Ui/HomePageScreen/Tabs/Edite_Profile.dart';
import 'package:carshop/Ui/HomePageScreen/Tabs/My_Profile.dart';
import 'package:carshop/Ui/Auth/Register.dart';
import 'package:carshop/Ui/HomePageScreen/Screens/Scan_Card.dart';
import 'package:carshop/Ui/Splash&Onboardning/splash.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'Ui/Auth/Forgot_Password.dart';
import 'Ui/HomePageScreen/Screens/Car_Detailes.dart';
import 'Ui/HomePageScreen/Screens/HomePageScreen.dart';
import 'Ui/Splash&Onboardning/OnBoardingScreen.dart';
import 'Ui/Firebase/firebase_options.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        splash.routename:(_)=>splash(),
        LoginScreen.routename:(_)=>LoginScreen(),
        ForgotPassword.routename:(_)=>ForgotPassword(),
        Register.routename:(_)=>Register(),
        HomePageScreen.routename:(_)=>HomePageScreen(),
        CarDetails.routename:(_)=>CarDetails(),
        AddCard.routename:(_)=>AddCard(),
        Profile.routeName:(_)=>Profile(),
        ScanCard.routeName:(_)=>ScanCard(),
        Onboardingscreen.routName:(_)=>Onboardingscreen(),
        EditeProfile.routeName:(_)=>EditeProfile(),
      },
      initialRoute: splash.routename,
    );
  }
}