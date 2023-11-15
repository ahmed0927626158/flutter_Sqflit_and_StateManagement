import 'package:flutter/material.dart';
import 'dart:io';
import 'package:dan_vending/models/ItemModel.dart';
import 'package:dan_vending/dataRepository/dbHelper.dart';


class ItemProvider extends ChangeNotifier{

  ItemProvider(){
    getItems();
  }

  bool isDark=false;
  changeIsDark(){
    isDark=!isDark;
    notifyListeners();
  }

  TextEditingController name=TextEditingController();
  TextEditingController price=TextEditingController();
  TextEditingController description=TextEditingController();
  TextEditingController type=TextEditingController();
  TextEditingController slotNum=TextEditingController();
  TextEditingController quantity=TextEditingController();
  File? image;
  
  List<ItemModel> allItems=[];
   getItems() async{
    allItems=await DbHelper.dbHelper.getAllItems();
    notifyListeners();
   }

   insertItem()async{
    ItemModel itemModel=ItemModel(
      name: name.text,
      price:double.parse(price.text),
      type: type.text, 
      quantity: int.parse(quantity.text), 
      description: description.text, 
      image: image, 
      slotNum: int.parse(slotNum.text)
      );
      await DbHelper.dbHelper.insertItem(itemModel);
      getItems();
   }
}