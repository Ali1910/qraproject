import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class conatiner2 extends StatelessWidget {
  const conatiner2({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0, right: 8.0),
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(Icons.person_outline),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Edit profile',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.arrow_forward_ios_sharp,
                  size: 15,
                ))
          ],
        ),
      ),
    );
  }
}
