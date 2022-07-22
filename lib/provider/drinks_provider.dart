import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../model/drinks.dart';

class DrinksProvider with ChangeNotifier{


  Dio dio = Dio(BaseOptions(
      baseUrl: 'https://www.thecocktaildb.com/api',
      connectTimeout: 9000,
      receiveTimeout: 9000,
      contentType: Headers.textPlainContentType
  ));


  List<Drinks> _drinks=[];



  List<Drinks> get drinks{
    return [..._drinks];
  }




  Drinks _selectedDrinks=Drinks();


  Drinks get selectedDrinks => _selectedDrinks;

  set selectedDrinks(Drinks value) {
    _selectedDrinks = value;
  }

  Future getAllDrinks(BuildContext? context)async{

    if (kDebugMode) {
      print("FETCHING ALL DRINKS");
    }

      try{
        var response= await dio.request("/json/v1/1/search.php?s=rum#",options: Options(method: 'GET',));


        print("FETCH DRINKS ORDERS:" + response.toString());

        var decodedResponse=json.decode(response.toString()) as Map<
            String,
            dynamic>;

        List<Drinks> fetchingDrinks=[];

        if(response.statusCode==200)
        {
          var data=decodedResponse["drinks"] as List;

          data.forEach((element) {
            
            fetchingDrinks.add(Drinks.fromJson(element));
              
          });

          print("COUNT:"+fetchingDrinks.length.toString());

          _drinks.clear();
          _drinks.addAll(fetchingDrinks);


        }

      }
      on DioError catch (e) {
        if (e.type == DioErrorType.connectTimeout ||
            e.type == DioErrorType.receiveTimeout ||
            e.type == DioErrorType.sendTimeout) {
          print("FETCH DRINKS ERROR:" + e.message);
        }

      }
  }


  }


