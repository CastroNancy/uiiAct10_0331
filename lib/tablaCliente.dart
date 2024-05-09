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
      home: const RegisterPageClientes(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class RegisterPageClientes extends StatefulWidget {
  const RegisterPageClientes({Key? key}) : super(key: key);

  @override
  State<RegisterPageClientes> createState() => _RegisterPageClientesState();
}

class _RegisterPageClientesState extends State<RegisterPageClientes> {
  TextEditingController idClienteController = TextEditingController();
  TextEditingController nombreClieController = TextEditingController();
  TextEditingController apellidoClieController = TextEditingController();
  TextEditingController numContactoController = TextEditingController();
  TextEditingController fechaNaClieController = TextEditingController();
  TextEditingController direccionClieController = TextEditingController();
  TextEditingController idSucursalController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff9f1212),
        title: const Text(
          'Registro Cliente',
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
                'Tabla Cliente',
                style: Theme.of(context).textTheme.headline6,
              ),
              const SizedBox(height: 20),
              _buildTextField(
                controller: idClienteController,
                labelText: 'ID Cliente',
              ),
              const SizedBox(height: 10),
              _buildTextField(
                controller: nombreClieController,
                labelText: 'Nombre Cliente',
              ),
              const SizedBox(height: 10),
              _buildTextField(
                controller: apellidoClieController,
                labelText: 'Apellido Cliente',
              ),
              const SizedBox(height: 10),
              _buildTextField(
                controller: numContactoController,
                labelText: 'Número de Contacto',
              ),
              const SizedBox(height: 10),
              _buildTextField(
                controller: fechaNaClieController,
                labelText: 'Fecha de Nacimiento Cliente',
              ),
              const SizedBox(height: 10),
              _buildTextField(
                controller: direccionClieController,
                labelText: 'Dirección Cliente',
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
                    print('ID Cliente: ${idClienteController.text}');
                    print('Nombre Cliente: ${nombreClieController.text}');
                    print('Apellido Cliente: ${apellidoClieController.text}');
                    print('Número de Contacto: ${numContactoController.text}');
                    print(
                        'Fecha de Nacimiento Cliente: ${fechaNaClieController.text}');
                    print('Dirección Cliente: ${direccionClieController.text}');
                    print('ID Sucursal: ${idSucursalController.text}');
                  },
                  child: const Text(
                    'Registrar Cliente',
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
