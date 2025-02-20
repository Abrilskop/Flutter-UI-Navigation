import 'package:flutter/material.dart';

class TabsScreen extends StatelessWidget {
  const TabsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4, // Número de pestañas
      child: Scaffold(
        appBar: AppBar(
          title: const Text('TAXI CONO!'),
          bottom: const TabBar(
            labelColor: Color.fromARGB(255, 194, 66, 66),
            unselectedLabelColor: Colors.grey,
            tabs: [
              Tab(icon: Icon(Icons.directions_car_outlined)), // Ícono para la primera pestaña
              Tab(icon: Icon(Icons.directions_transit_filled_outlined)), // Ícono para la segunda pestaña
              Tab(icon: Icon(Icons.directions_bike_sharp)), // Ícono para la tercera pestaña
              Tab(icon: Icon(Icons.directions_walk_sharp)), // Ícono para la cuarta pestaña
            ],
          ),
        ),
        body: const SafeArea(
          child: TabBarView(
            children: [
              Icon(Icons.directions_car_outlined, size: 100),
              Icon(Icons.directions_transit_filled_outlined, size: 100),
              Icon(Icons.directions_bike_sharp, size: 100),
              Icon(Icons.directions_walk_sharp, size: 100),
            ],
          ),
        ),
      ),
    );
  }
}
