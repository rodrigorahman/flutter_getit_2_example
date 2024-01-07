
import 'package:flutter/material.dart';
import 'package:flutter_getit/flutter_getit.dart';
import 'package:flutter_getit_2_example/modules/products/products_page.dart';

class ProductsRoute extends FlutterGetItModulePageRouter{
  const ProductsRoute({super.key});

  @override
  WidgetBuilder get view => (context) => const ProductsPage();
  
  
}