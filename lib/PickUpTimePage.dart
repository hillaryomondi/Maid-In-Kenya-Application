import 'package:flutter/material.dart';
import 'package:maidinkenya/StyleScheme.dart';

class PickUpTimePage extends StatelessWidget {
  const PickUpTimePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: pickUpTimePage(),
    );
  }
}

class pickUpTimePage extends StatefulWidget {
  const pickUpTimePage({Key? key}) : super(key: key);

  @override
  State<pickUpTimePage> createState() => _pickUpTimePageState();
}

class _pickUpTimePageState extends State<pickUpTimePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          color: Colors.grey,
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            print("Back Button pressed");
          },
        ),
        title: Text(
          "Select Date & Time",
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          IconButton(
            color: Colors.grey,
            icon: Icon(Icons.notifications),
            onPressed: () {
              print("Notifications button pressed");
            },
          )
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Pick Up Date",
              style: headingStyle,
            ),
            SizedBox(
              height: 10,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  dateWidget("Wed", "18 May", true),
                  dateWidget("Thur", "19 May", false),
                  dateWidget("Fri", "20 May", false),
                  dateWidget("Sat", "21 May", false),
                  dateWidget("Sun", "22 May", false),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              height: 1,
              color: Colors.grey,
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "Pick Up Time",
              style: headingStyle,
            ),
            SizedBox(
              height: 15,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  timeWidget("10:00 AM to 12:00 PM", false),
                  timeWidget("10:00 AM to 12:00 PM", true),
                  timeWidget("10:00 AM to 12:00 PM", false),
                  timeWidget("10:00 AM to 12:00 PM", false),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "Delivery Date",
              style: headingStyle,
            ),
            SizedBox(
              height: 10,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  dateWidget("Sat", "21 May", true),
                  dateWidget("Sun", "22 May", false),
                  dateWidget("Mon", "23 May", false),
                  dateWidget("Tue", "24 May", false),
                  dateWidget("Wed", "25 May", false),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              height: 1,
              color: Colors.grey,
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "Delivery Time",
              style: headingStyle,
            ),
            SizedBox(
              height: 15,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  timeWidget("10:00 AM to 12:00 PM", false),
                  timeWidget("10:00 AM to 12:00 PM", true),
                  timeWidget("10:00 AM to 12:00 PM", false),
                  timeWidget("10:00 AM to 12:00 PM", false),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container timeWidget(String time, bool isActive) {
    return Container(
      margin: EdgeInsets.only(right: 10),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: (isActive) ? Colors.orange : Colors.grey.withOpacity(0.3),
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            time,
            style: contentStyle.copyWith(
                color: (isActive) ? Colors.white : Colors.black),
          )
        ],
      ),
    );
  }

  Container dateWidget(String day, String date, bool isActive) {
    return Container(
      margin: EdgeInsets.only(right: 10),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: (isActive) ? Colors.orange : Colors.grey.withOpacity(0.3),
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            day,
            style: contentStyle.copyWith(
                color: (isActive) ? Colors.white : Colors.black, fontSize: 20),
          ),
          Text(
            date,
            style: contentStyle.copyWith(
                color: (isActive) ? Colors.white : Colors.black, fontSize: 15),
          )
        ],
      ),
    );
  }
}
