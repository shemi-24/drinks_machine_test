import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:machine_test/screens/details_screen.dart';
import 'package:machine_test/widgets/raised_gradient_button.dart';
import 'package:provider/provider.dart';

import '../model/drinks.dart';
import '../provider/drinks_provider.dart';

class DrinksWidget extends StatefulWidget {

  final Drinks drinks;

  DrinksWidget({required this.drinks});

  @override
  _DrinksWidgetState createState() {
    return _DrinksWidgetState();
  }
}

class _DrinksWidgetState extends State<DrinksWidget> {
  @override
  Widget build(BuildContext context) {

    var provider = Provider.of<DrinksProvider>(context);


    return Container(
      height: ScreenUtil().setWidth(121),
      width: double.infinity,
      padding: EdgeInsets.symmetric(
          horizontal: ScreenUtil().setWidth(16),
          vertical: ScreenUtil().setWidth(8)
      ),
      margin: EdgeInsets.only(
        left: ScreenUtil().setWidth(32),
        right: ScreenUtil().setWidth(32),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
        boxShadow: <BoxShadow>[
          BoxShadow(
              color: Colors.black.withOpacity(0.08),
              blurRadius: ScreenUtil().setWidth(6),
              offset: Offset(0.0, 0.0)
          )
        ],
      ),
      child: Row(
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage(widget.drinks.strDrinkThumb!,),
            radius: 40,
          ),
          SizedBox(width: ScreenUtil().setWidth(16),),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(
                  top: ScreenUtil().setWidth(18),
                  bottom: ScreenUtil().setWidth(10)
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(widget.drinks.strDrink!,style: TextStyle(color: Colors.black,fontWeight: FontWeight.w800,fontSize: 12,fontFamily: "OpenSans"),),
                        SizedBox(height: ScreenUtil().setWidth(10),),
                        Text(widget.drinks.strCategory!,style: TextStyle(color: Colors.black87,fontSize: 12),)
                      ],
                    ),
                  ),
                  SizedBox(
                      width: ScreenUtil().setWidth(110),
                      height: ScreenUtil().setWidth(21),
                      child: RaisedGradientButton(
                          child: Text(
                           "see more",
                            style: TextStyle(color: Colors.white,
                                fontWeight: FontWeight.w800,
                                fontFamily: "ProximaNova",
                                fontSize: 10),
                          ),
                          gradient: LinearGradient(
                            colors: <Color>[Color(0xFFDC3748), Color(0xFF34589A)],
                          ),
                           onPressed: (){
                            setState(() {
                              provider.selectedDrinks=widget.drinks;
                              Navigator.of(context).pushNamed(DetailsPage.routeName);
                            });
                           },
                           height: 30, width: 50, radius: 15,
                      )
                    //     :

                  )

                ],
              ),
            ),
          ),
        ],
      ),
    );

  }
}
