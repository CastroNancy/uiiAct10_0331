import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Registro de Oxxo',
      theme: ThemeData(
        primarySwatch: Colors.red, // Color primario rojo
        scaffoldBackgroundColor: Colors.grey[200], // Fondo gris claro
        textTheme: const TextTheme(
          headline6: TextStyle(
            color: Color(0xffd81600), // Color del texto principal rojo
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
          bodyText2: TextStyle(
            color: Color(0xdd000000), // Color del texto secundario
            fontSize: 16,
          ),
        ),
      ),
      home: const RegisterPageVenta(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class RegisterPageVenta extends StatefulWidget {
  const RegisterPageVenta({Key? key}) : super(key: key);

  @override
  State<RegisterPageVenta> createState() => _RegisterPageVentaState();
}

class _RegisterPageVentaState extends State<RegisterPageVenta> {
  TextEditingController idVentaController = TextEditingController();
  TextEditingController idProductoController = TextEditingController();
  TextEditingController metodoPagoController = TextEditingController();
  TextEditingController cantProductosController = TextEditingController();
  TextEditingController idSucursalController = TextEditingController();
  TextEditingController idClienteController = TextEditingController();
  TextEditingController fechaVentaController = TextEditingController();
  TextEditingController puntosCompraController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff9f1212),
        title: const Text(
          'Registro Producto',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Container(
        // Contenedor con fondo de color
        color: Color(0xffcecece), // Color de fondo gris claro
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Tabla Venta',
                style: Theme.of(context).textTheme.headline6,
              ),
              const SizedBox(height: 20),
              _buildTextField(
                controller: idVentaController,
                labelText: 'ID Venta',
              ),
              const SizedBox(height: 10),
              _buildTextField(
                controller: idProductoController,
                labelText: 'ID Producto',
              ),
              const SizedBox(height: 10),
              _buildTextField(
                controller: metodoPagoController,
                labelText: 'Método de Pago',
              ),
              const SizedBox(height: 10),
              _buildTextField(
                controller: cantProductosController,
                labelText: 'Cantidad de Productos',
              ),
              const SizedBox(height: 10),
              _buildTextField(
                controller: idSucursalController,
                labelText: 'ID Sucursal',
              ),
              const SizedBox(height: 10),
              _buildTextField(
                controller: idClienteController,
                labelText: 'ID Cliente',
              ),
              const SizedBox(height: 10),
              _buildTextField(
                controller: fechaVentaController,
                labelText: 'Fecha de Venta',
              ),
              const SizedBox(height: 10),
              _buildTextField(
                controller: puntosCompraController,
                labelText: 'Puntos de Compra',
              ),
              const SizedBox(height: 20),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    print('ID Venta: ${idVentaController.text}');
                    print('ID Producto: ${idProductoController.text}');
                    print('Método de Pago: ${metodoPagoController.text}');
                    print(
                        'Cantidad de Productos: ${cantProductosController.text}');
                    print('ID Sucursal: ${idSucursalController.text}');
                    print('ID Cliente: ${idClienteController.text}');
                    print('Fecha de Venta: ${fechaVentaController.text}');
                    print('Puntos de Compra: ${puntosCompraController.text}');
                  },
                  child: const Text(
                    'Registrar Producto',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xff9f1212), // Color del botón rojo
                    padding: const EdgeInsets.symmetric(
                        horizontal: 40, vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTextField({
    required TextEditingController controller,
    required String labelText,
  }) {
    return TextField(
      controller: controller,
      style: const TextStyle(fontSize: 16),
      decoration: InputDecoration(
        labelText: labelText,
        labelStyle: const TextStyle(color: Colors.black87),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        filled: true, // Agregar fondo lleno
        fillColor: Colors.white, // Color de fondo blanco
      ),
    );
  }
}
