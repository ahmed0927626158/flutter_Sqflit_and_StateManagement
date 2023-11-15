import 'package:flutter/material.dart';
import 'package:dan_vending/models/ItemModel.dart';
import 'package:dan_vending/Maintenance/widgets/itemListWidget.dart';

// ignore: must_be_immutable
class SearchScreen extends StatefulWidget{
  
  final List<ItemModel> itemList;
  List<ItemModel> filteredItem=[];

  SearchScreen({super.key,required this.itemList}){
    filteredItem=itemList;
  }
  @override
  State<StatefulWidget>createState(){
    return SearchState();
  }
}

class SearchState extends State<SearchScreen>{
  void filterItem(String value){
    setState(() {
        widget.filteredItem=widget.itemList.
    where(
      (item) => item.name.toLowerCase().contains(value.toLowerCase())
    ).toList();
      
    });
  
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
       appBar: AppBar(
        title: TextField( 
          onChanged: (value) {
            filterItem(value);
          },
          decoration: const InputDecoration(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              hintText: "Search item",
              hintStyle: TextStyle(color: Colors.white)),
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.cancel),
            onPressed: () {
              setState(() {
                Navigator.pop(context);
              });
            },
          )
        ],
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: widget.filteredItem.isNotEmpty
            ? ListView.builder(
                itemCount: widget.filteredItem.length,
                itemBuilder: (BuildContext context, int index) {
                  return ItemWidget(widget.filteredItem[index]);
                })
            : const Center(
                child: Text('Item not found...'),
              ),
      ),
    );
  }

}