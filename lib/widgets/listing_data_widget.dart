import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../provider/drinks_provider.dart';

class LisingDataWidget extends StatelessWidget {

  String? instruction;

  LisingDataWidget({this.instruction});

  @override
  Widget build(BuildContext context) {

    var provider = Provider.of<DrinksProvider>(context);

    return Container(
        width: ScreenUtil().setWidth(390),
    child: Text(instruction!,style: TextStyle(color: Colors.black87,fontSize: 14),));
  }
}
