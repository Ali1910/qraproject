import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class customdatepickercontainer extends StatelessWidget {
  customdatepickercontainer({super.key, required this.date});
  DateTime date;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0, left: 16.0, right: 16.0),
      child: Container(
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0),
            border: Border.all(color: Colors.black)),
        width: double.infinity,
        height: 58,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              '${date.day}/${date.month}/${date.year}',
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
            Icon(
              Icons.calendar_month_outlined,
              size: 20,
              color: Colors.grey,
            )
          ],
        ),
      ),
    );
  }
}
