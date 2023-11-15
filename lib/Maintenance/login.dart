import 'package:dan_vending/Maintenance/screens/home.dart';
import 'package:dan_vending/provider/itemProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Login extends StatefulWidget{
  const Login({Key?key}):super(key: key);
  State<StatefulWidget>createState(){
    return LoginState();
  }
}

class LoginState extends State<Login>{
  TextEditingController username=TextEditingController();
  TextEditingController password=TextEditingController();
  @override 
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title:const Text("Maintenance Login"),
        backgroundColor: Colors.blue,
        centerTitle: true,
         ),
         backgroundColor: Colors.white54,
         body: Center(
           child: Container(
            margin: EdgeInsets.all(20),
            width: 400,
            height: 400,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white
              ),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                     
                      TextField(
                        controller: username,
                        decoration: InputDecoration(
                          label: Center(child: Text("User Name"))
                        ),

                      ),
                      SizedBox(
                        height: 15,
                      ),
                       TextField(
                        controller: password,
                       obscureText: true,
                        decoration: InputDecoration(
                          label: Center(child:Text("Password")), 
                        ),      
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: double.infinity,
                        child: ElevatedButton(onPressed: (){
                          if(username.text=="admin" && password.text=="admin"){
                            username.text="";
                            password.text="";
                            Navigator.push(context, MaterialPageRoute(
                              builder: (context)=>
                              ChangeNotifierProvider(create:(_)=>ItemProvider(),
                              child:  MainScreen(),)
                             )
                              );
                          }
                          else{

                          } 
                        },
                        style: ElevatedButton.styleFrom(                             
                          backgroundColor: Colors.blue, // Background color of the button
                          foregroundColor: Colors.white, // Text color of the button
                          textStyle: TextStyle(fontSize: 16), // Text style of the button
                          padding: EdgeInsets.all(12), // Padding around the button's child widget
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5), // Border radius of the button
                          ),
                          elevation: 4, // Elevation of the button
                        ),
                        
                         
                        child: const Text("Login")),
                      )
                    ]
                    ),
                ),
              ),
         
           ),
         ),
    );
  }
}