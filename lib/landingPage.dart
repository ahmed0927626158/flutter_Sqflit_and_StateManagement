import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:dan_vending/ClientPage/options.dart'; //Chose Snake and  Drinks
import "package:dan_vending/Maintenance/login.dart";

class Landing extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold
    (
    
      body: TextButton(
        // ipadpro1139Aa (1:90)
      
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context)=>ListOfOptions()));
        },
        style: TextButton.styleFrom (
          padding: EdgeInsets.zero,
        ),
        
          child: Stack(
            children: [
            
           Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration (
            color: Color(0xffffffff),
            image: DecorationImage (
              fit: BoxFit.cover,
              image: AssetImage (
                'assets/page-1/images/im-1.png',
              ),
            ),
          ),
           ),
              
       Container(
                        // line48Rp (1:96)
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                        decoration: BoxDecoration (
                          color: Colors.black38
                        ),
                      ),
                      
                    ],
                  ),
                ),
                floatingActionButton: FloatingActionButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Login()));
                },
                child: const Text("Log in"),
                ),
              );
            
      
  
  }
}