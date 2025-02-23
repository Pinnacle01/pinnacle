import 'package:flutter/material.dart';
import 'package:pinnacle_main/framework/constants/size.dart';
import 'package:pinnacle_main/framework/digital/sizer.dart';

class NerabyAttractionSmallCard extends StatelessWidget {
  final String imagePath;
  final String locationName;
  final String distance;

  const NerabyAttractionSmallCard({
    super.key,
    required this.locationName,
    required this.distance,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: Sizes.size100.dp,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(Sizes.size10.dp),
          ),
          // child: Image,
        ),
        // SizedBox(height: 5),
        // Text(
        //   'Eiffel Tower',
        //   style: TextStyle(
        //     fontSize: 12,
        //     fontWeight: FontWeight.bold,
        //   ),
        // ),
        // Text(
        //   'Paris, France',
        //   style: TextStyle(
        //     fontSize: 10,
        //     color: Colors.grey,
        //   ),
        // ),
      ],
    );
  }
}
