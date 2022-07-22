import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:machine_test/provider/drinks_provider.dart';
import 'package:machine_test/screens/SplashScreenNew.dart';
import 'package:machine_test/screens/details_screen.dart';
import 'package:machine_test/screens/home_screen.dart';
import 'package:provider/provider.dart';
import 'package:splashscreen/splashscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(414, 896),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (BuildContext context, Widget? child) {
        return  MultiProvider(
          providers: [
            ChangeNotifierProvider.value(value: DrinksProvider()),
          ],
          child: MaterialApp(
            title: 'Flutter Demo',
            debugShowCheckedModeBanner: false,
            debugShowMaterialGrid: false,
            theme: ThemeData(
              scaffoldBackgroundColor:  Color(0xFFF5F6FA),
              visualDensity: VisualDensity.adaptivePlatformDensity,
            ),
            routes: {
            HomePage.routeName:(ctx)=>HomePage(),
              DetailsPage.routeName:(ctx)=>DetailsPage(),
            },

            home:SplashScreenNew(),
          ),
        );
      },

    );
  }
}


