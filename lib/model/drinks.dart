import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';

part 'drinks.g.dart';

@JsonSerializable()
class Drinks{

  String? idDrink,strDrink,strDrinkAlternate,strTags,strVideo,strCategory,strIBA,strDrinkThumb,strAlcaholic,strGlass,strInstructions,strInstructionsES,strInstructionsDE,strInstructionsFR,strInstructionsIT,strInstructionsZHHANS,strInstructionsZHHANT,
          strIngredient1,strIngredient2,strIngredient3,strIngredient4,strIngredient5,strIngredient6,strIngredient7,strIngredient8,strIngredient9,strIngredient10,strIngredient11,strIngredient12,strIngredient13,strIngredient14,strIngredient15,
          strMeasure1,strMeasure2,strMeasure3,strMeasure4,strMeasure5,strMeasure6,strMeasure7,strMeasure8,strMeasure9,strMeasure10,strMeasure11,strMeasure12,strMeasure13,strMeasure14,strMeasure15,
      strImageSource,strImageAttribution,strCreativeCommonsConfirmed,dateModified;

  Drinks({
      this.idDrink,
      this.strDrink,
      this.strDrinkAlternate,
      this.strTags,
      this.strVideo,
      this.strCategory,
      this.strIBA,
      this.strAlcaholic,
      this.strDrinkThumb,
      this.strGlass,
      this.strInstructions,
      this.strInstructionsES,
      this.strInstructionsDE,
      this.strInstructionsFR,
      this.strInstructionsIT,
      this.strInstructionsZHHANS,
      this.strInstructionsZHHANT,
      this.strIngredient1,
      this.strIngredient2,
      this.strIngredient3,
      this.strIngredient4,
      this.strIngredient5,
      this.strIngredient6,
      this.strIngredient7,
      this.strIngredient8,
      this.strIngredient9,
      this.strIngredient10,
      this.strIngredient11,
      this.strIngredient12,
      this.strIngredient13,
      this.strIngredient14,
      this.strIngredient15,
      this.strMeasure1,
      this.strMeasure2,
      this.strMeasure3,
      this.strMeasure4,
      this.strMeasure5,
      this.strMeasure6,
      this.strMeasure7,
      this.strMeasure8,
      this.strMeasure9,
      this.strMeasure10,
      this.strMeasure11,
      this.strMeasure12,
      this.strMeasure13,
      this.strMeasure14,
      this.strMeasure15,
      this.strImageSource,
      this.strImageAttribution,
      this.strCreativeCommonsConfirmed,
      this.dateModified});



  factory Drinks.fromJson(Map<String, dynamic> json) => _$DrinksFromJson(json);

  Map<String, dynamic> toJson() => _$DrinksToJson(this);
}