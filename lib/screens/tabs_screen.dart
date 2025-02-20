import 'package:flutter/material.dart';

class TabsScreen extends StatelessWidget {
  const TabsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        body: SafeArea(
          child: Column(
            children: const [
              TabBar(
                labelColor: Colors.black,
                unselectedLabelColor: Colors.grey,
                tabs: [
                  Tab(text: 'Tab 1'),
                  Tab(text: 'Tab 2'),
                  Tab(text: 'Tab 3'),
                  Tab(text: 'Tab 4'),
                ],
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    Icon(Icons.directions_car_outlined, size: 100),
                    Icon(Icons.directions_transit_filled_outlined, size: 100),
                    Icon(Icons.directions_bike_sharp, size: 100),
                    Icon(Icons.directions_walk_sharp, size: 100),
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
