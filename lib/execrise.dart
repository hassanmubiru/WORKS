import 'package:flutter/material.dart';

class TextFieldClass extends StatefulWidget {
  const TextFieldClass({Key? key}) : super(key: key);

  @override
  State<TextFieldClass> createState() => _TextFieldClassState();
}

class _TextFieldClassState extends State<TextFieldClass> {
  final textFieldHolder = TextEditingController();
  String value = '';
  String output = 'Not Checked';

  @override
  void initState() {
    super.initState();
  }

  void checkTextInputData() {
    setState(() {
      value = textFieldHolder.text;
    });

    try {
      // Try to parse the value as an integer
      int intValue = int.parse(value);

      // Check if it's even or odd
      setState(() {
        output = intValue % 2 == 0 ? 'Value is even' : 'Value is odd';
      });
    } catch (e) {
      // If parsing as an integer fails, it's a string
      setState(() {
        output = 'Value is String';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 280,
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                controller: textFieldHolder,
                autocorrect: true,
                decoration: const InputDecoration(hintText: 'Enter Some Text Here'),
              ),
            ),
            Text(
              value,
              style: const TextStyle(
                color: Color(0xff33691E),
                fontSize: 20,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                output,
                style: const TextStyle(fontSize: 20),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                checkTextInputData();
              },
              child: const Text('Check Data Type'),
            ),
          ],
        ),
      ),
    );
  }
}
