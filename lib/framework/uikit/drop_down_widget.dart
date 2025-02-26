import 'package:flutter/material.dart';

class CustomDropdown extends StatefulWidget {
  const CustomDropdown({super.key});

  @override
  _CustomDropdownState createState() => _CustomDropdownState();
}

class _CustomDropdownState extends State<CustomDropdown> {
  String selectedValue = "Pune";

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      decoration: const BoxDecoration(
        color: Colors.black,
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          value: selectedValue,
          dropdownColor: Colors.black,
          icon: const Icon(Icons.arrow_drop_down, color: Colors.white, size: 24,),
          items: ["Pune", "Mumbai", "Delhi", "Bangalore"]
              .map((city) => DropdownMenuItem(
                    value: city,
                    child: Text(
                      city,
                      style: const TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ))
              .toList(),
          onChanged: (newValue) {
            setState(() {
              selectedValue = newValue!;
            });
          },
        ),
      ),
    );
  }
}
