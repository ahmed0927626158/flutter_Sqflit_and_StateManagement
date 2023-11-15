import 'dart:io';

import 'package:flutter/material.dart';
import 'package:dan_vending/models/ItemModel.dart';
import 'package:dan_vending/utils.dart';

class ItemWidget extends StatelessWidget {
final ItemModel itemModel;

  const ItemWidget(this.itemModel, {super.key});

  @override
  Widget build(BuildContext context) {
     double baseWidth = 408;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return InkWell(
      onTap: (() {}),

      child: Padding(
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
                            image: FileImage(File(itemModel.image!.path)) 
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
                                         itemModel.name.toString(),
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
                                       itemModel.description.toString(),
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
                                      itemModel.price.toString()+" ETB",
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
    );
  }
}
