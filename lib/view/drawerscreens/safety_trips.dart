import 'package:flutter/material.dart';

class SafetyTipsScreen extends StatelessWidget {
  const SafetyTipsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Safety Tips'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Text(
              'Safety Tips for Delivery Riders',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16.0),
            _buildSafetyTip(
              '1. Always wear a helmet while riding.',
            ),
            _buildSafetyTip(
              '2. Follow traffic rules and regulations strictly.',
            ),
            _buildSafetyTip(
              '3. Use reflective clothing or accessories for better visibility.',
            ),
            _buildSafetyTip(
              '4. Inspect your vehicle regularly for any defects.',
            ),
            _buildSafetyTip(
              '5. Be aware of your surroundings and stay alert at all times.',
            ),
            _buildSafetyTip(
              '6. Avoid riding in adverse weather conditions if possible.',
            ),
            _buildSafetyTip(
              '7. Maintain a safe distance from other vehicles on the road.',
            ),
            _buildSafetyTip(
              '8. Securely fasten any packages or items being delivered.',
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSafetyTip(String tip) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const Icon(
            Icons.check_circle,
            color: Colors.green,
          ),
          const SizedBox(width: 8.0),
          Expanded(
            child: Text(
              tip,
              style: const TextStyle(fontSize: 16.0),
            ),
          ),
        ],
      ),
    );
  }
}