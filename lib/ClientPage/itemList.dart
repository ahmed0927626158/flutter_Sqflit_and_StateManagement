import 'dart:io';

import 'package:dan_vending/models/ItemModel.dart';
import 'package:dan_vending/provider/itemProvider.dart';
import 'package:dan_vending/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:provider/provider.dart';

class DrinkItemList extends StatefulWidget{
  const DrinkItemList({Key?key}):super(key:key);
  @override 
  State<StatefulWidget>createState(){
    return Scene();
  }
}
class Scene extends State<DrinkItemList> {
                                  
  List items=[
    {"name":"Item one","image":"assets/page-1/images/frame-10-bg-wDC.png","price":"100ETB","descr":"Description one"},
    {"name":"Item two","image":"assets/page-1/images/frame-12-bg.png","price":"50ETB","descr":"Description two"},
  ];
  @override
  Widget build(BuildContext context) {
    double baseWidth = 408;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    
    return  Consumer<ItemProvider>(
    builder:(BuildContext context, provider, Widget? child)=>

      Scaffold(
        appBar: AppBar(title: Text("List Of Items"),
        ),
        body: MasonryGridView.builder(
          itemCount: provider.allItems.length,
          gridDelegate: const SliverSimpleGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2), 
          itemBuilder: (context,index)=>Padding(
            padding: EdgeInsets.all(4)
            
            ,
            child: Stack(
              children: [
                TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom (
                    padding: EdgeInsets.zero,
                  ),
                  child: Container(
                    width: double.infinity,
                    height: 327*fem,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
                
                    child: Stack(
                      children: [
                      
                        Center(
                          // frame10ytW (1:453)
                          
                          child: Container(
                            width: 368*fem,
                            height: 327*fem,
                            decoration: BoxDecoration (
                              color: Color(0xff8f7979),
                              borderRadius:BorderRadius.all(Radius.circular(10)),
                              image: DecorationImage (
                                
                                fit: BoxFit.cover,
                                image: FileImage(File(provider.allItems[index].image!.path))
                              ),
                            ),
                            child: Stack(
                              children: [
                                Positioned(
                                  // frame14GMp (1:454)
                                  left: 0*fem,
                                  top: 40.0000305176*fem,
                                  child: Container(
                                    padding: EdgeInsets.fromLTRB(14*fem, 152*fem, 22*fem, 13*fem),
                                    width: 368*fem,
                                    height: 287*fem,
                                    decoration: BoxDecoration (
                                      gradient: LinearGradient (
                                        begin: Alignment(-0, 1.066),
                                        end: Alignment(-0, -1),
                                        colors: <Color>[Color(0xff171717), Color(0x00171717)],
                                        stops: <double>[0, 1],
                                      ),
                                    ),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          // sunchipsJZQ (1:455)
                                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 4*fem),
                                          child: Text(
                                            provider.allItems[index].name,
                                            style: SafeGoogleFont (
                                              'Comfortaa',
                                              fontSize: 25*ffem,
                                              fontWeight: FontWeight.w700,
                                              height: 1.115*ffem/fem,
                                              color: Color(0xffffffff),
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          // loremipsumdolorsitametconsecte (1:456)
                                      
                                          child: Text(
                                          provider.allItems[index].description,
                                            style: SafeGoogleFont (
                                              'Comfortaa',
                                              fontSize: 12*ffem,
                                              fontWeight: FontWeight.w700,
                                             
                                              color: Color.fromARGB(255, 247, 242, 242),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Positioned(
                                  // frame15z4r (1:457)
                                  left: 2*fem,
                                  top: 10.0000305176*fem,
                                  child: Container(
                                    width: 118*fem,
                                    height: 38*fem,
                                    decoration: BoxDecoration (
                                      border: Border.all(color: Color(0xffffffff)),
                                      color: Color(0xff23ff00),
                                      borderRadius: BorderRadius.circular(10*fem),
                                    ),
                                    child: Center(
                                      child: Text(
                                       provider.allItems[index].price.toString()+" ETB",
                                        style: SafeGoogleFont (
                                          'Comfortaa',
                                          fontSize: 24*ffem,
                                          fontWeight: FontWeight.w700,
                                          height: 1.115*ffem/fem,
                                          color: Color(0xffffffff),
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
              ],
          
        ),
          )
        ),
      )
          );
  }
}

/*

child: GridView.count(
         crossAxisCount: 2,
         crossAxisSpacing: 10,
         mainAxisSpacing: 10,
          children: [
            Container(
              // property1defaultPvJ (1:451)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 20*fem),
              child: TextButton(
                onPressed: () {},
                style: TextButton.styleFrom (
                  padding: EdgeInsets.zero,
                ),
                child: Container(
                  width: double.infinity,
                  height: 327*fem,
                  child: Stack(
                    children: [
                      Positioned(
                        // rectangle15VCe (1:452)
                        left: 0*fem,
                        top: 0.0000305176*fem,
                        child: Align(
                          child: SizedBox(
                            width: 368*fem,
                            height: 327*fem,
                            child: Container(
                              decoration: BoxDecoration (
                                borderRadius: BorderRadius.circular(14*fem),
                                border: Border (
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        // frame10ytW (1:453)
                        left: 0*fem,
                        top: 0.0000305176*fem,
                        child: Container(
                          width: 368*fem,
                          height: 327*fem,
                          decoration: BoxDecoration (
                            color: Color(0xff8f7979),
                            borderRadius: BorderRadius.circular(10*fem),
                            image: DecorationImage (
                              fit: BoxFit.cover,
                              image: AssetImage (
                                'assets/page-1/images/frame-10-bg.png',
                                
                              ),
                            ),
                          ),
                          child: Stack(
                            children: [
                              Positioned(
                                // frame14GMp (1:454)
                                left: 0*fem,
                                top: 40.0000305176*fem,
                                child: Container(
                                  padding: EdgeInsets.fromLTRB(14*fem, 152*fem, 22*fem, 13*fem),
                                  width: 368*fem,
                                  height: 287*fem,
                                  decoration: BoxDecoration (
                                    gradient: LinearGradient (
                                      begin: Alignment(-0, 1.066),
                                      end: Alignment(-0, -1),
                                      colors: <Color>[Color(0xff171717), Color(0x00171717)],
                                      stops: <double>[0, 1],
                                    ),
                                  ),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        // sunchipsJZQ (1:455)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 4*fem),
                                        child: Text(
                                          'Item one',
                                          style: SafeGoogleFont (
                                            'Comfortaa',
                                            fontSize: 45*ffem,
                                            fontWeight: FontWeight.w700,
                                            height: 1.115*ffem/fem,
                                            color: Color(0xffffffff),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        // loremipsumdolorsitametconsecte (1:456)
                                        margin: EdgeInsets.fromLTRB(4*fem, 0*fem, 0*fem, 0*fem),
                                        constraints: BoxConstraints (
                                          maxWidth: 328*fem,
                                        ),
                                        child: Text(
                                          'Item 1 Description ',
                                          style: SafeGoogleFont (
                                            'Comfortaa',
                                            fontSize: 12*ffem,
                                            fontWeight: FontWeight.w700,
                                            height: 1.115*ffem/fem,
                                            color: Color(0xffc1c1c1),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                // frame15z4r (1:457)
                                left: 241*fem,
                                top: 10.0000305176*fem,
                                child: Container(
                                  width: 118*fem,
                                  height: 38*fem,
                                  decoration: BoxDecoration (
                                    border: Border.all(color: Color(0xffffffff)),
                                    color: Color(0xff23ff00),
                                    borderRadius: BorderRadius.circular(10*fem),
                                  ),
                                  child: Center(
                                    child: Text(
                                      '12.90\$',
                                      style: SafeGoogleFont (
                                        'Comfortaa',
                                        fontSize: 24*ffem,
                                        fontWeight: FontWeight.w700,
                                        height: 1.115*ffem/fem,
                                        color: Color(0xffffffff),
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




            TextButton(
              // property1variant2zj4 (1:459)
              onPressed: () {},
              style: TextButton.styleFrom (
                padding: EdgeInsets.zero,
              ),
              child: Container(
                padding: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 0*fem),
                width: double.infinity,
                height: 327*fem,
                child: Container(
                  // frame10Jze (1:461)
                  width: double.infinity,
                  height: double.infinity,
                  decoration: BoxDecoration (
                    color: Color(0xff8f7979),
                    borderRadius: BorderRadius.circular(10*fem),
                    image: DecorationImage (
                      fit: BoxFit.cover,
                      image: AssetImage (
                        'assets/page-1/images/frame-10-bg-wDC.png',
                      ),
                    ),
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        // frame14EdQ (1:462)
                        left: 0*fem,
                        top: 40.0000305176*fem,
                        child: Container(
                          padding: EdgeInsets.fromLTRB(14*fem, 152*fem, 22*fem, 13*fem),
                          width: 368*fem,
                          height: 287*fem,
                          decoration: BoxDecoration (
                            gradient: LinearGradient (
                              begin: Alignment(-0, 1.066),
                              end: Alignment(-0, -1),
                              colors: <Color>[Color(0xff171717), Color(0x00171717)],
                              stops: <double>[0, 1],
                            ),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                // sunchipsVJS (1:463)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 4*fem),
                                child: Text(
                                  'sunchips',
                                  style: SafeGoogleFont (
                                    'Comfortaa',
                                    fontSize: 45*ffem,
                                    fontWeight: FontWeight.w700,
                                    height: 1.115*ffem/fem,
                                    color: Color(0xffffffff),
                                  ),
                                ),
                              ),
                              Container(
                                // loremipsumdolorsitametconsecte (1:464)
                                margin: EdgeInsets.fromLTRB(4*fem, 0*fem, 0*fem, 0*fem),
                                constraints: BoxConstraints (
                                  maxWidth: 328*fem,
                                ),
                                child: Text(
                                  'Item 2 description ',
                                  style: SafeGoogleFont (
                                    'Comfortaa',
                                    fontSize: 12*ffem,
                                    fontWeight: FontWeight.w700,
                                    height: 1.115*ffem/fem,
                                    color: Color(0xffc1c1c1),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        // frame15oTY (1:465)
                        left: 241*fem,
                        top: 10.0000305176*fem,
                        child: Container(
                          width: 118*fem,
                          height: 38*fem,
                          decoration: BoxDecoration (
                            border: Border.all(color: Color(0xffffffff)),
                            color: Color(0xff23ff00),
                            borderRadius: BorderRadius.circular(10*fem),
                          ),
                          child: Center(
                            child: Text(
                              '12.90\$',
                              style: SafeGoogleFont (
                                'Comfortaa',
                                fontSize: 24*ffem,
                                fontWeight: FontWeight.w700,
                                height: 1.115*ffem/fem,
                                color: Color(0xffffffff),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),


*/