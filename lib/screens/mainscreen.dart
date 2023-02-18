import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:settingsscreen/customcontainer.dart';

class mainpage extends StatelessWidget {
  const mainpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text(
          'Project Name',
          style: TextStyle(color: Colors.black, fontSize: 16),
        ),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              maincontainer(icon: Icons.local_taxi, text: 'Private Trips'),
              maincontainer(icon: Icons.public, text: 'Public Trips'),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          maincontainer(icon: Icons.bus_alert, text: 'Buses')
        ],
      )),
    );
  }
}
