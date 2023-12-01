import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/products.dart';

class Decor extends StatefulWidget {
  const Decor({super.key});

  @override
  State<Decor> createState() => _DecorState();
}

class _DecorState extends State<Decor> {
  final _product = [
    {
      'package': 'package',
      'bestseller': 'Bestseller',
      'heading': 'Anniversary\nsurprise decor',
      'offer': 'Off Upto AED 130',
      'offer1': 'AED 2500',
      'offer2': 'AED 1300',
      'image': 'asset/images/firefly.png'
    },
    {
      // 'package': 'package',
      // 'bestseller': 'Bestseller',
      'heading': 'Anniversary\nSurprise decor',
      // 'offer': 'Off Upto AED 130',
      // 'offer1': 'AED 2500',
      'offer2': 'AED 1300',
      'image': 'asset/images/firefly.png'
    }
  ];

  final _secondproduct = [
    {
      'package': 'package',
      'bestseller': 'Bestseller',
      'heading': 'Mermaid theme\nparty package',
      // 'offer': 'Off Upto AED 130',
      // 'offer1': 'AED 2500',
      'offer2': 'AED 1300',
      'image': 'asset/images/firefly.png'
    },
    {
      'package': 'package',
      'bestseller': 'Bestseller',
      'heading': 'Rose Gold Themed\nbirthday deocration',
      // 'offer': 'Off Upto AED 130',
      // 'offer1': 'AED 2500',
      'offer2': 'AED 1100',
      'image': 'asset/images/firefly.png'
    },
  ];
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text('DECOR'),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Row(
                children: [
                  Text(
                    'Sub Categories',
                    style: TextStyle(
                        fontFamily: 'Urbanist-SemiBold', fontSize: 14),
                  ),
                  SizedBox(width: width * 0.01),
                  Text(
                    '|',
                    style: TextStyle(
                        fontSize: 35,
                        color: Color.fromARGB(255, 228, 226, 226)),
                  ),
                  SizedBox(
                    width: width * 0.03,
                  ),
                  SizedBox(
                    width: width * 0.6,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Container(
                              height: 40,
                              width: 150,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  color: Color.fromRGBO(235, 70, 101, 1),
                                  border: Border.all(color: Colors.transparent),
                                  borderRadius: BorderRadius.circular(20)),
                              child: Text(
                                'Premium Decor',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 14),
                              )),
                          SizedBox(
                            width: width * 0.02,
                          ),
                          Container(
                              height: 40,
                              width: 150,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  color: Color.fromRGBO(235, 70, 101, 1),
                                  border: Border.all(color: Colors.transparent),
                                  borderRadius: BorderRadius.circular(20)),
                              child: Text('Balloon Decor',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 14))),
                          SizedBox(
                            width: width * 0.02,
                          ),
                          Container(
                              height: 40,
                              width: 150,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  color: Color.fromRGBO(235, 70, 101, 1),
                                  border: Border.all(color: Colors.transparent),
                                  borderRadius: BorderRadius.circular(20)),
                              child: Text('Proposal Decor',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 14))),
                          SizedBox(
                            width: width * 0.02,
                          ),
                          Container(
                              height: 40,
                              width: 150,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  color: Color.fromRGBO(235, 70, 101, 1),
                                  border: Border.all(color: Colors.transparent),
                                  borderRadius: BorderRadius.circular(20)),
                              child: Text('Standard Decor',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 14))),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            //////////////////
            Container(
              height: 4,
              color: Color.fromRGBO(245, 245, 245, 1),
            ),
            /////////////////////////
            Padding(
              padding: EdgeInsets.only(left: 20, right: 20, top: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Event details',
                    style: TextStyle(
                        fontFamily: 'Urbanist-SemiBold', fontSize: 16),
                  ),
                  Text(
                    'EDIT',
                    style: TextStyle(
                        fontFamily: 'Urbanist-SemiBold',
                        fontSize: 14,
                        color: Color.fromRGBO(251, 83, 115, 1)),
                  )
                ],
              ),
            ),
            ///////////////////////
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 20),
              child: Row(
                children: [
                  Container(
                      height: 40,
                      width: 130,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(239, 229, 253, 1),
                          border: Border.all(color: Colors.transparent),
                          borderRadius: BorderRadius.circular(20)),
                      child: Text('Sep 24, 2023',
                          style: TextStyle(
                            fontFamily: 'Urbanist-Medium',
                            fontSize: 12,
                          ))),
                  SizedBox(
                    width: width * 0.03,
                  ),
                  Container(
                      height: 40,
                      width: 160,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(239, 229, 253, 1),
                          border: Border.all(color: Colors.transparent),
                          borderRadius: BorderRadius.circular(20)),
                      child: Text('10:30 am - 12:30 pm',
                          style: TextStyle(
                            fontFamily: 'Urbanist-Medium',
                            fontSize: 12,
                          )))
                ],
              ),
            ),
            SizedBox(
              height: height * 0.01,
            ),
            ///////////////////////////////*
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  Container(
                      height: 40,
                      width: 100,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(239, 229, 253, 1),
                          border: Border.all(color: Colors.transparent),
                          borderRadius: BorderRadius.circular(20)),
                      child: Text('25 - 30',
                          style: TextStyle(
                            fontFamily: 'Urbanist-Medium',
                            fontSize: 12,
                          ))),
                ],
              ),
            ),
            ////
            SizedBox(
              height: height * 0.04,
            ),
            ////////////////////////////////
            Container(
              height: 4,
              color: Color.fromRGBO(245, 245, 245, 1),
            ),
            //////////////////////////
            Padding(
              padding: const EdgeInsets.only(top: 30, left: 20),
              child: Row(
                children: [
                  Text('CraftHaven',
                      style: TextStyle(
                        fontFamily: 'Urbanist Semibold',
                        fontSize: 16,
                      )),
                  SizedBox(
                    width: width * 0.48,
                  ),
                  Text('SEE ALL',
                      style: TextStyle(
                          fontFamily: 'Urbanist Semibold',
                          fontSize: 14,
                          color: Color.fromRGBO(251, 83, 115, 1))),
                  SizedBox(
                    width: width * 0.02,
                  ),
                  Icon(Icons.arrow_forward_ios,
                      size: 20, color: Color.fromRGBO(251, 83, 115, 1))
                ],
              ),
            ),
            SizedBox(
              height: height * 0.01,
            ),
            //////////////////////////////////
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  Container(
                    alignment: Alignment.center,
                    height: 25,
                    width: 40,
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(82, 196, 183, 1),
                        borderRadius: BorderRadius.circular(20),
                        border:
                            Border.all(color: Color.fromRGBO(82, 196, 183, 1))),
                    child: Text(
                      '* 4.5',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  SizedBox(
                    width: width * 0.01,
                  ),
                  Text(
                    '(1548 reviews)',
                    style: TextStyle(color: Color.fromRGBO(151, 158, 163, 1)),
                  )
                ],
              ),
            ),
            SizedBox(
              height: height * 0.04,
            ),
            ///////////////////////////////////////////////////
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ..._product.asMap().entries.map((entry) {
                    int index = entry.key;

                    Map<String, String> product = entry.value;
                    return decormap(
                      child: product,
                      index: index,
                    );
                  }).toList(),
                ],
              ),
            ),
            ////////////////
            Container(
              height: 4,
              color: Color.fromRGBO(245, 245, 245, 1),
            ),
            //////////////////////////
            // Padding(
            //   padding: const EdgeInsets.only(top: 30, left: 20),
            //   child: Row(
            //     children: [
            //       Text('BloomScape',
            //           style: TextStyle(
            //             fontFamily: 'Urbanist Semibold',
            //             fontSize: 16,
            //           )),
            //       SizedBox(
            //         width: width * 0.48,
            //       ),
            //       Text('SEE ALL',
            //           style: TextStyle(
            //               fontFamily: 'Urbanist Semibold',
            //               fontSize: 14,
            //               color: Color.fromRGBO(251, 83, 115, 1))),
            //       SizedBox(
            //         width: width * 0.02,
            //       ),
            //       Icon(Icons.arrow_forward_ios,
            //           size: 20, color: Color.fromRGBO(251, 83, 115, 1))
            //     ],
            //   ),
            // ),
            // SizedBox(
            //   height: height * 0.01,
            // ),
            // //////////////////////////////////
            // Padding(
            //   padding: const EdgeInsets.only(left: 20),
            //   child: Row(
            //     children: [
            //       Container(
            //         alignment: Alignment.center,
            //         height: 25,
            //         width: 40,
            //         decoration: BoxDecoration(
            //             color: Color.fromRGBO(82, 196, 183, 1),
            //             borderRadius: BorderRadius.circular(20),
            //             border:
            //                 Border.all(color: Color.fromRGBO(82, 196, 183, 1))),
            //         child: Text(
            //           '* 4.5',
            //           style: TextStyle(color: Colors.white),
            //         ),
            //       ),
            //       SizedBox(
            //         width: width * 0.01,
            //       ),
            //       Text(
            //         '(1548 reviews)',
            //         style: TextStyle(color: Color.fromRGBO(151, 158, 163, 1)),
            //       )
            //     ],
            //   ),
            // ),

            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ..._secondproduct.asMap().entries.map((entry) {
                    int index = entry.key;

                    Map<String, String> product = entry.value;
                    return decormap(
                      child: product,
                      index: index,
                    );
                  }).toList(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}



////////////////////////////////

