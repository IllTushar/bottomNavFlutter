import 'package:app_bar_with_search_switch/app_bar_with_search_switch.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class search extends StatefulWidget{
  const search({super.key});

  @override
  State<search> createState() => _searchState();
}

class _searchState extends State<search> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBarWithSearchSwitch(
        appBarBuilder: (BuildContext context) {
          return AppBar(
            title: Text("Search"),
            actions: const [
              // AppBarSpeechButton(),  // in version 2.0+
              AppBarSearchButton(),
              // or
              // IconButton(onPressed: AppBarWithSearchSwitch.of(context)?startSearch, icon: Icon(Icons.search)),
            ],
          );
      },

      ),
    );
  }
}