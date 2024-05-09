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
      home: const RegisterPageSucursales(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class RegisterPageSucursales extends StatefulWidget {
  const RegisterPageSucursales({Key? key}) : super(key: key);

  @override
  State<RegisterPageSucursales> createState() => _RegisterPageSucursalesState();
}

class _RegisterPageSucursalesState extends State<RegisterPageSucursales> {
  TextEditingController idSucursalController = TextEditingController();
  TextEditingController direccionSucController = TextEditingController();
  TextEditingController horarioApController = TextEditingController();
  TextEditingController distribuidoraController = TextEditingController();
  TextEditingController idEmpleadoController = TextEditingController();
  TextEditingController nomSucursalController = TextEditingController();
  TextEditingController cdSucursalController = TextEditingController();
  TextEditingController diasApController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff9f1212),
        title: const Text(
          'Registro Sucursal',
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
                'Tabla Sucursal',
                style: Theme.of(context).textTheme.headline6,
              ),
              const SizedBox(height: 20),
              _buildTextField(
                controller: idSucursalController,
                labelText: 'ID Sucursal',
              ),
              const SizedBox(height: 10),
              _buildTextField(
                controller: direccionSucController,
                labelText: 'Dirección Sucursal',
              ),
              const SizedBox(height: 10),
              _buildTextField(
                controller: horarioApController,
                labelText: 'Horario Apertura',
              ),
              const SizedBox(height: 10),
              _buildTextField(
                controller: distribuidoraController,
                labelText: 'Distribuidora',
              ),
              const SizedBox(height: 10),
              _buildTextField(
                controller: idEmpleadoController,
                labelText: 'ID Empleado',
              ),
              const SizedBox(height: 10),
              _buildTextField(
                controller: nomSucursalController,
                labelText: 'Nombre Sucursal',
              ),
              const SizedBox(height: 10),
              _buildTextField(
                controller: cdSucursalController,
                labelText: 'Ciudad Sucursal',
              ),
              const SizedBox(height: 10),
              _buildTextField(
                controller: diasApController,
                labelText: 'Días Apertura',
              ),
              const SizedBox(height: 20),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    print('ID Sucursal: ${idSucursalController.text}');
                    print('Dirección Sucursal: ${direccionSucController.text}');
                    print('Horario Apertura: ${horarioApController.text}');
                    print('Distribuidora: ${distribuidoraController.text}');
                    print('ID Empleado: ${idEmpleadoController.text}');
                    print('Nombre Sucursal: ${nomSucursalController.text}');
                    print('Ciudad Sucursal: ${cdSucursalController.text}');
                    print('Días Apertura: ${diasApController.text}');
                  },
                  child: const Text(
                    'Registrar Sucursal',
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
