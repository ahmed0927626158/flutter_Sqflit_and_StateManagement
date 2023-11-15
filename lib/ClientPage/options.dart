import 'dart:ffi';

import 'package:dan_vending/provider/itemProvider.dart';
import 'package:flutter/material.dart';
import 'dart:ui';
import "package:dan_vending/utils.dart";
import 'package:dan_vending/ClientPage/itemList.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:provider/provider.dart';// for Item List
class ListOfOptions extends StatelessWidget {

  List options=[
    {"name":"Snacks","image":"assets/page-1/images/image-2.png","type":"assets/page-1/images/exclude.png"},
    {"name":"Drinks","image":"assets/page-1/images/image-3.png","type":"assets/page-1/images/exclude-4VG.png"}
      
                                                         
  ];
  @override
  Widget build(BuildContext context) {
    double baseWidth = 1194;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:
       Stack(
        children: [
          Container(
            width:MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Container(
              // ipadpro111S5Y (1:10)
              
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration (
                color: Color(0xffffffff),
                image: DecorationImage (
                  fit: BoxFit.cover,
                  image: AssetImage (
                    'assets/page-1/images/image-1-bg.png',
                  ),
                ),
              ),
            )
          ),
             Column
                
                (
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                  
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height,
                      child: Stack(
                        children: [
                          Positioned(
                            // frame124r (1:73)
                            left: 2*fem,
                            top: 10*fem,
                          
                            child: ClipRect(
                              child: BackdropFilter(
                                filter: ImageFilter.blur (
                                  sigmaX: 10.5*fem,
                                  sigmaY: 10.5*fem,
                                ),
                                child: Container(
                                 
                                  width: MediaQuery.of(context).size.width,
                                  height: MediaQuery.of(context).size.height,
                                  decoration: BoxDecoration (
                                    color: Color(0x3affffff),
                                    borderRadius: BorderRadius.circular(37*fem),
                                    border: Border (
                                    ),
                                  ),
                                  child: Container(
                                    // frame4SPU (1:74)
                                    width: double.infinity,
                                    height:MediaQuery.of(context).size.height,

                                    child: MasonryGridView.builder(
                                      itemCount: options.length,
                                      gridDelegate: SliverSimpleGridDelegateWithFixedCrossAxisCount(crossAxisCount:1),
                                      itemBuilder:(context,index)=>
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          TextButton(
                                            // frame2zQz (1:75)
                                            onPressed: () {
                                              Navigator.push(context, 
                                              MaterialPageRoute(builder: (context)=>
                                              ChangeNotifierProvider(create: (_)=>ItemProvider(),
                                              child:  DrinkItemList(),
                                              )
                                              
                                               ));
                                            },
                                            style: TextButton.styleFrom (
                                              padding: EdgeInsets.all(10),
                                            ),
                                            child: Container(
                                              width: double.infinity,
                                              height: 310*fem,
                                              decoration: BoxDecoration (
                                                border: Border.all(color: Color(0xffffffff)),
                                                color: Color(0x3affffff),
                                                borderRadius: BorderRadius.circular(10),
                                              ),
                                              child: Stack(
                                                children: [
                                                  
                                                    // image25BY (1:76)
                                                 
                                                         Container(
                                                          width: double.infinity,
                                                          decoration: BoxDecoration(
                                                            borderRadius: BorderRadius.circular(10)),
                                                          child:ClipRRect(
                                                          borderRadius: BorderRadius.circular(8.0),
                                                          child: Image.asset(
                                                           options[index]["image"].toString(),
                                                            fit: BoxFit.cover,
                                                          
                                                          ),
                                                          ),
                                                        ),
                                                      
                                                    
                                        
                                                  Positioned(
                                                    // frame9ZcW (1:77)
                                                    left: 240*fem,
                                                    top: 46*fem,
                                                    child: Container(
                                                      width: 495*fem,
                                                      height: 200*fem,
                                                      decoration: BoxDecoration (
                                                       
                                                        image: DecorationImage (
                                                          
                                                          fit: BoxFit.cover,
                                                          image: AssetImage (
                                                            options[index]["type"],
                                                          ),
                                                        ),
                                                      ),
                                                      child: Center(
                                                        child: Text(
                                                          options[index]["name"].toString(),
                                                          style: SafeGoogleFont (
                                                            'Comfortaa',
                                                            fontSize: 93*ffem,
                                                            height: 1.115*ffem/fem,
                                                            letterSpacing: 1.395*fem,
                                                            color: Color(0x3affffff),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          
                                          
                                          
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              
            
                
                
        ],
      ),
    );
  }
}

/*

TextButton(
                                          // frame4iti (1:83)
                                          onPressed: () {},
                                          style: TextButton.styleFrom (
                                            padding: EdgeInsets.all(10),
                                          ),
                                          child: Container(
                                            width: double.infinity,
                                            height: 310*fem,
                                            decoration: BoxDecoration (
                                              border: Border.all(color: Color(0xffffffff)),
                                              color: Color(0x3affffff),
                                              borderRadius: BorderRadius.circular(10),
                                            ),
    
                                            child: Stack(
                                              children: [
                                                Positioned(
                                                  // image3pB4 (1:84)
                                                  
                                                 left: -20,
                                                 top: -100*fem,
                                                 right: -2*fem,
                                                
                                              child: ClipRRect(                                                
                                                  borderRadius: BorderRadius.circular(10),
                                                    child: Expanded(
                                                      child: Image.asset(
                                                          'assets/page-1/images/image-3.png',
                                                          fit: BoxFit.cover,
                                                        ),
                                                    
                                                    ),
                                                     )
                                                  
                                                ),
                                                Positioned(
                                                  // frame9uyC (1:85)
                                                    left: 240*fem,
                                                  top: 46*fem,
                                                  child: Container(
                                                    width: 495*fem,
                                                    height: 200*fem,
                                                    decoration: BoxDecoration (
                                                      image: DecorationImage (
                                                        fit: BoxFit.cover,
                                                        image: AssetImage (
                                                          'assets/page-1/images/exclude-4VG.png',
                                                          
                                                        ),
                                                      ),
                                                    ),
                                                    
                                                      child: Text(
                                                        'Drinks',
                                                        style: SafeGoogleFont (
                                                          'Comfortaa',
                                                          fontSize: 93*ffem,
                                                          height: 1.115*ffem/fem,
                                                          letterSpacing: 1.395*fem,
                                                          color: Color(0x3affffff),
                                                        ),
                                                      ),
                                                    
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
*/