import 'package:crime_stats_app/utilities/classes.dart';
import 'package:flutter/material.dart';

class CityList extends StatelessWidget {
  String? cityName;
  CityList({this.cityName, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                IconButton(
                    onPressed: () => Navigator.pop(context, cityName),
                    icon: const Icon(Icons.arrow_back)),
                const Text(
                  "   Choose a City",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Expanded(
                child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 12),
              child: ListView.separated(
                itemCount: cities.length,
                itemBuilder: (context, i) => _buildTile(context, i),
                separatorBuilder: (context, i) => const SizedBox(height: 10),
              ),
            )),
          ],
        ),
      ),
    );
  }

  Widget _buildTile(BuildContext context, int i) {
    return GestureDetector(
      onTap: () {
        cityName = cities[i];
        Navigator.pop(context, cityName);
      },
      child: ListTile(
        title: Container(
          padding: const EdgeInsets.symmetric(
              horizontal: 10.0, vertical: 12), // padding inside city list tile
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50), color: Colors.grey[350]),
          child: Row(
            children: [
              const CircleAvatar(
                backgroundColor: Colors.blue,
              ),
              const SizedBox(width: 25),
              Text(cities[i])
            ],
          ),
        ),
      ),
    );
  }
}
