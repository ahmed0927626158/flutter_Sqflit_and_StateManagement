import 'dart:io';

class ItemModel{
 late String name;
 late double price;
 String type;
 int quantity;
 String description;
File? image;
 int slotNum;


ItemModel({
  required this.name,
  required this.price,
  required this.type,
  required this.quantity,
  required this.description,
   this.image,
  required this.slotNum,

});
Map<String,dynamic>toJson(){
  return{
    "name":name,
    "price":price,
    "type":type,
    "quantity":quantity,
    "description":description,
    "image":image!.path,
    "slotNum":slotNum,

  };
}

factory ItemModel.fromJson(Map<String,dynamic> json){
  return ItemModel(
     name: json["name"], 
     price: json["price"], 
     type: json["type"],
     quantity: json["quantity"],
     description: json["description"], 
     image: File(json["image"]), 
    slotNum: json["slotNum"],
     );
}
}