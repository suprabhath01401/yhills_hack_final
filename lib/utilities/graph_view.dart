import 'package:flutter/material.dart';

class GraphView extends StatelessWidget {
  const GraphView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Vertical list view for graphs, TODO: Replace containers with graphs
    return ListView.separated(
        itemCount: 4,
        separatorBuilder: (context, i) => const SizedBox(height: 10),
        itemBuilder: (context, i) => _buildTile(i),
      );
  }
}

Widget _buildTile(int i) {
  return Padding(
    // TODO: make a islast variable in the class so we know when the list ends
    padding: i == 3 ? const EdgeInsets.only(bottom: 10) : EdgeInsets.zero,
    child: Container(
      margin: const EdgeInsets.all(5),
      height: 270,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12), color: Colors.grey[350]),
    ),
  );
}
