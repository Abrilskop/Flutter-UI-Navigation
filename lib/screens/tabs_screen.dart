import 'package:flutter/material.dart';

class TabsScreen extends StatelessWidget {
  const TabsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 10,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Jueguitos Poki'), // Título en la parte superior
          backgroundColor: const Color.fromARGB(255, 255, 50, 4), // Color de fondo del AppBar
        ),
        body: SafeArea(
          child: Column(
            children: const [
              TabBar(
                isScrollable: true,
                labelColor: Color.fromARGB(255, 211, 200, 200),
                unselectedLabelColor: Colors.grey,
                tabs: [
                  Tab(icon: Icon(Icons.videogame_asset_outlined)),
                  Tab(icon: Icon(Icons.gamepad)),
                  Tab(icon: Icon(Icons.sports_esports)),
                  Tab(icon: Icon(Icons.computer)),
                  Tab(icon: Icon(Icons.devices)),
                  Tab(icon: Icon(Icons.tv)),
                  Tab(icon: Icon(Icons.headset)),
                  Tab(icon: Icon(Icons.store)),
                  Tab(icon: Icon(Icons.arrow_forward_ios)),
                  Tab(icon: Icon(Icons.access_time)),
                ],
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    Icon(Icons.videogame_asset_outlined, size: 100),
                    Icon(Icons.gamepad, size: 100),
                    Icon(Icons.sports_esports, size: 100),
                    Icon(Icons.computer, size: 100),
                    Icon(Icons.devices, size: 100),
                    Icon(Icons.tv, size: 100),
                    Icon(Icons.headset, size: 100),
                    Icon(Icons.store, size: 100),
                    Icon(Icons.arrow_forward_ios, size: 100),
                    Icon(Icons.access_time, size: 100),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
