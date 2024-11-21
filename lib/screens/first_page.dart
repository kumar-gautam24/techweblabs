import 'package:flutter/material.dart';
import 'package:techweblabs/screens/send_request.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          'Location Details',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
        leading: const Icon(Icons.arrow_back, color: Colors.black),
        actions: [
          IconButton(
            icon: const Icon(Icons.favorite_border, color: Colors.black),
            onPressed: () {},
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.menu),
          ),
        ],
      ),
      body: Column(
        children: [
          // Top Image and Card Section
          Stack(
            children: [
              // Background Image
              Container(
                width: double.infinity,
                height: 250,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/backhground.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              // Card Overlay
              Positioned(
                bottom: 0,
                left: 20,
                right: 20,
                child: Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 6,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Durgam Cheruvu Park',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Row(
                        children: [
                          // Icon(Icons.location_searching_outlined),
                          Text(
                            'C9QP+GF3, Kavuri Hills Phase 1, Doctor\'s Colony, \nMadhapur, Hyderabad, Telangana 500033',
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.grey[700],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),

          // Details Section
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Timing Section
                  const SectionHeader(title: 'Timing'),
                  const SizedBox(height: 8),
                  const Text('• Monday - Friday: 10am–9pm'),
                  const Text('• Saturday - Sunday: 10am–11pm'),
                  const SizedBox(height: 16),

                  // Offer Section
                  const SectionHeader(title: 'Offer'),
                  const SizedBox(height: 8),
                  const Text('• Coupons'),
                  const SizedBox(height: 16),

                  // Events Section
                  const SectionHeader(title: 'Event'),
                  const SizedBox(height: 8),
                  const Text('Saturday, 10 MAY 2024 - Sunday 26 May 2024'),
                  const Text('Discover Sailing | 8yrs + | 1hr 30min'),
                  const SizedBox(height: 8),
                  const Text('Why should you attend:'),
                  const Text('• Exotic water sports'),
                  const Text('• Fitness'),
                  const Text('• Adventure'),
                  const SizedBox(height: 20),
                  const SizedBox(
                    height: 100,
                  ),
                  // Button
                  Center(
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width * 0.6,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          padding: const EdgeInsets.symmetric(vertical: 14),
                        ),
                        onPressed: () {
                          showModalBottomSheet(
                            context: context,
                            isScrollControlled: true,
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.vertical(
                                top: Radius.circular(20),
                              ),
                            ),
                            builder: (context) => const BookForSheetContent(),
                          );
                        },
                        child: const Text(
                          'Request Wyber',
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
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

class SectionHeader extends StatelessWidget {
  final String title;

  const SectionHeader({required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
