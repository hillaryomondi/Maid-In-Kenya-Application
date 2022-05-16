import 'package:flutter/material.dart';
import 'package:maidinkenya/OrderPage.dart';
import 'StyleScheme.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: homePage(),
    );
  }
}

class homePage extends StatefulWidget {
  const homePage({Key? key}) : super(key: key);

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
          "MAID IN KENYA",
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
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 150,
              width: MediaQuery.of(context).size.width,
              color: Color(0xfff1ffff),
              child: Stack(
                children: [
                  Positioned(
                    top: 0,
                    left: 0,
                    child: Container(
                      padding: EdgeInsets.all(20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("BLESS THIS MESS", style: headingStyle),
                          SizedBox(
                            height: 4,
                          ),
                          Text(
                            "We Pick your clothes and give \n them a new look",
                            style: TextStyle(fontSize: 14),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                      bottom: 0,
                      right: 0,
                      child: Container(
                        height: 150,
                        width: 140,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image:
                                    AssetImage('asset/images/bannerImg.png'))),
                      ))
                ],
              ),
            ),
            SizedBox(
              height: 6,
            ),
            Text(
              "SERVICES",
              style: headingStyle,
            ),
            Container(
              height: 150,
              color: Color(0xfff1ffff),
              child: Row(
                children: [
                  Container(
                    height: 200,
                    width: 120,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('asset/images/servicesImg.png'))),
                  ),
                  Expanded(
                      child: Container(
                    padding: EdgeInsets.all(30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("IRON ONLY", style: headingStyle),
                        SizedBox(
                          height: 10,
                        ),
                        InkWell(
                          onTap: openOrderPage,
                          child: Container(
                            decoration: BoxDecoration(
                              gradient: gradientStyle,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
                            ),
                            padding: EdgeInsets.symmetric(
                                vertical: 10, horizontal: 20),
                            child: Text(
                              "Place Order",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        )
                      ],
                    ),
                  ))
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.all(20),
              width: MediaQuery.of(context).size.width,
              color: Color(0xfff1ffff),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        "AVAILABILITY",
                        style: contentStyle,
                      ),
                      Text(
                        " AVAILABLE",
                        style: contentStyle.copyWith(color: Colors.blue),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text("We are open from 7.00 AM to 8.00 PM")
                ],
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Container(
              padding: EdgeInsets.all(20),
              width: MediaQuery.of(context).size.width,
              color: Color(0xfff1ffff),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "CHECK THE ESTIMATION",
                    style: contentStyle,
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    "You can check time estimation with price",
                    style: contentStyle,
                  )
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                      gradient: gradientStyle, shape: BoxShape.circle),
                  child: Text(
                    "+",
                    style: TextStyle(color: Colors.white, fontSize: 40),
                  ),
                )
              ],
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.orange,
        iconSize: 30,
        onTap: (value) => {},
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.track_changes),
            label: "Track Order",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.view_list),
            label: "My orders",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.contacts),
            label: "Profile",
          ),
        ],
      ),
    );
  }

  void openOrderPage() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => OrderPage()));
  }
}
