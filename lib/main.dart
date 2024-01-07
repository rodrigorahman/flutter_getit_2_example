import 'package:flutter/material.dart';
import 'package:flutter_getit/flutter_getit.dart';
import 'package:flutter_getit_2_example/builders/page_x.dart';
import 'package:flutter_getit_2_example/builders/page_x_controller.dart';
import 'package:flutter_getit_2_example/modules/auth/auth_module.dart';
import 'package:flutter_getit_2_example/modules/products/products_module.dart';
import 'package:flutter_getit_2_example/routes/login/login_route.dart';
import 'package:flutter_getit_2_example/routes_default/page_default.dart';
import 'package:flutter_getit_2_example/services/service_for_application.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return FlutterGetIt(
      bindingsBuilder: () {
        return [
          Bind.lazySingleton((i) => ServiceForApplication()),
        ];
      },
      debugMode: true,
      modules: [AuthModule(), ProductsModule()],
      pages: [
        const LoginRoute(),
        FlutterGetItPageBuilder(
          page: (context) => const PageX(),
          binding: () => Bind.lazySingleton((i) => PageXController()),
          path: '/pagex',
        ),
        FlutterGetItPageBuilder(
          page: (context) => const MyHomePage(title: 'home'),
          path: '/',
        ),
        FlutterGetItPageBuilder(
          page: (context) => const PageDefault(),
          path: '/widget',
        )
      ],
      builder: (context, routes, observer) {
        return MaterialApp(
          title: 'Flutter Demo',
          navigatorObservers: [observer],
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          routes: routes,
        );
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Text(context.get<ServiceForApplication>().nomeProduto()),
            TextButton(
                onPressed: () {
                  Navigator.of(context).pushNamed('/login');
                },
                child: const Text('Go Route Login')),
            TextButton(
                onPressed: () {
                  Navigator.of(context).pushNamed('/pagex');
                },
                child: const Text('Go Route PageX (Build)')),
            TextButton(
                onPressed: () {
                  Navigator.of(context).pushNamed('/widget');
                },
                child: const Text('Go Page default Widget flutter getit ')),
            TextButton(
                onPressed: () {
                  Navigator.of(context).pushNamed('/auth/login');
                },
                child: const Text('Go Page Login in module auth')),
                TextButton(
                onPressed: () {
                  Navigator.of(context).pushNamed('/auth/register');
                },
                child: const Text('Go Page Register in module auth'))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print(context.get<ServiceForApplication>().nomeProduto());
          context.get<DebugMode>().printRegister();
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
