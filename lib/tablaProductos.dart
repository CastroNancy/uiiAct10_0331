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
      home: const RegisterPageProductos(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class RegisterPageProductos extends StatefulWidget {
  const RegisterPageProductos({Key? key}) : super(key: key);

  @override
  State<RegisterPageProductos> createState() => _RegisterPageProductosState();
}

class _RegisterPageProductosState extends State<RegisterPageProductos> {
  TextEditingController idProductoController = TextEditingController();
  TextEditingController caducidadController = TextEditingController();
  TextEditingController precioController = TextEditingController();
  TextEditingController tamanoController = TextEditingController();
  TextEditingController promocionController = TextEditingController();
  TextEditingController distribuidoraController = TextEditingController();
  TextEditingController idVentaController = TextEditingController();
  TextEditingController idSucursalController = TextEditingController();

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
                'Tabla Producto',
                style: Theme.of(context).textTheme.headline6,
              ),
              const SizedBox(height: 20),
              _buildTextField(
                controller: idProductoController,
                labelText: 'ID Producto',
              ),
              const SizedBox(height: 10),
              _buildTextField(
                controller: caducidadController,
                labelText: 'Caducidad',
              ),
              const SizedBox(height: 10),
              _buildTextField(
                controller: precioController,
                labelText: 'Precio',
              ),
              const SizedBox(height: 10),
              _buildTextField(
                controller: tamanoController,
                labelText: 'Tamaño',
              ),
              const SizedBox(height: 10),
              _buildTextField(
                controller: promocionController,
                labelText: 'Promoción',
              ),
              const SizedBox(height: 10),
              _buildTextField(
                controller: distribuidoraController,
                labelText: 'Distribuidora',
              ),
              const SizedBox(height: 10),
              _buildTextField(
                controller: idVentaController,
                labelText: 'ID Venta',
              ),
              const SizedBox(height: 10),
              _buildTextField(
                controller: idSucursalController,
                labelText: 'ID Sucursal',
              ),
              const SizedBox(height: 20),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    print('ID Producto: ${idProductoController.text}');
                    print('Caducidad: ${caducidadController.text}');
                    print('Precio: ${precioController.text}');
                    print('Tamaño: ${tamanoController.text}');
                    print('Promoción: ${promocionController.text}');
                    print('Distribuidora: ${distribuidoraController.text}');
                    print('ID Venta: ${idVentaController.text}');
                    print('ID Sucursal: ${idSucursalController.text}');
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
