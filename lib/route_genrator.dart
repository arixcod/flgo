import 'package:flgo/custom_page.dart';
import 'package:flgo/main.dart';
import 'package:flutter/material.dart';


class RouteGenrator{

 static Route<dynamic>generateRoute(RouteSettings settings){

  final args=settings.arguments;
  switch(settings.name){
    case '/':
      return MaterialPageRoute(builder: (_){
      return FirstPage();
      });

   case '/second':
      if(args is String){
          return CustomPageRoute(
            child: SecondPage(data: args,),
            direction: AxisDirection.left
        );}
      
      return _errorRoute();
    default:
      return _errorRoute();
              
  }
 } 

static Route<dynamic>_errorRoute(){
  return MaterialPageRoute(builder: (_){
    return Scaffold(
      appBar: AppBar(
        title: Text("Error Page"),

      ),
      body: Center(child: 
        Text("Error 404 ! ")
      ,),

    );

  });

}


}