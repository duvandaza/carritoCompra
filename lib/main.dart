import 'package:flutter/material.dart';
import 'package:loginapp/page/actualizar_usuario_page.dart';
import 'package:loginapp/page/carrito_page.dart';
import 'package:loginapp/page/detalle_producto_page.dart';
import 'package:loginapp/page/home_page.dart';
import 'package:loginapp/page/opcion_user_page.dart';
import 'package:loginapp/page/registrar_producto_page.dart';
import 'package:loginapp/servicios/auth_service.dart';
import 'package:loginapp/servicios/carrito_service.dart';
import 'package:loginapp/servicios/productos_service.dart';
import 'package:loginapp/servicios/usuario_service.dart';
import 'package:provider/provider.dart';

import 'package:loginapp/page/login_page.dart';
import 'package:loginapp/page/registro_page.dart';

void main() async {
  runApp(AppState());
} 

class AppState extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider( create: ( _ ) => AuthService()),
        ChangeNotifierProvider( create: ( _ ) => ProductsService()),
        ChangeNotifierProvider( create: ( _ ) => UsuarioService(), lazy: false),
        ChangeNotifierProvider( create: ( _ ) => CarritoService(),),
      ],
      child: MyApp(),
    );
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login App',
      debugShowCheckedModeBanner: false,
      initialRoute: 'login',
      routes: {
        'login'  : ( _ ) => LoginPage(),
        'registrar' : ( _ ) => RegistrarPage(),
        'home' : ( _ ) => HomePage(),
        'producto' :( _ ) => RegistrarProductoPage(),
        'detalle': ( _ ) => DetalleProdcutoPage(),
        'carrito': ( _ ) => CarritoPage(),
        'opcionesUser': ( _ ) => OpcionUserPage(),
        'actualizarUser' : ( _ ) => ActualizarUsuarioPage(),
      },
    );
  }
}