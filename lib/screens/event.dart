import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/eventboard.dart';
import 'package:flutter_application_1/screens/homescreen.dart';
import 'package:flutter_application_1/screens/profile.dart';

class Myevent extends StatefulWidget {
  const Myevent({Key? key});

  @override
  State<Myevent> createState() => _MyeventState();
}

class _MyeventState extends State<Myevent> {
  int _selectedIndex = 0;

  void _BottomNavigationBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('data'),
      ),
      body: Container(
        color: Color.fromRGBO(223, 223, 223, 1),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 225,
                width: double.infinity,
                child: Image.asset(
                    'asset/images/main.png'), // Note: The asset path should be 'assets', not 'asset'
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Transform.translate(
                  offset: Offset(0, -45),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(35),
                      color: Colors.white,
                    ),
                    child: Transform.translate(
                      offset: Offset(0, 0),
                      child: Container(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 5, vertical: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.red,
                                  ),
                                  child: const Padding(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 35, vertical: 15),
                                    child: Text(
                                      'Upcoming Events',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'Urbanist-SemiBold',
                                        fontSize: 14,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Colors.white,
                                      border: Border.all(
                                          color: const Color.fromRGBO(
                                              171, 144, 220, 1))),
                                  child: const Padding(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 35, vertical: 15),
                                    child: Text(
                                      'Past Events',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontFamily: 'Urbanist-SemiBold',
                                        fontSize: 14,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Transform.translate(
                offset: Offset(0, -20),
                child: Card(
                  color: Color.fromRGBO(255, 255, 255, 1),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Container(
                          color: Color.fromRGBO(242, 239, 239, 1),
                          child: const Padding(
                            padding: EdgeInsets.all(18.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Event Name',
                                  style: TextStyle(
                                    color: Color.fromRGBO(151, 158, 163, 1),
                                    fontFamily: 'Urbanist-SemiBold',
                                    fontSize: 12,
                                  ),
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Text('Abdhul & Sara Azari 1st Anniversary',
                                    style: TextStyle(
                                      color: Color.fromRGBO(60, 60, 60, 1),
                                      fontFamily: 'Urbanist-SemiBold',
                                      fontSize: 14,
                                    )),
                                SizedBox(
                                  height: 8,
                                ),
                                Text('Slot Date & Time',
                                    style: TextStyle(
                                      color: Color.fromRGBO(151, 158, 163, 1),
                                      fontFamily: 'Urbanist-SemiBold',
                                      fontSize: 12,
                                    )),
                                SizedBox(
                                  height: 8,
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.date_range,
                                      color: Color.fromRGBO(91, 49, 219, 1),
                                    ),
                                    SizedBox(
                                      width: 15,
                                    ),
                                    Text('Sep 24, 2023',
                                        style: TextStyle(
                                            fontFamily: 'Urbanist-Medium',
                                            fontSize: 14,
                                            color: Colors.black)),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Icon(
                                      Icons.timelapse_outlined,
                                      color: Color.fromRGBO(91, 49, 219, 1),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text('10:30 AM',
                                        style: TextStyle(
                                            fontFamily: 'Urbanist-Medium',
                                            fontSize: 14,
                                            color: Colors.black)),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          height: 100,
                          child: Row(
                            children: [
                              Image.asset(
                                'asset/images/main.png',
                                height: 76,
                                width: 66,
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('Yachts',
                                      style: TextStyle(
                                          fontFamily: 'Urbanist-SemiBold',
                                          fontSize: 14,
                                          color: Colors.black)),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  Text('62 Ft Great white',
                                      style: TextStyle(
                                          fontFamily: 'Urbanist-Regular',
                                          fontSize: 14,
                                          color: Color.fromRGBO(60, 60, 60, 1)))
                                ],
                              ),
                            ],
                          ),
                        ),
                        Divider(color: Color.fromRGBO(217, 217, 217, 1)),
                        Container(
                          height: 100,
                          child: Row(
                            children: [
                              Image.asset(
                                'asset/images/main.png',
                                height: 76,
                                width: 66,
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('Premium Decor',
                                      style: TextStyle(
                                          fontFamily: 'Urbanist-SemiBold',
                                          fontSize: 14,
                                          color: Colors.black)),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text('Anniversary surprise decor',
                                          style: TextStyle(
                                              fontFamily: 'Urbanist-Regular',
                                              fontSize: 14,
                                              color: Color.fromRGBO(
                                                  60, 60, 60, 1))),
                                    ],
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                        const Divider(color: Color.fromRGBO(217, 217, 217, 1)),
                        Container(
                          height: 100,
                          child: Row(
                            children: [
                              Image.asset(
                                'asset/images/main.png',
                                height: 76,
                                width: 66,
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('Premium Cakes',
                                      style: TextStyle(
                                          fontFamily: 'Urbanist-SemiBold',
                                          fontSize: 14,
                                          color: Colors.black)),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  Text('Pistachio rosewater cake',
                                      style: TextStyle(
                                          fontFamily: 'Urbanist-Regular',
                                          fontSize: 14,
                                          color: Color.fromRGBO(60, 60, 60, 1)))
                                ],
                              ),
                            ],
                          ),
                        ),
                        Divider(color: Color.fromRGBO(217, 217, 217, 1)),
                        Container(
                          height: 100,
                          child: Row(
                            children: [
                              Image.asset(
                                'asset/images/main.png',
                                height: 76,
                                width: 66,
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('Catering',
                                      style: TextStyle(
                                          fontFamily: 'Urbanist-SemiBold',
                                          fontSize: 14,
                                          color: Colors.black)),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  Text('Indian complete buffet',
                                      style: TextStyle(
                                          fontFamily: 'Urbanist-Regular',
                                          fontSize: 14,
                                          color: Color.fromRGBO(60, 60, 60, 1)))
                                ],
                              ),
                            ],
                          ),
                        ),
                        Divider(color: Color.fromRGBO(217, 217, 217, 1)),
                        Container(
                          height: 100,
                          child: Row(
                            children: [
                              Image.asset(
                                'asset/images/main.png',
                                height: 76,
                                width: 66,
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('DJ',
                                      style: TextStyle(
                                          fontFamily: 'Urbanist-SemiBold',
                                          fontSize: 14,
                                          color: Colors.black)),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  Text('Bollywood DJ',
                                      style: TextStyle(
                                          fontFamily: 'Urbanist-Regular',
                                          fontSize: 14,
                                          color: Color.fromRGBO(60, 60, 60, 1)))
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        showUnselectedLabels: true,
        currentIndex: _selectedIndex,
        onTap: _BottomNavigationBar,
        unselectedItemColor: Color.fromRGBO(151, 158, 163, 1),
        selectedItemColor: Color.fromRGBO(251, 83, 115, 1),
        // selectedLabelStyle: TextStyle(color: Color.fromRGBO(151, 158, 163, 1)),
        // unselectedLabelStyle: TextStyle(
        //     color: Color.fromRGBO(251, 83, 115,
        //         1)), // Set the icon color for inactive tabs to grey
        items: [
          BottomNavigationBarItem(
            icon: GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Home(),
                    ));
              },
              child: Icon(
                Icons.home,
              ),
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.event_available_rounded), label: 'My Events'),
          BottomNavigationBarItem(
              icon: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Board(),
                        ));
                  },
                  child: Icon(Icons.event_sharp)),
              label: 'Organize Event'),
          BottomNavigationBarItem(
              icon: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Profile(),
                        ));
                  },
                  child: Icon(Icons.person_outlined)),
              label: 'Profile'),
        ],
      ),
    );
  }
}
