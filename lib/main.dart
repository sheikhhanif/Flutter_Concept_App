import 'package:flutter/material.dart';
import 'package:papp/models/data.dart';
import 'package:papp/screens/home/home_screen.dart';
import 'package:papp/theme.dart';
import 'package:papp/screens/main_screen.dart';
import 'package:papp/models/favpro1.dart';
import 'package:provider/provider.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(create: (context){
          return FavModel();
        },
      child: MaterialApp(
        home:MainScreen(),
      )
    );
  }
}