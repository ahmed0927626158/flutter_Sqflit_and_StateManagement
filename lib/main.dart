import 'package:flutter/material.dart';
import 'package:dan_vending/utils.dart';
 import 'package:dan_vending/landingPage.dart';
 import 'package:dan_vending/dataRepository/dbHelper.dart';
// import 'package:myapp/page-1/ipad-pro-11-4.dart';
// import 'package:myapp/page-1/frame-19.dart';
// import 'package:myapp/page-1/ipad-pro-11-5.dart';
// import 'package:myapp/page-1/ipad-pro-11-2.dart';
// import "package:dan_vending/page-1/frame-19.dart";  For Payment


void main() async{
 
    WidgetsFlutterBinding.ensureInitialized();
  await DbHelper.dbHelper.initDatabase();
    runApp(MyApp());
}

class MyApp extends StatelessWidget {
	@override
	Widget build(BuildContext context) {
	return MaterialApp(
		title: 'Flutter',
		debugShowCheckedModeBanner: false,
		scrollBehavior: MyCustomScrollBehavior(),
		theme: ThemeData(
		primarySwatch: Colors.blue,
		),
		home: Landing()
		
	);
	}
  
}
