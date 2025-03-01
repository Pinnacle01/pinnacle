import 'package:flutter/material.dart';
import 'package:pinnacle_main/framework/constants/asset_path.dart';
import 'package:pinnacle_main/framework/constants/color.dart';
import 'package:pinnacle_main/framework/constants/size.dart';
import 'package:pinnacle_main/framework/digital/sizer.dart';
import 'package:pinnacle_main/framework/uikit/text_widget.dart';

class LocationPage extends StatelessWidget {
  const LocationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Image.asset(
                AssetPath.dummyImage, // Add your image to assets folder
                width: double.infinity,
                height: 250,
                fit: BoxFit.cover,
              ),
              Positioned(
                top: 20,
                left: 10,
                child: CircleAvatar(
                  backgroundColor: CustomColors.mainBackgroundColor161513,
                  child: IconButton(
                    icon: Icon(Icons.arrow_back,
                        color: CustomColors.mainTextColor),
                    onPressed: () => Navigator.pop(context),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Positioned(
                  bottom: 40,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Lonavala',
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic,
                            color: CustomColors.mainTextColor),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        'Lonavala-Khandala is a hill station and a Municipal Council in the Pune district, Maharashtra, India.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 14, color: CustomColors.mainTextColor),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      )),
    );
  }
}
