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
      home: const RegisterPageEmpleados(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class RegisterPageEmpleados extends StatefulWidget {
  const RegisterPageEmpleados({Key? key}) : super(key: key);

  @override
  State<RegisterPageEmpleados> createState() => _RegisterPageEmpleadosState();
}

class _RegisterPageEmpleadosState extends State<RegisterPageEmpleados> {
  TextEditingController idEmpleadoController = TextEditingController();
  TextEditingController nombreEmpController = TextEditingController();
  TextEditingController apellidoEmpController = TextEditingController();
  TextEditingController idSucursalController = TextEditingController();
  TextEditingController fechaNacController = TextEditingController();
  TextEditingController fechaIngrController = TextEditingController();
  TextEditingController puestoTrabajoController = TextEditingController();
  TextEditingController sueldoController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff9f1212),
        title: const Text(
          'Registro Empleado',
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
                'Tabla Empleado',
                style: Theme.of(context).textTheme.headline6,
              ),
              const SizedBox(height: 20),
              _buildTextField(
                controller: idEmpleadoController,
                labelText: 'ID Empleado',
              ),
              const SizedBox(height: 10),
              _buildTextField(
                controller: nombreEmpController,
                labelText: 'Nombre Empleado',
              ),
              const SizedBox(height: 10),
              _buildTextField(
                controller: apellidoEmpController,
                labelText: 'Apellido Empleado',
              ),
              const SizedBox(height: 10),
              _buildTextField(
                controller: idSucursalController,
                labelText: 'ID Sucursal',
              ),
              const SizedBox(height: 10),
              _buildTextField(
                controller: fechaNacController,
                labelText: 'Fecha Nacimiento',
              ),
              const SizedBox(height: 10),
              _buildTextField(
                controller: fechaIngrController,
                labelText: 'Fecha Ingreso',
              ),
              const SizedBox(height: 10),
              _buildTextField(
                controller: puestoTrabajoController,
                labelText: 'Puesto de Trabajo',
              ),
              const SizedBox(height: 10),
              _buildTextField(
                controller: sueldoController,
                labelText: 'Sueldo',
              ),
              const SizedBox(height: 20),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    print('ID Empleado: ${idEmpleadoController.text}');
                    print('Nombre Empleado: ${nombreEmpController.text}');
                    print('Apellido Empleado: ${apellidoEmpController.text}');
                    print('ID Sucursal: ${idSucursalController.text}');
                    print('Fecha Nacimiento: ${fechaNacController.text}');
                    print('Fecha Ingreso: ${fechaIngrController.text}');
                    print('Puesto de Trabajo: ${puestoTrabajoController.text}');
                    print('Sueldo: ${sueldoController.text}');
                  },
                  child: const Text(
                    'Registrar Empleado',
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
