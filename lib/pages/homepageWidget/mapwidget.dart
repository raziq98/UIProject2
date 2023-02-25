import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_ui/model/dataclass.dart';

class mapwidget extends StatelessWidget {
  const mapwidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListTile(
        leading: const BlurryContainer(
          blur: 10,
          width: 80,
          height: double.maxFinite,
          child: Image(
            image: AssetImage('assets/map.png'),
            fit: BoxFit.cover,
          ),
        ),
        title: SizedBox(
          width: 100,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'Your Location',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.normal,
                    fontSize: 30),
              ),
              Text(
                'Sabah , Malaysia',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.normal,
                  fontSize: 15,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
