import 'package:flutter/material.dart';

class MyDropDown extends StatefulWidget {
  const MyDropDown({super.key});

  @override
  State<MyDropDown> createState() => _MyDropDownState();
}

class _MyDropDownState extends State<MyDropDown> {
  String _selectedItem = "Seçenek 1";

  List<String> _items = [
    "O'zbekcha",
    "English",
    "Русский",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: DropdownButton<String>(
          hint: Text('Bir öğe seçin'),
          value: _selectedItem,
          onChanged: (v) {
            _selectedItem = v!;
            setState(() {});
          },
          items: _items.map((String item) {
            return DropdownMenuItem<String>(
              value: item,
              child: Text(item),
            );
          }).toList(),
        ),
      ),
    );
  }
}
