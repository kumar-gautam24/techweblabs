import 'package:flutter/material.dart';

class ParkCard extends StatelessWidget {
  const ParkCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        padding: const EdgeInsets.all(12),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Durgam Cheruvu Park",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Icon(Icons.location_on_rounded),
                Column(
                  children: [
                    Text(' C9PQ+GF3, Kavuri Hills Phase 1, Doctor\'s Colony,'),
                    Text('Madhapur, Hyderabad, Telangana 500033'),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
