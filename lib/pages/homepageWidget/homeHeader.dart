import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class homeHeader extends StatelessWidget {
  const homeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SizedBox(
        width: 200,
        height: 60,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            SizedBox(
              height: 3,
            ),
            Text(
              'Good Morning',
              style: TextStyle(fontSize: 25, color: Colors.white),
            ),
            Text(
              'Raziq Jasmi',
              style: TextStyle(fontSize: 15, color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}
