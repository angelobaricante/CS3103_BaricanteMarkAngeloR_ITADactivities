import 'package:flutter/material.dart';

class ImmutableWidget extends StatelessWidget {
  const ImmutableWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: RadialGradient(
          radius: 1,
          colors: [
            Colors.green,
            Colors.black,
          ],
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(70),
        child: Transform.rotate(
          angle: 45 * 3.1415927 / 180, // Rotate by 45 degrees
          child: Container(
            decoration: BoxDecoration(
              color: Colors
                  .purple, // Correct placement of color inside BoxDecoration
              borderRadius: BorderRadius.circular(20), // Rounded corners
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.5), // Shadow color
                  offset: const Offset(
                      20, 20), // Position the shadow to the bottom right
                  blurRadius: 20, // Blur effect for shadow
                  spreadRadius: 1, // Optional spread for shadow size
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.all(50.0),
              child: _buildShinyCircle(),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildShinyCircle() {
    return Container(
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        gradient: RadialGradient(
          colors: [
            Colors.lightBlueAccent,
            Colors.blueAccent,
          ],
          center: Alignment(-0.3, -0.5),
        ),
        boxShadow: [
          BoxShadow(blurRadius: 20),
        ],
      ),
    );
  }
}
