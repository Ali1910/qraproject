import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:settingsscreen/customcontainer.dart';

class carselectscreen extends StatelessWidget {
  carselectscreen({super.key});
  bool checkbox = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        leading: Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
        title: Text(
          'Select Car',
          style: TextStyle(color: Colors.black, fontSize: 18),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 16.0, right: 16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 25,
              ),
              Text("Select the vehicle you want to ride."),
              selectcarcontainer(checkbox: checkbox),
              selectcarcontainer(checkbox: checkbox),
              selectcarcontainer(checkbox: checkbox),
              Divider(
                color: Colors.grey,
                indent: 5,
                endIndent: 5,
                thickness: 1,
              ),
              Text(
                'Promo Code',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  customTextField(
                    hinttext: 'Enter Promo code',
                  ),
                  CircleAvatar(
                    radius: 15,
                    backgroundColor: Colors.lime,
                    child: Text(
                      '+',
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                height: 210,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(8.0),
                      topRight: Radius.circular(8.0),
                    ),
                    color: Colors.grey.shade100),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Container(
                          height: 30,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8.0)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text('4.5 Km'),
                              Text('4 mins'),
                              Text(r'$20.00')
                            ],
                          ),
                        ),
                      ),
                      CustomButton(
                        text: 'Continue',
                        ontap: () {},
                      )
                    ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
