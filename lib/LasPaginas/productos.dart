import 'package:flutter/material.dart';

class ProductosPage extends StatelessWidget {
  const ProductosPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Productos'),
        backgroundColor: Colors.orange,
        foregroundColor: Colors.white,
      ),
      drawer: const DrawerWidget(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              'https://raw.githubusercontent.com/RolandoLimones/misimagenesPetco/refs/heads/main/humedo.jpeg',
              width: 200,
              height: 200,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 20),
            const Text(
              'Página de Productos',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          // Encabezado del Drawer con padding ajustado
          DrawerHeader(
            decoration: const BoxDecoration(
              color: Colors.blue,
            ),
            margin: EdgeInsets.zero,
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                CircleAvatar(
                  radius: 28,
                  backgroundImage: const NetworkImage(
                    'https://raw.githubusercontent.com/RolandoLimones/misimagenesPetco/refs/heads/main/petco.png',
                  ),
                ),
                const SizedBox(height: 1),
                const Text(
                  'Petco',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 4),
                const Text(
                  'Dirección: Oasis de noche #9814',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                  ),
                ),
                const Text(
                  'Teléfono: 6568429536',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                  ),
                ),
                const Text(
                  'Correo: petco@gmail.com',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
          
          // Opción de Inicio (para regresar al main)
          ListTile(
            leading: const Icon(Icons.home, color: Colors.blue),
            title: const Text(
              'Inicio',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            onTap: () {
              // Navega a la ruta principal y elimina todas las rutas anteriores
              Navigator.pushNamedAndRemoveUntil(context, '/', (route) => false);
            },
          ),
          
          const Divider(), // Línea divisoria para separar secciones
          
          // Opciones del Drawer
          ListTile(
            leading: const Icon(Icons.pets, color: Colors.blue),
            title: const Text('Mascotas'),
            onTap: () {
              Navigator.pushNamed(context, '/mascotas');
            },
          ),
          ListTile(
            leading: const Icon(Icons.medical_services, color: Colors.green),
            title: const Text('Medicamentos'),
            onTap: () {
              Navigator.pushNamed(context, '/medicamentos');
            },
          ),
          ListTile(
            leading: const Icon(Icons.shopping_bag, color: Colors.orange),
            title: const Text('Productos'),
            onTap: () {
              Navigator.pushNamed(context, '/productos');
            },
          ),
          ListTile(
            leading: const Icon(Icons.people, color: Colors.purple),
            title: const Text('Empleados'),
            onTap: () {
              Navigator.pushNamed(context, '/empleados');
            },
          ),
          ListTile(
            leading: const Icon(Icons.people_alt, color: Colors.teal),
            title: const Text('Clientes'),
            onTap: () {
              Navigator.pushNamed(context, '/clientes');
            },
          ),
        ],
      ),
    );
  }
}