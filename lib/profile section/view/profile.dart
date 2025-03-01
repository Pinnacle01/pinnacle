import 'package:flutter/material.dart';
import 'package:pinnacle_main/framework/uikit/text_widget.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          TextWidget(
            text: 'Hello Mitro',
          ),
        ],
      ),
    );
  }
}
