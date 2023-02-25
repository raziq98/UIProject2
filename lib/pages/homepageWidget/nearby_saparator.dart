import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class nearbysaparator extends StatelessWidget {
  const nearbysaparator({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const Text(
        'Nearby From You',
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
      ),
      trailing: TextButton(
        onPressed: () {},
        child: const Text(
          'View All',
          style: TextStyle(color: Color(0xFF103CE7)),
        ),
      ),
    );
  }
}
