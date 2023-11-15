import 'dart:io';
import 'package:dan_vending/Maintenance/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';
import "package:dan_vending/provider/itemProvider.dart";

class NewItemScreen extends StatefulWidget {
  const NewItemScreen({super.key});

  @override
  State<NewItemScreen> createState() => _NewRecipeScreenState();
}

class _NewRecipeScreenState extends State<NewItemScreen> {

  List<String> types=["select","snack","drink"];
  String? initial="select";

  Future pickImage(BuildContext context, ImageSource source) async {
    final image = await ImagePicker().pickImage(source: source);
    if (image == null) return;
    // ignore: use_build_context_synchronously
    Provider.of<ItemProvider>(context, listen: false).image = File(image.path);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Add New Item'),
        ),
        body: Consumer<ItemProvider>(
          builder: (context, provider, child) => SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.all(5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 10),
                  TextField(
                    controller: provider.name,
                    decoration: InputDecoration(
                        label: const Text('Item Name'),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextField(
                    keyboardType: TextInputType.number,
                    controller: provider.price,
                    decoration: InputDecoration(
                        label: const Text('Item Price'),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      PopupMenuButton(
                        color: !provider.isDark ? Colors.blue[100] : null,
                        itemBuilder: ((context) => [
                              PopupMenuItem(
                                onTap: (() =>
                                    pickImage(context, ImageSource.camera)),
                                child: Row(
                                  children: const [
                                    Icon(Icons.camera_alt_outlined),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text('Take a picture'),
                                  ],
                                ),
                              ),
                              PopupMenuItem(
                                onTap: (() =>
                                    pickImage(context, ImageSource.gallery)),
                                child: Row(
                                  children: const [
                                    Icon(Icons.image_outlined),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text('Select a picture'),
                                  ],
                                ),
                              ),
                            ]),
                      ),
                      const Text(
                        'ADD A PICTURE',
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                  Visibility(
                      visible: provider.image != null,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          InkWell(
                            onTap: () {
                              provider.image = null;
                              setState(() {});
                            },
                            child: const Icon(
                              Icons.cancel_outlined,
                              color: Colors.red,
                            ),
                          ),
                          provider.image != null
                              ? Image.file(
                                  provider.image!,
                                  width: 100,
                                  height: 100,
                                )
                              : Container(),
                        ],
                      )),
                  const SizedBox(
                    height: 20,
                  ),
                 
                    // Drop Down
                    SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: SizedBox(
                      height: 50,
                      child: Row(
                        children: [
                          Text("Type"),
                          SizedBox(width: 10,),
                          DropdownButton<String>(
                           value: initial,

                            items: types.map((item) => 
                                   DropdownMenuItem<String>(
                              value: item,
                              child: Text(item,style: TextStyle(fontSize: 20,color: Colors.blue),),
                              )
                            ).toList(),
                             onChanged: (itm)=>setState(() {
                               initial=itm;
                             })
                             ),
                        
                        ],
                      ),
                    ),
                  ),
                      
                  
                  
                  const SizedBox(
                    height: 20,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: SizedBox(
                      height: 100,
                      child: TextField(
                       keyboardType: TextInputType.number,
                        controller: provider.quantity,
                        decoration: InputDecoration(
                            label: const Text('Quantity'),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10))),
                      ),
                    ),
                  ),
                const SizedBox(
                    height: 20,
                  ),

                   SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: SizedBox(
                      height: 200,
                      child: TextField(
                        expands: true,
                        maxLines: null,
                        controller: provider.description,
                        decoration: InputDecoration(
                            label: const Text('Description'),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10))),
                      ),
                    ),
                  ),


                  const SizedBox(
                    height: 20,
                  ),

                  TextField(
                    keyboardType: TextInputType.number,
                    controller: provider.slotNum,
                    decoration: InputDecoration(
                        label: const Text('Slot Number'),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                  ),

                   const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      provider.type.text=initial!;
                      provider.insertItem();
                      provider.name.clear();
                      provider.price.clear();
                      provider.description.clear();
                      provider.type.clear();
                      provider.quantity.clear();
                      provider.slotNum.clear();
                      provider.image = null;
                      Navigator.push(context,

                       MaterialPageRoute(builder: (context)=>
                       ChangeNotifierProvider(
                        create: (_)=>ItemProvider(),
                        child: MainScreen(),
                       )
                       ));
                    },
                    child: const Center(child: Text('Save Item')),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
