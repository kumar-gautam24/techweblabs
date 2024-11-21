import 'package:date_field/date_field.dart';
import 'package:flutter/material.dart';
import 'package:techweblabs/widgets/button.dart';
import 'package:techweblabs/widgets/dateitme.dart';

class BookForSheetContent extends StatefulWidget {
  const BookForSheetContent({super.key});

  @override
  State<BookForSheetContent> createState() => _BookForSheetContentState();
}

class _BookForSheetContentState extends State<BookForSheetContent> {
  bool bookStatus = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: 16,
        left: 16,
        right: 16,
        bottom: MediaQuery.of(context).viewInsets.bottom + 16,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Book For",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          const SizedBox(height: 16),
          Row(
            children: [
              const Icon(Icons.warning, color: Colors.orange),
              const SizedBox(width: 8),
              Expanded(
                child: Center(
                  child: bookStatus
                      ? Text(
                          "Your call will end in 2 minutes due to low\n wallet balance. Available Balance: ₹100\n\nAdd money to continue the call.",
                          style: TextStyle(color: Colors.grey.shade600),
                        )
                      : const Text('Available Balance \n 1000'),
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Center(
            child: ElevatedButton.icon(
              icon: const Icon(Icons.add),
              label: const Text("Add Money"),
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue.shade100,
                foregroundColor: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
          ),
          const SizedBox(height: 16),
          const Text(
            "Requested Info",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          DropdownButtonFormField<String>(
            decoration: const InputDecoration(
              hintText: "Select Your Interest*",
              border: OutlineInputBorder(),
            ),
            items: const [
              DropdownMenuItem(value: "Option 1", child: Text("Option 1")),
              DropdownMenuItem(value: "Option 2", child: Text("Option 2")),
              DropdownMenuItem(value: "Option 3", child: Text("Option 3")),
            ],
            onChanged: (value) {},
          ),
          const SizedBox(height: 8),
          const TextField(
            decoration: InputDecoration(
              hintText: "Write request (Optional)",
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton.icon(
                icon: const Icon(Icons.bolt),
                label: const Text("Book Now"),
                onPressed: () {
                  setState(() {
                    bookStatus = true;
                  });
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green.shade100,
                  foregroundColor: Colors.black,
                  fixedSize: const Size(120, 50),
                ),
              ),
              ElevatedButton.icon(
                icon: const Icon(Icons.access_time),
                label: const Text("Book Later"),
                onPressed: () {
                  setState(() {
                    bookStatus = false;
                  });
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue.shade100,
                  foregroundColor: Colors.black,
                  fixedSize: const Size(120, 50),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 16,
          ),
          if (!bookStatus)
            DateTimeInputField(
              labelText: "Choose Date & time ",
              onDateTimeSelected: (DateTime dateTime) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text("Selected: $dateTime"),
                  ),
                );
              },
            ),
          const SizedBox(height: 16),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Colors.blue.shade50,
              borderRadius: BorderRadius.circular(8),
            ),
            child: const Column(
              children: [
                Text(
                  "20 lb CO₂eq",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text("GHG Savings with this request"),
              ],
            ),
          ),
          const SizedBox(height: 16),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: BorderRadius.circular(8),
            ),
            child: const Text(
              "Enjoy service at just ₹100 per min.",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(height: 16),
          SizedBox(
            width: double.infinity,
            child: Custbutton(text: "Send Request"),
          ),
        ],
      ),
    );
  }
}
