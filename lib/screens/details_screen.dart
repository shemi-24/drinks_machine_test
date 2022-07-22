import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:machine_test/widgets/listing_data_widget.dart';
import 'package:provider/provider.dart';

import '../provider/drinks_provider.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({Key? key}) : super(key: key);

  static final String routeName="/details_screen";


  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {

  List<String?> ingredients=[];

  List<String?> measures=[];

  int dummy=0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    var provider = Provider.of<DrinksProvider>(context,listen: false);

    provider.selectedDrinks.strIngredient1!=null?ingredients.add(provider.selectedDrinks.strIngredient1): dummy=0;
    provider.selectedDrinks.strIngredient2!=null?ingredients.add(provider.selectedDrinks.strIngredient2): dummy=0;
    provider.selectedDrinks.strIngredient3!=null?ingredients.add(provider.selectedDrinks.strIngredient3): dummy=0;
    provider.selectedDrinks.strIngredient4!=null?ingredients.add(provider.selectedDrinks.strIngredient4): dummy=0;
    provider.selectedDrinks.strIngredient5!=null?ingredients.add(provider.selectedDrinks.strIngredient5): dummy=0;
    provider.selectedDrinks.strIngredient6!=null?ingredients.add(provider.selectedDrinks.strIngredient6): dummy=0;
    provider.selectedDrinks.strIngredient7!=null?ingredients.add(provider.selectedDrinks.strIngredient7): dummy=0;
    provider.selectedDrinks.strIngredient8!=null?ingredients.add(provider.selectedDrinks.strIngredient8): dummy=0;
    provider.selectedDrinks.strIngredient9!=null?ingredients.add(provider.selectedDrinks.strIngredient9): dummy=0;
    provider.selectedDrinks.strIngredient10!=null?ingredients.add(provider.selectedDrinks.strIngredient10): dummy=0;
    provider.selectedDrinks.strIngredient11!=null?ingredients.add(provider.selectedDrinks.strIngredient11): dummy=0;
    provider.selectedDrinks.strIngredient12!=null?ingredients.add(provider.selectedDrinks.strIngredient12): dummy=0;
    provider.selectedDrinks.strIngredient13!=null?ingredients.add(provider.selectedDrinks.strIngredient13): dummy=0;
    provider.selectedDrinks.strIngredient14!=null?ingredients.add(provider.selectedDrinks.strIngredient14): dummy=0;
    provider.selectedDrinks.strIngredient15!=null?ingredients.add(provider.selectedDrinks.strIngredient15): dummy=0;



    provider.selectedDrinks.strMeasure1!=null?measures.add(provider.selectedDrinks.strMeasure1):dummy=0;
    provider.selectedDrinks.strMeasure2!=null?measures.add(provider.selectedDrinks.strMeasure2):dummy=0;
    provider.selectedDrinks.strMeasure3!=null?measures.add(provider.selectedDrinks.strMeasure3):dummy=0;
    provider.selectedDrinks.strMeasure4!=null?measures.add(provider.selectedDrinks.strMeasure4):dummy=0;
    provider.selectedDrinks.strMeasure5!=null?measures.add(provider.selectedDrinks.strMeasure5):dummy=0;
    provider.selectedDrinks.strMeasure6!=null?measures.add(provider.selectedDrinks.strMeasure6):dummy=0;
    provider.selectedDrinks.strMeasure7!=null?measures.add(provider.selectedDrinks.strMeasure7):dummy=0;
    provider.selectedDrinks.strMeasure8!=null?measures.add(provider.selectedDrinks.strMeasure8):dummy=0;
    provider.selectedDrinks.strMeasure9!=null?measures.add(provider.selectedDrinks.strMeasure9):dummy=0;
    provider.selectedDrinks.strMeasure10!=null?measures.add(provider.selectedDrinks.strMeasure10):dummy=0;
    provider.selectedDrinks.strMeasure11!=null?measures.add(provider.selectedDrinks.strMeasure11):dummy=0;
    provider.selectedDrinks.strMeasure12!=null?measures.add(provider.selectedDrinks.strMeasure12):dummy=0;
    provider.selectedDrinks.strMeasure13!=null?measures.add(provider.selectedDrinks.strMeasure13):dummy=0;
    provider.selectedDrinks.strMeasure14!=null?measures.add(provider.selectedDrinks.strMeasure14):dummy=0;
    provider.selectedDrinks.strMeasure15!=null?measures.add(provider.selectedDrinks.strMeasure15):dummy=0;





  }

  @override
  Widget build(BuildContext context) {

    var provider = Provider.of<DrinksProvider>(context);

    return Container(
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text("Details"),
            centerTitle: true,
            leading: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: ()=>Navigator.of(context).pop(),
            ),
          ),
          body: Container(
            child: SingleChildScrollView(
              child: Padding(
                padding:  EdgeInsets.symmetric(vertical: ScreenUtil().setWidth(16),horizontal: ScreenUtil().setWidth(16)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: ScreenUtil().setWidth(25),),
                    Center(
                      child: Column(
                        children: [
                          Container(
                            width: ScreenUtil().setWidth(127),height: ScreenUtil().setWidth(195),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image:NetworkImage(provider.selectedDrinks.strDrinkThumb!)),
                            ),
                          ),
                          SizedBox(height: ScreenUtil().setWidth(15),),
                          Text(provider.selectedDrinks.strDrink!,style: TextStyle(color: Colors.black,fontWeight: FontWeight.w800,fontSize: 18),),
                          SizedBox(height: ScreenUtil().setWidth(10),),
                          Text("${provider.selectedDrinks.strCategory!}(${provider.selectedDrinks.strAlcaholic!})",style: TextStyle(color: Colors.black87,fontSize: 14),),
                          SizedBox(height: ScreenUtil().setWidth(10),),
                          Text("Glass Type:${provider.selectedDrinks.strGlass!}",style: TextStyle(color: Colors.black87,fontSize: 14),),
                          SizedBox(height: ScreenUtil().setWidth(10),),
                          Text("Creative Commons Provided?:${provider.selectedDrinks.strCreativeCommonsConfirmed!}",style: TextStyle(color: Colors.black87,fontSize: 14),)
                        ],
                      ),
                    ),
                    SizedBox(height: ScreenUtil().setWidth(25),),
                    Text("How To Make It?",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w800,fontSize: 20),),
                    SizedBox(height: ScreenUtil().setWidth(20),),

                    Row(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Ingredients",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w800,fontSize: 14),),
                            SizedBox(height: ScreenUtil().setWidth(10),),
                            Container(
                              height: ScreenUtil().setWidth(150),
                              width:ScreenUtil().setWidth(150),

                              child: ListView.builder(itemBuilder: (context, int index){
                                return Padding(
                                  padding: const EdgeInsets.all(6.0),
                                  child: LisingDataWidget(instruction: "${ingredients[index]!}",),
                                );
                              },
                                itemCount: ingredients.length,
                                shrinkWrap: true,
                                // physics: NeverScrollableScrollPhysics(),

                              ),
                            )
                          ],
                        ),
                        SizedBox(width: ScreenUtil().setWidth(6),),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Measures",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w800,fontSize: 14),),
                              SizedBox(height: ScreenUtil().setWidth(10),),
                              Container(
                                height: ScreenUtil().setWidth(150),
                                child: ListView.builder(itemBuilder: (context, int index){
                                  return Padding(
                                    padding: const EdgeInsets.all(6.0),
                                    child: LisingDataWidget(instruction: "${measures[index]!}",),
                                  );
                                },
                                  itemCount: measures.length,
                                  shrinkWrap: true,
                                  // physics: NeverScrollableScrollPhysics(),

                                ),
                              )
                            ],
                          ),
                        ),


                      ],
                    ),
                    SizedBox(height: ScreenUtil().setWidth(8),),
                    Text("Instructions",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w800,fontSize: 20),),
                    SizedBox(height: ScreenUtil().setWidth(10),),
                    LisingDataWidget(instruction: provider.selectedDrinks.strInstructions!,),
                    SizedBox(height: ScreenUtil().setWidth(6),),
                    provider.selectedDrinks.strInstructionsES!=null?LisingDataWidget(instruction: provider.selectedDrinks.strInstructionsES!,):SizedBox(),
                    SizedBox(height: ScreenUtil().setWidth(6),),
                    provider.selectedDrinks.strInstructionsDE!=null?LisingDataWidget(instruction: provider.selectedDrinks.strInstructionsDE!,):SizedBox(),
                    SizedBox(height: ScreenUtil().setWidth(6),),
                    provider.selectedDrinks.strInstructionsFR!=null?LisingDataWidget(instruction: provider.selectedDrinks.strInstructionsFR!,):SizedBox(),
                    SizedBox(height: ScreenUtil().setWidth(6),),
                    provider.selectedDrinks.strInstructionsIT!=null?LisingDataWidget(instruction: provider.selectedDrinks.strInstructionsIT!,):SizedBox(),
                    SizedBox(height: ScreenUtil().setWidth(6),),
                    provider.selectedDrinks.strInstructionsZHHANS!=null?LisingDataWidget(instruction: provider.selectedDrinks.strInstructionsZHHANS!,):SizedBox(),
                    SizedBox(height: ScreenUtil().setWidth(6),),
                    provider.selectedDrinks.strInstructionsZHHANT!=null?LisingDataWidget(instruction: provider.selectedDrinks.strInstructionsZHHANT!,):SizedBox(),




                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
