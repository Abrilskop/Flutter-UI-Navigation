import 'package:flutter/material.dart'; 

// La clase Login es el punto de entrada para la aplicación.
class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    // MaterialApp es el widget principal que envuelve toda la aplicación
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Elimina la bandera de depuración
      title: 'Inicio de sesión', // Título de la aplicación
      theme: ThemeData(
        primarySwatch: Colors.blue, // Define el color principal de la aplicación
      ),
      home: const LoginPage(), // Página de inicio de sesión como home
    );
  }
}

// LoginPage es el widget donde se encuentra el formulario de inicio de sesión
class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  _LoginPageState createState() => _LoginPageState();
}

// _LoginPageState es el estado asociado a LoginPage, maneja la lógica del formulario
class _LoginPageState extends State<LoginPage> {
  // Controladores para los campos de texto (nombre de usuario y contraseña)
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  // Clave global para el formulario, permite validar el formulario
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // Scaffold proporciona la estructura básica de la página (app bar, body, etc.)
    return Scaffold(
      appBar: AppBar(
        title: const Text("Inicio de sesión"), // Título de la app bar
        centerTitle: true, // Centra el título en la app bar
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0), // Relleno de 20 píxeles alrededor de todo el formulario
        child: Form(
          key: _formKey, // Asignación de la clave al formulario para validarlo
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch, // Los elementos se estiran a lo largo del eje horizontal
            children: [
              const SizedBox(height: 40), // Espaciado superior para separarlo de la parte superior

              // Título principal de la página
              const Text(
                'Bienvenido a Notitas UWU', 
                textAlign: TextAlign.center, // Alinea el texto al centro
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold), // Estilo del texto
              ),
              const SizedBox(height: 20), // Espaciado entre el título y el primer campo de texto

              // Campo de texto para ingresar el nombre de usuario
              TextFormField(
                controller: _usernameController, // Asociado al controlador de nombre de usuario
                decoration: const InputDecoration(
                  labelText: 'Nombre de usuario', // Texto que aparece dentro del campo
                  border: OutlineInputBorder(), // Borde de entrada
                  prefixIcon: Icon(Icons.person), // Ícono de persona dentro del campo
                ),
                validator: (value) {
                  // Valida si el campo está vacío
                  if (value == null || value.isEmpty) {
                    return 'Por favor ingresa un nombre de usuario'; // Mensaje de error si está vacío
                  }
                  return null; // Si está bien, no retorna nada
                },
              ),
              const SizedBox(height: 15), // Espaciado entre el campo de usuario y el campo de contraseña

              // Campo de texto para ingresar la contraseña
              TextFormField(
                controller: _passwordController, // Asociado al controlador de la contraseña
                obscureText: true, // Oculta el texto ingresado para la contraseña
                decoration: const InputDecoration(
                  labelText: 'Contraseña', // Texto que aparece dentro del campo
                  border: OutlineInputBorder(), // Borde de entrada
                  prefixIcon: Icon(Icons.lock), // Ícono de candado dentro del campo
                ),
                validator: (value) {
                  // Valida si el campo está vacío
                  if (value == null || value.isEmpty) {
                    return 'Por favor ingresa tu contraseña'; // Mensaje de error si está vacío
                  }
                  return null; // Si está bien, no retorna nada
                },
              ),
              const SizedBox(height: 30), // Espaciado entre el campo de contraseña y el botón

              // Botón de inicio de sesión
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 15), // Padding dentro del botón
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10), // Bordes redondeados en el botón
                  ),
                ),
                onPressed: () {
                  // Si el formulario es válido, realiza la acción de login
                  if (_formKey.currentState!.validate()) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Iniciando sesión...')), // Muestra un mensaje emergente
                    );
                  }
                },
                child: const Text(
                  'Iniciar sesión', // Texto dentro del botón
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold), // Estilo del texto en el botón
                ),
              ),
              const SizedBox(height: 20), // Espaciado después del botón de inicio de sesión

              // Enlace para registrarse en caso de que no tenga cuenta
              TextButton(
                onPressed: () {
                  // Aquí puedes agregar la acción para navegar a una pantalla de registro
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Navegar a registro...')), // Muestra un mensaje emergente
                  );
                },
                child: const Text(
                  '¿No tienes cuenta? Regístrate', // Texto del enlace
                  style: TextStyle(fontSize: 16, color: Colors.blue), // Estilo del texto (color azul)
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
