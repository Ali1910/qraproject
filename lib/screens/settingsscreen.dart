import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:settingsscreen/customcontainer.dart';

class settingsscreen extends StatelessWidget {
  const settingsscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            child: Icon(
              Icons.local_taxi,
              color: Colors.black,
            ),
            backgroundColor: Color(0xFFFEBB1B),
          ),
        ),
        title: Text(
          'Profile',
          style: TextStyle(fontSize: 20, color: Colors.black),
        ),
        actions: [
          IconButton(
            onPressed: (() {}),
            icon: Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  shape: BoxShape.circle),
              child: Icon(
                Icons.menu,
                color: Colors.black,
                size: 15,
              ),
            ),
          )
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: 20,
          ),
          Center(
            child: Stack(
              children: [
                CircleAvatar(
                  radius: 50,
                  child: Image.network(
                      'https://th.bing.com/th/id/OIP.n-fy3W_AxMMg6K0H13KjEwHaKT?pid=ImgDet&rs=1'),
                ),
                Positioned(
                  left: 75,
                  top: 80,
                  child: Container(
                    padding: EdgeInsets.all(0.5),
                    child: Icon(
                      Icons.edit,
                      color: Colors.white,
                      size: 18,
                    ),
                    height: 20,
                    width: 20,
                    decoration: BoxDecoration(color: Color(0xFFFEBB1B)),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            'Ali hany',
            style: TextStyle(
                color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            '01015274115',
            style: TextStyle(color: Colors.black, fontSize: 16),
          ),
          SizedBox(
            height: 10,
          ),
          Divider(
            color: Colors.grey,
            height: 5,
            indent: 10,
            endIndent: 10,
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(
            child: ListView.builder(
              itemBuilder: ((context, index) {
                return conatiner2();
              }),
              itemCount: 8,
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0.0,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Color(0xFFFEBB1B),
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined), label: 'home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.book_outlined), label: 'Bookings'),
          BottomNavigationBarItem(
              icon: Icon(Icons.chat_bubble_outline), label: 'inbox'),
          BottomNavigationBarItem(
              icon: Icon(Icons.wallet_outlined), label: 'Wallet'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}
