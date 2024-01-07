import 'package:flutter/material.dart';
import 'package:flutter_getit/flutter_getit.dart';

class ProductsPage extends StatelessWidget {

  const ProductsPage({ super.key });

   @override
   Widget build(BuildContext context) {
       return Scaffold(
           appBar: AppBar(title: const Text('Products'),),
           body: Column(
             children: [
               Container(),
                  TextButton(onPressed: (){
                context.get<DebugMode>().printRegister();
               }, child: const Text('DEBUG')),
             ],
           ),
       );
  }
}