import 'package:editscreen/components/customTextformfield.dart';
import 'package:editscreen/components/custombutton.dart';
import 'package:editscreen/components/customdatepicker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class EditPage extends StatefulWidget {
  EditPage({super.key});

  @override
  State<EditPage> createState() => _EditPageState();
}

class _EditPageState extends State<EditPage> {
  DateTime date = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
        title: Text(
          'Edit Profile',
          style: TextStyle(color: Colors.black, fontSize: 20),
        ),
        elevation: 0.0,
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          customTextField(
            hinttext: 'New User Name',
          ),
          GestureDetector(
              onTap: () async {
                DateTime? newdate = await showDatePicker(
                    context: context,
                    initialDate: date,
                    firstDate: DateTime(2001),
                    lastDate: DateTime(2030));
                if (newdate == null) return;
                setState(() {
                  date = newdate;
                });
              },
              child: customdatepickercontainer(date: date)),
          customTextField(
            hinttext: 'New Email',
            icon: Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Icon(
                Icons.email_outlined,
                size: 20,
              ),
            ),
          ),
          customTextField(
            hinttext: 'Phone number',
          ),
          SizedBox(
            height: 100,
          ),
          CustomButton(
            ontap: (() {}),
            text: 'Update',
          )
        ]),
      ),
    );
  }
}
