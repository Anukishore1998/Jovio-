import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/event.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
              child: Column(
                children: [
                  Container(
                    height: 100,
                    color: Color.fromRGBO(245, 245, 246, 1),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 22),
                          child: CircularPercentIndicator(
                            backgroundColor: Color.fromRGBO(223, 223, 225, 1),
                            radius: 35,
                            center: CircleAvatar(
                              radius: 25,
                              backgroundImage:
                                  AssetImage('asset/images/mark.jpg'),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: width * 0.04,
                        ),
                        Text(
                          'Ranveer Singh',
                          style: TextStyle(
                              fontFamily: 'Urbanist-Bold', fontSize: 16),
                        ),
                        SizedBox(
                          width: width * 0.24,
                        ),
                        Text(
                          'EDIT',
                          style: TextStyle(
                              fontFamily: 'Urbanist-SemiBold',
                              fontSize: 12,
                              color: Colors.red),
                        ),
                        SizedBox(
                          width: width * 0.01,
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.red,
                          size: 12,
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  Row(
                    children: [
                      Container(
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Color.fromRGBO(238, 231, 250, 1)),
                              borderRadius: BorderRadius.circular(10)),
                          height: 60,
                          width: 180,
                          // width: 5,
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 15),
                                child: SvgPicture.asset(
                                  'asset/images/My Events.svg',
                                  width: 30,
                                  height: 40,
                                ),
                              ),
                              SizedBox(
                                width: width * 0.02,
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Myevent()));
                                },
                                child: Text(
                                  'My events',
                                  style: TextStyle(
                                      fontFamily: 'Urbanist-SemiBold',
                                      fontSize: 12),
                                ),
                              ),
                            ],
                          )),
                      SizedBox(
                        width: width * 0.02,
                      ),
                      Container(
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Color.fromRGBO(238, 231, 250, 1)),
                              borderRadius: BorderRadius.circular(10)),
                          height: 60,
                          width: 180,
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 15),
                                child: SvgPicture.asset(
                                  'asset/images/Settings.svg',
                                  width: 30,
                                  height: 40,
                                ),
                              ),
                              SizedBox(
                                width: width * 0.02,
                              ),
                              Text(
                                'Settings',
                                style: TextStyle(
                                    fontFamily: 'Urbanist-SemiBold',
                                    fontSize: 12),
                              ),
                            ],
                          ))
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Container(
              height: 5,
              color: Color.fromRGBO(243, 243, 243, 1),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 37, vertical: 20),
              child: Row(
                children: [
                  SvgPicture.asset(
                    'asset/images/Home.svg',
                    height: 34,
                    width: 25,
                  ),
                  SizedBox(width: width * 0.05),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Address book',
                        style: TextStyle(
                            fontFamily: 'Urbanist-SemiBold', fontSize: 14),
                      ),
                      SizedBox(
                        height: height * 0.01,
                      ),
                      Text(
                        'Manage addresses',
                        style: TextStyle(
                            fontFamily: 'Urbanist-Regular',
                            fontSize: 12,
                            color: Color.fromRGBO(151, 158, 163, 1)),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: width * 0.37,
                  ),
                  Row(
                    children: [
                      Icon(Icons.arrow_forward_ios,
                          color: Color.fromRGBO(151, 158, 163, 1))
                    ],
                  )
                ],
              ),
            ),
            Container(
              height: 2,
              color: Color.fromRGBO(243, 243, 243, 1),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 37, vertical: 20),
              child: Row(
                children: [
                  SvgPicture.asset(
                    'asset/images/Payment.svg',
                    height: 34,
                    width: 25,
                  ),
                  SizedBox(width: width * 0.05),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Payments',
                        style: TextStyle(
                            fontFamily: 'Urbanist-SemiBold', fontSize: 14),
                      ),
                      SizedBox(
                        height: height * 0.01,
                      ),
                      Text(
                        'Manage Payments & Refund',
                        style: TextStyle(
                            fontFamily: 'Urbanist-Regular',
                            fontSize: 12,
                            color: Color.fromRGBO(151, 158, 163, 1)),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: width * 0.25,
                  ),
                  Row(
                    children: [
                      Icon(Icons.arrow_forward_ios,
                          color: Color.fromRGBO(151, 158, 163, 1))
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: height * 0.01,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 21),
              child: Row(
                children: [
                  Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: Color.fromRGBO(238, 231, 250, 1)),
                          borderRadius: BorderRadius.circular(10)),
                      height: 60,
                      width: 180,
                      // width: 5,
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: SvgPicture.asset(
                              'asset/images/Card.svg',
                              width: 30,
                              height: 40,
                            ),
                          ),
                          SizedBox(
                            width: width * 0.02,
                          ),
                          Text(
                            'Saved cards',
                            style: TextStyle(
                                fontFamily: 'Urbanist-SemiBold', fontSize: 12),
                          ),
                        ],
                      )),
                  SizedBox(
                    width: width * 0.02,
                  ),
                  Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: Color.fromRGBO(238, 231, 250, 1)),
                          borderRadius: BorderRadius.circular(10)),
                      height: 60,
                      width: 180,
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: SvgPicture.asset(
                              'asset/images/Refund.svg',
                              width: 30,
                              height: 40,
                            ),
                          ),
                          SizedBox(
                            width: width * 0.02,
                          ),
                          Text(
                            'Refund',
                            style: TextStyle(
                                fontFamily: 'Urbanist-SemiBold', fontSize: 12),
                          ),
                        ],
                      )),
                ],
              ),
            ),
            SizedBox(
              height: height * 0.04,
            ),
            Container(
              height: 2,
              color: Color.fromRGBO(243, 243, 243, 1),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 37, vertical: 20),
              child: Row(
                children: [
                  SvgPicture.asset(
                    'asset/images/Play store.svg',
                    height: 34,
                    width: 25,
                  ),
                  SizedBox(width: width * 0.05),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Rate us on app store / Play store',
                        style: TextStyle(
                            fontFamily: 'Urbanist-SemiBold', fontSize: 14),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: width * 0.12,
                  ),
                  Row(
                    children: [
                      Icon(Icons.arrow_forward_ios,
                          color: Color.fromRGBO(151, 158, 163, 1))
                    ],
                  )
                ],
              ),
            ),
            Container(
              height: 1,
              color: Color.fromRGBO(243, 243, 243, 1),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 37, vertical: 20),
              child: Row(
                children: [
                  SvgPicture.asset(
                    'asset/images/About.svg',
                    height: 34,
                    width: 25,
                  ),
                  SizedBox(width: width * 0.05),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'About',
                        style: TextStyle(
                            fontFamily: 'Urbanist-SemiBold', fontSize: 14),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: width * 0.53,
                  ),
                  Row(
                    children: [
                      Icon(Icons.arrow_forward_ios,
                          color: Color.fromRGBO(151, 158, 163, 1))
                    ],
                  )
                ],
              ),
            ),
            Container(
              height: 1,
              color: Color.fromRGBO(243, 243, 243, 1),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 37, vertical: 20),
              child: Row(
                children: [
                  SvgPicture.asset(
                    'asset/images/Support-Help.svg',
                    height: 34,
                    width: 25,
                  ),
                  SizedBox(width: width * 0.05),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Support/Help',
                        style: TextStyle(
                            fontFamily: 'Urbanist-SemiBold', fontSize: 14),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: width * 0.41,
                  ),
                  Row(
                    children: [
                      Icon(Icons.arrow_forward_ios,
                          color: Color.fromRGBO(151, 158, 163, 1))
                    ],
                  )
                ],
              ),
            ),
            Container(
              height: 1,
              color: Color.fromRGBO(243, 243, 243, 1),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 37, vertical: 20),
              child: Row(
                children: [
                  SvgPicture.asset(
                    'asset/images/Policies.svg',
                    height: 34,
                    width: 25,
                  ),
                  SizedBox(width: width * 0.05),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Policies',
                        style: TextStyle(
                            fontFamily: 'Urbanist-SemiBold', fontSize: 14),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: width * 0.51,
                  ),
                  Row(
                    children: [
                      Icon(Icons.arrow_forward_ios,
                          color: Color.fromRGBO(151, 158, 163, 1))
                    ],
                  )
                ],
              ),
            ),
            Container(
              height: 1,
              color: Color.fromRGBO(243, 243, 243, 1),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 37, vertical: 20),
              child: Row(
                children: [
                  SvgPicture.asset(
                    'asset/images/Share App.svg',
                    height: 34,
                    width: 25,
                  ),
                  SizedBox(width: width * 0.05),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Share app',
                        style: TextStyle(
                            fontFamily: 'Urbanist-SemiBold', fontSize: 14),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: width * 0.46,
                  ),
                  Row(
                    children: [
                      Icon(Icons.arrow_forward_ios,
                          color: Color.fromRGBO(151, 158, 163, 1))
                    ],
                  )
                ],
              ),
            ),
            Container(
              height: 2,
              color: Color.fromRGBO(243, 243, 243, 1),
            ),
            SizedBox(
              height: height * 0.05,
            ),
            Container(
              height: 60,
              width: 190,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.red),
                  borderRadius: BorderRadius.circular(30)),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 45, vertical: 10),
                child: Row(
                  children: [
                    SvgPicture.asset(
                      'asset/images/Logout.svg',
                      height: 20,
                      width: 40,
                    ),
                    SizedBox(
                      width: width * 0.03,
                    ),
                    Text('LOGOUT',
                        style: TextStyle(
                            fontFamily: 'Urbanist-SemiBold',
                            fontSize: 16,
                            color: Colors.red))
                  ],
                ),
              ),
            ),
            Container(
              height: 300,
            )
          ],
        ),
      ),
    );
  }
}
