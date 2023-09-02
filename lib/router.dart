import 'package:amazon_clone_tutorial/features/auth/screens/auth_screen.dart';
import 'package:amazon_clone_tutorial/features/auth/screens/home_screen.dart';
import 'package:flutter/material.dart';

Route<dynamic> generateRoute(RouteSettings routeSettings){
switch(routeSettings.name){
case AuthScreen.routeName:
 return MaterialPageRoute(builder: (_) => AuthScreen());
 case HomeScreen.routeName:
 return MaterialPageRoute(builder: (_) => HomeScreen());
default:
return MaterialPageRoute(settings: routeSettings,builder: (_)=>const Scaffold(
  body: Center(
    child: Text('screen does not exist!'),
  ),
));
}
}