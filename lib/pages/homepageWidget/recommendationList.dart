import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

import '../../model/dataclass.dart';
import '../detailPage.dart';

class recommendationList extends StatelessWidget {
  const recommendationList({super.key});

  @override
  Widget build(BuildContext context) {
    List<dataClass> data = [
      dataClass('assets/KK.jfif', 4.4, 'Kota Kinabalu', 'Sabah', 22),
      dataClass('assets/Danum Valley Conservation park.jfif', 4.4,
          'Danum Valley \nConservation ', 'Sabah', 23),
      dataClass('assets/Gaya Island.jfif', 4.8, 'Gaya Island', 'Sabah', 25),
      dataClass('assets/Kinabalu Park.jfif', 4.9, 'Kinabalu Park', 'Sabah', 67),
      dataClass('assets/Kudat.jfif', 2.8, 'Kudat', 'Sabah', 20),
      dataClass('assets/Kundasang.jfif', 5, 'Kundasang', 'Sabah', 45),
      dataClass('assets/Maliau Basin.jfif', 4.0, 'Maliau Basin', 'Sabah', 45),
      dataClass('assets/SDK.jfif', 3.5, 'SDK', 'Sabah', 34),
      dataClass('assets/Semporna.jfif', 5.0, 'Semporna', 'Sabah', 56),
      dataClass('assets/Tawau.jfif', 3.5, 'Tawau', 'Sabah', 58),
    ];

    return Expanded(
      child: ListView.builder(
        itemCount: data.length,
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          return Container(
            height: 180,
            width: 180,
            decoration: BoxDecoration(
              color: Colors.lightBlue[400]?.withOpacity(0.5),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: ((context) {
                      return DetailPage(
                        index: index,
                      );
                    })));
                  },
                  child: Hero(
                    tag: data[index].pictPath,
                    child: Container(
                      height: 100,
                      width: 160,
                      decoration: buildImageDecoration(data[index].pictPath),
                    ),
                  ),
                ),
                ListTile(
                  title: SizedBox(
                    width: 130,
                    child: Text(
                      data[index].region,
                      style: const TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  subtitle: SizedBox(
                    width: 130,
                    child: Row(
                      children: [
                        Icon(Ionicons.location,
                            size: 10, color: Theme.of(context).primaryColor),
                        Text(data[index].placeName)
                      ],
                    ),
                  ),
                  trailing: SizedBox(
                    width: 30,
                    child: Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.amber[600],
                          size: 12,
                        ),
                        Text(
                          data[index].rate.toString(),
                          style: const TextStyle(fontSize: 12),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  buildImageDecoration(String pictPath) {
    return BoxDecoration(
      image: DecorationImage(
        image: AssetImage(pictPath),
        fit: BoxFit.cover, // or BoxFit.fill, BoxFit.fitWidth, etc.
      ),
      borderRadius: BorderRadius.circular(15),
    );
  }
}
