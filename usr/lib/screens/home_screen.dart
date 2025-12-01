import 'package:flutter/material.dart';
import 'parking_screen.dart';
import 'lounge_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Floor 2: Coffee Lounge (Top Half)
          Expanded(
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const LoungeScreen()),
                );
              },
              child: Stack(
                fit: StackFit.expand,
                children: [
                  Image.network(
                    'https://images.unsplash.com/photo-1554118811-1e0d58224f24?auto=format&fit=crop&q=80&w=1000',
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) => Container(color: Colors.brown),
                  ),
                  Container(
                    color: Colors.black.withOpacity(0.4),
                    child: const Center(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(Icons.coffee, size: 60, color: Colors.white),
                          SizedBox(height: 16),
                          Text(
                            'FLOOR 2',
                            style: TextStyle(
                              color: Colors.white70,
                              letterSpacing: 4,
                              fontSize: 14,
                            ),
                          ),
                          Text(
                            'THE LOUNGE',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 32,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Serif',
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          
          // Divider
          Container(
            height: 8,
            color: Colors.white,
            child: Row(
              children: List.generate(
                20,
                (index) => Expanded(
                  child: Container(
                    color: index % 2 == 0 ? Colors.black : Colors.white,
                  ),
                ),
              ),
            ),
          ),

          // Floor 1: Parking (Bottom Half)
          Expanded(
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ParkingScreen()),
                );
              },
              child: Stack(
                fit: StackFit.expand,
                children: [
                  Image.network(
                    'https://images.unsplash.com/photo-1492144534655-ae79c964c9d7?auto=format&fit=crop&q=80&w=1000',
                    fit: BoxFit.cover,
                    alignment: Alignment.center,
                    errorBuilder: (context, error, stackTrace) => Container(color: Colors.grey[900]),
                  ),
                  Container(
                    color: Colors.black.withOpacity(0.6),
                    child: const Center(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(Icons.directions_car, size: 60, color: Colors.white),
                          SizedBox(height: 16),
                          Text(
                            'FLOOR 1',
                            style: TextStyle(
                              color: Colors.white70,
                              letterSpacing: 4,
                              fontSize: 14,
                            ),
                          ),
                          Text(
                            'CLASSIC GARAGE',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 32,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Serif',
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
