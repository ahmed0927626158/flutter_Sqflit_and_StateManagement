import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:dan_vending/utils.dart';

class Scene extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 707;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // frame19vCz (1:265)
        padding: EdgeInsets.fromLTRB(29*fem, 22*fem, 39*fem, 22*fem),
        width: double.infinity,
        decoration: BoxDecoration (
          color: Color(0xffffffff),
          borderRadius: BorderRadius.circular(14*fem),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // autogroup5n5pzie (Cn8icpCrxqEt3WS2Hz5n5p)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 16*fem, 79*fem),
              width: 279*fem,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    // paymentJUS (1:266)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 83*fem),
                    width: double.infinity,
                    child: Text(
                      'payment',
                      textAlign: TextAlign.center,
                      style: SafeGoogleFont (
                        'Comfortaa',
                        fontSize: 37*ffem,
                        fontWeight: FontWeight.w700,
                        height: 1.115*ffem/fem,
                        color: Color(0xff000000),
                      ),
                    ),
                  ),
                  Container(
                    // autogroupbj14z6N (Cn8ihp4XzN9qeH9bgdbj14)
                    margin: EdgeInsets.fromLTRB(13*fem, 0*fem, 0*fem, 0*fem),
                    padding: EdgeInsets.fromLTRB(37*fem, 59*fem, 54*fem, 72*fem),
                    decoration: BoxDecoration (
                      color: Color(0xffffffff),
                      borderRadius: BorderRadius.circular(10*fem),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x89828282),
                          offset: Offset(-1*fem, 3*fem),
                          blurRadius: 3.5*fem,
                        ),
                        BoxShadow(
                          color: Color(0x77828282),
                          offset: Offset(-5*fem, 12*fem),
                          blurRadius: 6.5*fem,
                        ),
                        BoxShadow(
                          color: Color(0x47828282),
                          offset: Offset(-12*fem, 26*fem),
                          blurRadius: 8.5*fem,
                        ),
                        BoxShadow(
                          color: Color(0x14828282),
                          offset: Offset(-21*fem, 47*fem),
                          blurRadius: 10.5*fem,
                        ),
                        BoxShadow(
                          color: Color(0x02828282),
                          offset: Offset(-33*fem, 73*fem),
                          blurRadius: 11.5*fem,
                        ),
                      ],
                    ),
                    child: Center(
                      // cbejCN (1:270)
                      child: SizedBox(
                        width: 175*fem,
                        height: 175*fem,
                        child: Image.asset(
                          'assets/page-1/images/cbe.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Center(
              // orqmC (1:267)
              child: Container(
                margin: EdgeInsets.fromLTRB(0*fem, 22*fem, 35*fem, 0*fem),
                child: Text(
                  'or',
                  textAlign: TextAlign.center,
                  style: SafeGoogleFont (
                    'Comfortaa',
                    fontSize: 37*ffem,
                    fontWeight: FontWeight.w700,
                    height: 0.7567567568*ffem/fem,
                    color: Color(0x68000000),
                  ),
                ),
              ),
            ),
            Container(
              // autogroupwfzzLT4 (Cn8ioyYvzKgMYq6jztwFzz)
              margin: EdgeInsets.fromLTRB(0*fem, 46*fem, 0*fem, 0*fem),
              padding: EdgeInsets.fromLTRB(17*fem, 91*fem, 17*fem, 104*fem),
              width: 266*fem,
              decoration: BoxDecoration (
                color: Color(0xffffffff),
                borderRadius: BorderRadius.circular(10*fem),
                boxShadow: [
                  BoxShadow(
                    color: Color(0x89828282),
                    offset: Offset(1*fem, 2*fem),
                    blurRadius: 2.5*fem,
                  ),
                  BoxShadow(
                    color: Color(0x77828282),
                    offset: Offset(3*fem, 9*fem),
                    blurRadius: 5*fem,
                  ),
                  BoxShadow(
                    color: Color(0x47828282),
                    offset: Offset(6*fem, 21*fem),
                    blurRadius: 6.5*fem,
                  ),
                  BoxShadow(
                    color: Color(0x14828282),
                    offset: Offset(10*fem, 37*fem),
                    blurRadius: 7.5*fem,
                  ),
                  BoxShadow(
                    color: Color(0x02828282),
                    offset: Offset(16*fem, 57*fem),
                    blurRadius: 8.5*fem,
                  ),
                ],
              ),
              child: Align(
                // telebirrWF4 (1:271)
                alignment: Alignment.centerLeft,
                child: SizedBox(
                  width: 195*fem,
                  height: 111*fem,
                  child: Image.asset(
                    'assets/page-1/images/telebirr.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
          );
  }
}