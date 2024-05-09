import 'package:castro0331/tablaCliente.dart';
import 'package:castro0331/tablaEmpleados.dart';
import 'package:castro0331/tablaSucursales.dart';
import 'package:flutter/material.dart';
import 'package:castro0331/tablaProductos.dart';
import 'package:castro0331/tablaVenta.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Registro Oxxo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
        fontFamily: 'Roboto',
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            primary: Color(0xff9f1212),
            onPrimary: Colors.white,
            textStyle: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.w400,
            ),
            padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 30.0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            elevation: 5.0,
          ),
        ),
      ),
      home: MyHomePage(),
      routes: {
        '/tablaProductos': (context) => RegisterPageProductos(),
        '/tablaVenta': (context) => RegisterPageVenta(),
        '/tablaEmpleados': (context) => RegisterPageEmpleados(),
        '/tablaClientes': (context) => RegisterPageClientes(),
        '/tablaSucursales': (context) => RegisterPageSucursales(),
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff9f1212),
        title: const Text(
          'Registro Oxxo',
          style: TextStyle(
            color: Colors.white,
            fontStyle: FontStyle.italic,
            fontSize: 24.0,
          ),
        ),
        centerTitle: true,
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Color(0xffcecece),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment
              .stretch, // Ajustar los botones al ancho completo
          children: <Widget>[
            Text(
              'Presione el botón correspondiente al registro que desea llenar.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w600,
                color: Colors.black87,
              ),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/tablaProductos');
              },
              style: ElevatedButton.styleFrom(
                  minimumSize:
                      Size(double.infinity, 50)), // Tamaño mínimo del botón
              child: Text('Ir a tabla de productos'),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/tablaVenta');
              },
              style: ElevatedButton.styleFrom(
                  minimumSize: Size(double.infinity, 50)),
              child: Text('Ir a tabla de venta'),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/tablaEmpleados');
              },
              style: ElevatedButton.styleFrom(
                  minimumSize: Size(double.infinity, 50)),
              child: Text('Ir a tabla Empleados'),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/tablaClientes');
              },
              style: ElevatedButton.styleFrom(
                  minimumSize: Size(double.infinity, 50)),
              child: Text('Ir a tabla clientes'),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/tablaSucursales');
              },
              style: ElevatedButton.styleFrom(
                  minimumSize: Size(double.infinity, 50)),
              child: Text('Ir a tabla sucursales'),
            ),
          ],
        ),
      ),
    );
  }
}
