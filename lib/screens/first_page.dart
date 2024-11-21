// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:techweblabs/screens/send_request.dart';
import 'package:techweblabs/widgets/card.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 1,
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  image: const DecorationImage(
                    image: AssetImage(
                      "assets/backhground.png",
                    ),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(0),
                ),
                padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
                child: Column(
                  children: const [
                    Spacer(),
                    ParkCard(),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                padding: EdgeInsets.all(12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Timing',
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text("\u2022 Monday	- Friday        :   10am–9pm"),
                    Text("\u2022 Monday	- Friday        :   10am–9pm"),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Offer',
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text("\u2022 Coupn "),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Evets',
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text('Saturday, 10 MAY 2024 - Sunday 26 May 2024'),
                    Text('Discover Sailing | 8yrs + | 1hr 30min'),
                    SizedBox(
                      height: 8,
                    ),
                    Text('Why should you attend: '),
                    Text("\u2022 Exotic water sports"),
                    Text("\u2022 Fitness"),
                    Text("\u2022 Adventure"),
                  ],
                ),
              ),
            ),
            Expanded(
                child: Column(
              children: [
                Spacer(),
                Center(
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.6,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: WidgetStateProperty.all(Colors.black),
                        elevation:
                            WidgetStateProperty.all(0), // Set elevation to 0
                        shape: WidgetStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(6), // Rectangular shape
                          ),
                        ),
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
                      child: Text(
                        'Request Wyper',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            )),
          ],
        ));
  }
}
