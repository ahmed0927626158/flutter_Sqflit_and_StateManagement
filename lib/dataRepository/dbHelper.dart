import 'dart:io';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

import 'package:dan_vending/models/ItemModel.dart';

class DbHelper 
{
  // Define Variables
  late Database database;
  static DbHelper dbHelper=DbHelper();

  final String tbname="items";
  final String nameCol="name";
  final String slotNumCol="slotNum";
  final String priceCol="price";
  final String descriptionCol="description";
  final String typeCol="type";
  final String quantityCol="quantity";
  final String imageCol="image";


// Connect database
  initDatabase() async{
    database=await connectToDatabase();
  }

  Future<Database>connectToDatabase() async{
    // Define the path
    Directory directory=await getApplicationCacheDirectory();

    // Name the database
    String path="$directory/db.db";

// Create the database
    return openDatabase(
      path,
      version: 1,
      onCreate: (db, version) {
        db.execute(
          """ CREATE TABLE $tbname(
            $nameCol TEXT,
            $priceCol REAL,
            $typeCol TEXT,
            $quantityCol INTEGER,
            $descriptionCol TEXT,
            $imageCol TEXT,
            $slotNumCol INTEGER

            );
          """
        );
      },
      onUpgrade: (db, oldVersion, newVersion) {
        db.execute(""" 
         CREATE TABLE $tbname(
          
            $nameCol TEXT,
            $priceCol REAL,
            $typeCol TEXT,
            $quantityCol INTEGER,
            $descriptionCol TEXT,
            $imageCol TEXT,
            $slotNumCol INTEGER

            );
        """);
      }, 
      onDowngrade: (db, oldVersion, newVersion) {
        db.delete(tbname);
      },
    );
  }

  // Read Item lists
  Future<List<ItemModel>>getAllItems()async{
    List<Map<String,dynamic>>items= await database.query(tbname);
    
    return items.map((e) => ItemModel.fromJson(e)).toList();
  }

  // Insert New Item
  insertItem(ItemModel itemModel){
    print(itemModel.toJson());
    database.insert(tbname, itemModel.toJson());
  }

  // Delete Item
  deleteItem(ItemModel itemModel){
    database.delete(tbname,where: "$nameCol=?",whereArgs: [itemModel.name]);
  }

  // Delete All Items
  deleteItems(ItemModel itemModel){
    database.delete(tbname);
  }

  // Update Item
  update(ItemModel itemModel) async{
    await database.update(tbname,
    {
      nameCol:itemModel.name,
      priceCol:itemModel.price,
      typeCol:itemModel.type,
      quantityCol:itemModel.quantity,
      descriptionCol:itemModel.description,
      imageCol:itemModel.image,
      slotNumCol:itemModel.slotNum
    },
    where: "$nameCol=?",
    whereArgs: [itemModel.name]
     );

  }
}