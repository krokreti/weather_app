import 'package:flutter/material.dart';

class WeatherSearchBar extends StatefulWidget {
  const WeatherSearchBar({super.key});

  @override
  State<WeatherSearchBar> createState() => _WeatherSearchBarState();
}

class _WeatherSearchBarState extends State<WeatherSearchBar> {
  final _searchInput = TextEditingController();

  @override
  void dispose() {
    _searchInput.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Expanded(
        child: TextField(
          style: const TextStyle(color: Colors.white),
          controller: _searchInput,
          decoration: const InputDecoration(
            suffixIcon: IconButton(
              onPressed: null,
              icon: Icon(Icons.send_rounded, color: Colors.white),
            ),
            fillColor: Colors.white,
            border:
                OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
            ),
            labelText: 'Enter a new place name',
            labelStyle: TextStyle(color: Colors.white),
          ),
        ),
      ),
    ]);
  }
}
