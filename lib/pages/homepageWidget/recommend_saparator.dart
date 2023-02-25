import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class recommendsaparator extends StatelessWidget {
  const recommendsaparator({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const Text(
        'Recommendation',
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
      ),
      trailing: TextButton(
          onPressed: () {},
          child: const Text(
            'View All',
            style: TextStyle(color: Colors.lightBlueAccent),
          )),
    );
  }
}
