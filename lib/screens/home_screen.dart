import 'package:flutter/material.dart';
import 'package:machine_test/provider/drinks_provider.dart';
import 'package:machine_test/widgets/drinks_widget.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  static final String routeName="/home_screen";

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {





  @override
  Widget build(BuildContext context) {

    var provider = Provider.of<DrinksProvider>(context);

    return Container(
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text("Drinks"),
            centerTitle: true,
          ),
          body: Container(
            child: ListView.builder(itemBuilder: (context, int index){
              return Padding(
                padding:  EdgeInsets.symmetric(vertical:16.0),
                child: DrinksWidget(drinks:provider.drinks[index]),
              );
            },
              itemCount: provider.drinks.length,
            ),
          ),
        ),
      ),
    );
  }
}
