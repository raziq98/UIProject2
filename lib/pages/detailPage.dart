import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../model/dataclass.dart';

class DetailPage extends StatelessWidget {
  DetailPage({super.key, required this.index});

  final int index;

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
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.height,
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
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            top: 50,
            child: Hero(
              tag: data[index].pictPath,
              child: Container(
                height: 190,
                width: 340,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      image: AssetImage(data[index].pictPath),
                      fit: BoxFit.cover),
                ),
              ),
            ),
          ),
          Positioned(
            top: 290,
            left: 30,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  data[index].region,
                  style: TextStyle(
                    fontFamily: GoogleFonts.poppins().fontFamily,
                    fontSize: 30,
                    color: Colors.black,
                  ),
                ),
                Text(
                  data[index].placeName,
                  style: TextStyle(
                    fontFamily: GoogleFonts.poppins().fontFamily,
                    fontSize: 30,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
        ],
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
