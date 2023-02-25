import 'package:flutter/material.dart';

class homeTerrainList extends StatelessWidget {
  const homeTerrainList({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> terrain = ['Mountain', 'Forest', 'Beach', 'City', 'Suburban'];
    return ListView.separated(
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return Expanded(
          child: Row(children: [
            Chip(
              backgroundColor: Colors.transparent,
              shape: RoundedRectangleBorder(
                side: BorderSide.none,
                borderRadius: BorderRadius.circular(20.0),
              ),
              label: Text(terrain[index]),
            ),
            const SizedBox(
              width: 10,
            ),
          ]),
        );
      },
      separatorBuilder: (BuildContext context, int index) {
        return const Spacer();
      },
      itemCount: terrain.length,
    );
  }
}
