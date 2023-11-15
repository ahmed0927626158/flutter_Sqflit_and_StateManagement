import 'package:dan_vending/Maintenance/screens/newItem.dart';
import 'package:dan_vending/Maintenance/widgets/itemListWidget.dart';
import 'package:dan_vending/provider/itemProvider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:provider/provider.dart';
import 'package:dan_vending/Maintenance/screens/searchScreen.dart';


class MainScreen extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Consumer<ItemProvider>(
        builder: (BuildContext context, myProvider, Widget? child) => Scaffold(
              appBar: AppBar(
                title: const Text('All Items'),
                actions: [
                  InkWell(
                    onTap: (){
                      Navigator.push(context, 
                      MaterialPageRoute(
                        builder: (context)=>SearchScreen(itemList: myProvider.allItems))
                        );
                    },
                    child: Icon(Icons.search,size: 30,),
                  )
                ],
                
              ),
              floatingActionButton: FloatingActionButton(
                onPressed: (() async {
                  await Navigator.push(context, MaterialPageRoute(builder: (context)=>
                  ChangeNotifierProvider(
                    create: (_)=> ItemProvider(),
                    child: NewItemScreen(),
                    )
                  ),
                  );
                }),
                child: const Icon(Icons.add),
              ),
          //  Drawer
              body: MasonryGridView.builder(
                  itemCount: myProvider.allItems.length,
                  gridDelegate: SliverSimpleGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                  itemBuilder: (context, index) {
                   
                     return ItemWidget(myProvider.allItems[index]);
                  }),
            ));
  }
}
