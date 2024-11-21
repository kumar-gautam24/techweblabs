import 'package:flutter/material.dart';
import 'package:techweblabs/widgets/tempunavailabel.dart';

class Custbutton extends StatelessWidget {
  String text;
  Custbutton({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(Colors.black),
        elevation: WidgetStateProperty.all(0), // Set elevation to 0
        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(6), // Rectangular shape
          ),
        ),
      ),
      onPressed: () {
        showDialog(
          context: context,
          builder: (context) {
            return const TemporaryUnavailablePopup();
          },
        );
      },
      child: Text(
        text,
        style: const TextStyle(color: Colors.white),
      ),
    );
  }
}
