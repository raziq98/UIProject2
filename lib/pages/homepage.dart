// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:ionicons/ionicons.dart';
import 'package:travel_ui/widgets/Frostedglass.dart';
import '../model/dataclass.dart';
import 'homepageWidget/homeHeader.dart';
import 'homepageWidget/homeTerrainList.dart';
import 'homepageWidget/mapwidget.dart';
import 'homepageWidget/nearby_saparator.dart';
import 'homepageWidget/recommend_saparator.dart';
import 'homepageWidget/recommendationList.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.maxFinite,
          height: double.maxFinite,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xFF103CE7),
                Color(0xFF64E9FF),
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: ListView(
            children: [
              const SizedBox(
                height: 20,
              ),
              const SizedBox(
                height: 50,
                child: Center(
                  child: homeHeader(),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Center(
                child: FrostedGlassBox(
                  radius: 10,
                  theWidth: 330,
                  theHeight: 80,
                  paddings: EdgeInsets.all(5),
                  theChild: mapwidget(),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                padding: const EdgeInsets.only(left: 30),
                width: double.maxFinite,
                height: 30,
                child: const homeTerrainList(),
              ),
              const SizedBox(
                height: 10,
              ),
              const SizedBox(
                height: 30,
                child: recommendsaparator(),
              ),
              const SizedBox(
                height: 10,
              ),
              const BlurryContainer(
                height: 200,
                padding: EdgeInsets.all(10),
                child: recommendationList(),
              ),
              const SizedBox(
                height: 30,
                child: nearbysaparator(),
              ),
              const SizedBox(
                height: 20,
              ),
              Expanded(
                  child: Column(
                children: [
                  FrostedGlassBox(
                    theHeight: 178,
                    theWidth: double.maxFinite,
                    paddings: const EdgeInsets.all(18),
                    radius: 15,
                    theChild: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 160,
                          decoration: buildImageDecoration(data[0].pictPath),
                          /*ClipRRect(
                                borderRadius: BorderRadius.circular(10.0),
                                child: Image.asset(data[0].pictPath),
                              ),*/
                        ),
                        Flexible(
                          child: Column(
                            children: [
                              Flexible(
                                child: nearlistgen(data: data, index: 0),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  FrostedGlassBox(
                    theHeight: 178,
                    theWidth: double.maxFinite,
                    paddings: const EdgeInsets.all(18),
                    radius: 15,
                    theChild: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 160,
                          decoration: buildImageDecoration(data[1].pictPath),
                          /*ClipRRect(
                                borderRadius: BorderRadius.circular(10.0),
                                child: Image.asset(data[0].pictPath),
                              ),*/
                        ),
                        Flexible(
                          child: Column(
                            children: [
                              Flexible(
                                child: nearlistgen(data: data, index: 1),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  FrostedGlassBox(
                    theHeight: 178,
                    theWidth: double.maxFinite,
                    paddings: const EdgeInsets.all(18),
                    radius: 15,
                    theChild: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 160,
                          decoration: buildImageDecoration(data[2].pictPath),
                          /*ClipRRect(
                                borderRadius: BorderRadius.circular(10.0),
                                child: Image.asset(data[0].pictPath),
                              ),*/
                        ),
                        Flexible(
                          child: Column(
                            children: [
                              Flexible(
                                child: nearlistgen(data: data, index: 2),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  FrostedGlassBox(
                    theHeight: 178,
                    theWidth: double.maxFinite,
                    paddings: const EdgeInsets.all(18),
                    radius: 15,
                    theChild: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 160,
                          decoration: buildImageDecoration(data[3].pictPath),
                          /*ClipRRect(
                                borderRadius: BorderRadius.circular(10.0),
                                child: Image.asset(data[0].pictPath),
                              ),*/
                        ),
                        Flexible(
                          child: Column(
                            children: [
                              Flexible(
                                child: nearlistgen(data: data, index: 3),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  FrostedGlassBox(
                    theHeight: 178,
                    theWidth: double.maxFinite,
                    paddings: const EdgeInsets.all(18),
                    radius: 15,
                    theChild: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 160,
                          decoration: buildImageDecoration(data[4].pictPath),
                          /*ClipRRect(
                                borderRadius: BorderRadius.circular(10.0),
                                child: Image.asset(data[0].pictPath),
                              ),*/
                        ),
                        Flexible(
                          child: Column(
                            children: [
                              Flexible(
                                child: nearlistgen(data: data, index: 4),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  FrostedGlassBox(
                    theHeight: 178,
                    theWidth: double.maxFinite,
                    paddings: const EdgeInsets.all(18),
                    radius: 15,
                    theChild: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 160,
                          decoration: buildImageDecoration(data[5].pictPath),
                          /*ClipRRect(
                                borderRadius: BorderRadius.circular(10.0),
                                child: Image.asset(data[0].pictPath),
                              ),*/
                        ),
                        Flexible(
                          child: Column(
                            children: [
                              Flexible(
                                child: nearlistgen(data: data, index: 5),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  FrostedGlassBox(
                    theHeight: 178,
                    theWidth: double.maxFinite,
                    paddings: const EdgeInsets.all(18),
                    radius: 15,
                    theChild: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 160,
                          decoration: buildImageDecoration(data[6].pictPath),
                          /*ClipRRect(
                                borderRadius: BorderRadius.circular(10.0),
                                child: Image.asset(data[0].pictPath),
                              ),*/
                        ),
                        Flexible(
                          child: Column(
                            children: [
                              Flexible(
                                child: nearlistgen(data: data, index: 6),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              )),
            ],
          ),
        ),
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

class nearlistgen extends StatelessWidget {
  const nearlistgen({
    Key? key,
    required this.data,
    required this.index,
  }) : super(key: key);

  final List<dataClass> data;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.maxFinite,
      width: double.maxFinite,
      padding: const EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            textAlign: TextAlign.start,
            data[index].region,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            textAlign: TextAlign.start,
            data[index].placeName,
            style: const TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: 15,
                color: Colors.black),
          ),
          const Spacer(),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(
                Icons.star,
                color: Colors.amber[600],
                size: 12,
              ),
              Text(
                data[index].rate.toString(),
                style: const TextStyle(fontSize: 12, color: Colors.black),
              ),
              const Spacer(),
              Text(
                'RM',
                style: TextStyle(fontSize: 20, color: Colors.blue[800]),
              ),
              Text(
                data[index].price.toString(),
                style: TextStyle(fontSize: 20, color: Colors.blue[800]),
              ),
              const Text(
                "/Person",
                style: TextStyle(fontSize: 12),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
