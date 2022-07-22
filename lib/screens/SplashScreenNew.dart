import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:machine_test/screens/home_screen.dart';
import 'package:provider/provider.dart';

import '../provider/drinks_provider.dart';

class SplashScreenNew extends StatefulWidget {
  const SplashScreenNew({Key? key}) : super(key: key);

  static final String routeName = "/splash";

  @override
  _SplashScreenNewState createState() => _SplashScreenNewState();
}

class _SplashScreenNewState extends State<SplashScreenNew> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    var provider = Provider.of<DrinksProvider>(context, listen: false);

    provider.getAllDrinks(context);

    Future.delayed(const Duration(seconds: 5), () {
      Navigator.of(context).pushReplacementNamed(HomePage.routeName);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SafeArea(
        child: Scaffold(
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                    height: ScreenUtil().setWidth(126),
                    width: ScreenUtil().setWidth(169),
                    child: Image(image: AssetImage('assets/icons/juice.jpeg'))),
                SizedBox(height: ScreenUtil().setWidth(20)),
                CircularProgressIndicator(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
