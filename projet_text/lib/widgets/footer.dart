import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green[800],
      padding: const EdgeInsets.all(40.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  '© ${DateTime.now().year} Tourisme Local Burkina Faso',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
                SizedBox(height: 30),
                Text(
                  'Contactez-nous: info@tourismbf.com | +226 72 55 63 86',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
                SizedBox(height: 10),
                Text(
                  'Partenaires: Tourism Burkina, Travel Africa, Explore Faso, BIT',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
