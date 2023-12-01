import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/editprofile.dart';
import 'package:flutter_application_1/screens/event.dart';
import 'package:flutter_application_1/screens/notification.dart';
import 'package:flutter_application_1/screens/slider.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

final CarouselController _carouselController1 = CarouselController();
final CarouselController _carouselController2 = CarouselController();

class _HomeState extends State<Home> {
  int selectedindex = 0;
  int _currentIndex = 0;

  void _BottomNavigation(int index) {
    setState(() {
      selectedindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 300,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color.fromRGBO(91, 49, 219, 1),
                    Color.fromRGBO(0, 0, 0, 0.9)
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              child: Transform.translate(
                offset: Offset(0, -35),
                child: Row(
                  children: [
                    SizedBox(
                      width: 7,
                    ),
                    CircleAvatar(
                        radius: 50.0,
                        backgroundColor: Colors.transparent,
                        child: Container(
                          child: Stack(
                            children: [
                              Column(
                                children: [
                                  CircularPercentIndicator(
                                    radius: 45,
                                    center: CircleAvatar(
                                      radius: 30,
                                      backgroundImage: AssetImage(
                                        'asset/images/mark.jpg',
                                      ),
                                    ),
                                    progressColor:
                                        Color.fromRGBO(82, 196, 182, 1),
                                  ),
                                ],
                              ),
                              Positioned(
                                top: 60,
                                right: 67,
                                child: Container(
                                  height: 15,
                                  width: 25,
                                  child: (Image.asset('asset/images/mark.jpg')),
                                ),
                              )
                            ],
                          ),
                        )),
                    SizedBox(
                      width: 20,
                    ),
                    const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text('Hello, ',
                                style: TextStyle(
                                    fontFamily: 'Urbanist-Medium',
                                    fontSize: 14,
                                    color: Colors.white)),
                            SizedBox(width: 10),
                            Icon(
                              Icons.waving_hand,
                              color: Colors.white,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 7,
                        ),
                        Text(
                          'Asif Hussain',
                          style: TextStyle(
                              fontFamily: 'Urbanist-SemiBold',
                              fontSize: 14,
                              color: Colors.white),
                        )
                      ],
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.11,
                    ),
                    Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: Color.fromRGBO(95, 69, 177, 1),
                          radius: 25,
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Notificatio(),
                                  ));
                            },
                            child: Icon(
                              Icons.notifications_none_outlined,
                              color: Colors.white,
                              size: 30,
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        CircleAvatar(
                          backgroundColor: Color.fromRGBO(95, 69, 177, 1),
                          radius: 25,
                          child: Icon(
                            Icons.shopping_cart_outlined,
                            size: 30,
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Transform.translate(
              offset: Offset(0, -120),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 500,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40),
                      ),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(28.0),
                          child: TextField(
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.transparent),
                                  borderRadius: BorderRadius.circular(30)),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                  borderSide:
                                      BorderSide(color: Colors.transparent)),
                              filled: true,
                              fillColor: Color.fromRGBO(234, 238, 243, 1),
                              hintText: 'Search here',
                              hintStyle: const TextStyle(
                                fontFamily: 'Urbanist-Regular',
                                fontSize: 14,
                                color: Colors.black,
                              ),
                              contentPadding: const EdgeInsets.symmetric(
                                horizontal: 40,
                                vertical: 20,
                              ),
                              border: const OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(40)),
                              ),
                              suffixIcon: GestureDetector(
                                onTap: () {},
                                child: const Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(right: 10),
                                      child: Icon(
                                        Icons.search,
                                        size: 28,
                                      ),
                                    ),
                                    Text(
                                      '|',
                                      style: TextStyle(
                                        fontSize: 30,
                                        color:
                                            Color.fromARGB(255, 207, 206, 206),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(right: 22),
                                      child: Icon(
                                        Icons.mic,
                                        size: 28,
                                        color: Color.fromRGBO(91, 49, 219, 1),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(left: 30),
                              child: Text(
                                'New Offers',
                                style: TextStyle(
                                  fontFamily: 'Urbanist-SemiBold',
                                  fontSize: 16,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            CarouselSlider(
                              items: [
                                Image.asset(
                                  'asset/images/sli1.png',
                                  fit: BoxFit.fill,
                                  width: 340,
                                ),
                                Image.asset(
                                  'asset/images/sli2.png',
                                  fit: BoxFit.fill,
                                  width: 340,
                                ),
                                Image.asset(
                                  'asset/images/sli3.png',
                                  fit: BoxFit.fill,
                                  width: 340,
                                ),
                              ],
                              options: CarouselOptions(
                                enableInfiniteScroll: true,
                                autoPlay: true,
                                viewportFraction: 0.88,
                                onPageChanged: (index, reason) {
                                  setState(() {
                                    _currentIndex = index;
                                  });
                                },
                              ),
                            ),
                            SizedBox(
                              height: 35,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  width: 100,
                                  child: LinearProgressIndicator(
                                    value: (_currentIndex + 1) / 3,
                                    backgroundColor: Colors.grey[300],
                                    valueColor: AlwaysStoppedAnimation<Color>(
                                        Color.fromRGBO(60, 60, 60, 1)),
                                    minHeight: 5,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 30,
                            ),
                          ],
                        ),
                        Container(
                          color: Color.fromRGBO(238, 238, 239, 1),
                          height: 7,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('What are you looking for',
                            style: TextStyle(
                                fontFamily: 'Urbanist-SemiBold',
                                fontSize: 16,
                                color: Colors.black)),
                        Row(
                          children: [
                            Text('SEE ALL',
                                style: TextStyle(
                                    fontFamily: 'Urbanist-SemiBold',
                                    fontSize: 14,
                                    color: Color.fromRGBO(251, 83, 115, 1))),
                            Icon(
                              Icons.arrow_right,
                              color: Color.fromRGBO(251, 83, 115, 1),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  //
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 27),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                'asset/images/party.png',
                                fit: BoxFit.cover,
                                width: 140,
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Image.asset(
                                'asset/images/cake.png',
                                fit: BoxFit.cover,
                                width: 140,
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Image.asset(
                                'asset/images/catering.png',
                                fit: BoxFit.cover,
                                width: 140,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            children: [
                              Image.asset(
                                'asset/images/decor.png',
                                fit: BoxFit.cover,
                                width: 140,
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Image.asset(
                                'asset/images/people.png',
                                fit: BoxFit.cover,
                                width: 140,
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Image.asset(
                                'asset/images/venues.png',
                                fit: BoxFit.cover,
                                width: 140,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 4.0,
        clipBehavior: Clip.antiAlias,
        color: Colors.white,
        elevation: 0,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: Icon(Icons.home),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(
                Icons.event,
              ),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Myevent(),
                    ));
              },
            ),
            IconButton(
              icon: Icon(Icons.local_offer),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Slide(),
                    ));
              },
            ),
            IconButton(
              icon: Icon(Icons.category),
              onPressed: () {},
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => EditProfile(),
              ));
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
