import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'parking_screen.dart';
import 'lounge_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  double _rotationAngle = 0.0;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 500),
      vsync: this,
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _onVerticalDragUpdate(DragUpdateDetails details) {
    setState(() {
      _rotationAngle += details.primaryDelta! / 100;
      _rotationAngle = _rotationAngle.clamp(-0.5, 0.5); // Clamp the rotation
    });
  }

  void _onVerticalDragEnd(DragEndDetails details) {
    // Animate back to the center
    final animation = Tween<double>(begin: _rotationAngle, end: 0.0).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeOut),
    );
    animation.addListener(() {
      setState(() {
        _rotationAngle = animation.value;
      });
    });
    _controller.forward(from: 0.0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: GestureDetector(
          onVerticalDragUpdate: _onVerticalDragUpdate,
          onVerticalDragEnd: _onVerticalDragEnd,
          child: Column(
            children: [
              // Floor 2: Coffee Lounge (Top Half)
              Expanded(
                child: Transform(
                  alignment: Alignment.center,
                  transform: Matrix4.identity()
                    ..setEntry(3, 2, 0.001) // Perspective
                    ..rotateX(-0.35 + _rotationAngle),
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
              ),
              
              // Divider
              Container(
                height: 10,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.grey[800]!, Colors.white, Colors.grey[800]!],
                  )
                ),
              ),

              // Floor 1: Parking (Bottom Half)
              Expanded(
                child: Transform(
                  alignment: Alignment.center,
                  transform: Matrix4.identity()
                    ..setEntry(3, 2, 0.001) // Perspective
                    ..rotateX(0.35 + _rotationAngle),
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
