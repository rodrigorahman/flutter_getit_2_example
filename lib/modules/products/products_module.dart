
import 'package:flutter/material.dart';
import 'package:flutter_getit/flutter_getit.dart';
import 'package:flutter_getit_2_example/modules/products/products_page.dart';
import 'package:flutter_getit_2_example/modules/products/products_route.dart';

class ProductsModule extends FlutterGetItModule {
  @override
  String get moduleRouteName => '/products';

  @override
  Map<String, WidgetBuilder> get pages => {
    '/': (context) => const ProductsRoute()
  };
  
}