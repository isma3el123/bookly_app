import 'package:flutter/material.dart';

class CustomSearchTextFaild extends StatelessWidget {
  const CustomSearchTextFaild({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextField(
          decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.white),
                borderRadius: BorderRadius.circular(12),
              ),
              label: const Text(
                "Search",
                style: TextStyle(color: Colors.white),
              ),
              suffixIcon: IconButton(
                onPressed: () {},
                icon: const Icon(
                  color: Colors.white,
                  Icons.search,
                  size: 22,
                ),
              )),
        ),
      ),
    );
  }
}
