import 'package:flgo/route/app_route_constant.dart';
import 'package:flutter/material.dart';
import 'package:go/pages/about.dart';
import 'package:go/pages/cart.dart';
import 'package:go/pages/contact.dart';
import 'package:go/pages/home.dart';
import 'package:go/project/routes/app_route_const.dart';
import 'package:go_router/go_router.dart';

class MyAppRouter{

  GoRouter router=GoRouter(routes: [
        GoRoute(
          name: 'Homepage',
          path:'/',
          pageBuilder: (context, state) {         
            return MaterialPage(child: MyHomePage());
          },
          
          
           ),
           GoRoute(
          name: 'Cart',
          path:'/cart',
          pageBuilder: (context, state) {         
            return MaterialPage(child: Cart());
          },
          
          
           ),

      GoRoute(
          name: 'aboutme',
          path:'/aboutme/:username/:lastname',
          pageBuilder: (context, state) {         
            return MaterialPage(child: abtme(name: state.pathParameters['username']!,
            lastname: state.pathParameters['lastname']!,
            ));
          },
          
          
           ),


      GoRoute(
          name: 'contact',
          path:'/contact',
          pageBuilder: (context, state) {         
            return MaterialPage(child: Cotme());
          },
          
           ),
  ],

         redirect: (context, state) {
        
        final bool isAuth=false;

      if(!isAuth && state.matchedLocation.startsWith('/${MyapprouteConstant.profileroutename}'))
        {  
          return context.namedLocation(MyapprouteConstant.profileroutename);
        }
      else{
        return null;
      }
  },
  
  );
}