import 'package:flutter/material.dart';
import 'catalog-model.dart';

class ItemWidget extends StatelessWidget {
  final Item item;
  const ItemWidget({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Card(
        elevation: 0,
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListTile(
            leading: Image.network(item.image,height: 90,width: 90,),
            title: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(child: Text(item.name,style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold,fontSize: 18))),
            ),
            subtitle: Center(child: Text(item.desc,style: TextStyle(color: Colors.blue,fontSize: 15))),
            trailing: Text(
              "${item.price} SDG",
              style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold,fontSize: 20),
            ),
          ),
        ),
      );
  }
}
