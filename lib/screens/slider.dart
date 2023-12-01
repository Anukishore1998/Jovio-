import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/product.dart';

class Slide extends StatefulWidget {
  @override
  State<Slide> createState() => _SlideState();
}

class _SlideState extends State<Slide> {
  double _sliderValue = 0;

  bool checked = false;
  bool check = false;

  String selectedValue = 'Half Payment (50%)';

  final List _product = [
    {
      'head': 'Party venues',
      'image':
          'https://images.pexels.com/photos/163236/luxury-yacht-boat-speed-water-163236.jpeg?cs=srgb&dl=pexels-pixabay-163236.jpg&fm=jpg',
      'title': '62 Ft Great white',
      'subtitle': 'Luxy Yachts',
      'off': "20% OFF",
      'AED': "Off Upto AED 500",
      'isChecked': false,
    },
    {
      'head': 'Pistachio rosewater cake',
      'image':
          'https://images.pexels.com/photos/163236/luxury-yacht-boat-speed-water-163236.jpeg?cs=srgb&dl=pexels-pixabay-163236.jpg&fm=jpg',
      'title': 'Bakers Boul',
      'subtitle': 'CraftHaven',
      'off': "20% OFF",
      'AED': "Off Upto AED 500",
      'isChecked': false,
    },
    {
      'head': 'Decor',
      'image':
          'https://images.pexels.com/photos/163236/luxury-yacht-boat-speed-water-163236.jpeg?cs=srgb&dl=pexels-pixabay-163236.jpg&fm=jpg',
      'title': 'Anniversary surprise decor',
      'subtitle': 'CraftHaven',
      'off': "20% OFF",
      'AED': "Off Upto AED 500",
      'isChecked': false,
    },
    {
      'head': 'Gifts',
      'image':
          'https://images.pexels.com/photos/163236/luxury-yacht-boat-speed-water-163236.jpeg?cs=srgb&dl=pexels-pixabay-163236.jpg&fm=jpg',
      'title': 'Anniversary surprise decor',
      'subtitle': 'CraftHaven',
      'off': "20% OFF",
      'AED': "Off Upto AED 500",
      'isChecked': false,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cart'),
        backgroundColor: Colors.white,
      ),
      persistentFooterButtons: [
        Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(color: Colors.white),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "AED 5905",
                  style: TextStyle(
                    color: Colors.red,
                    fontFamily: 'Urbanist-SemiBold',
                    fontSize: 16,
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromRGBO(91, 49, 219, 1),
                  ),
                  onPressed: () {
                    //   final snackBar = SnackBar(
                    //     content: Center(child: Text('Booking Confirmed!')),
                    //     duration: Duration(seconds: 3),
                    //     backgroundColor: Colors.amber,
                    //     width: MediaQuery.of(context).size.width * 0.7,
                    //     behavior: SnackBarBehavior.floating,
                    //   );
                    //   ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    // },

                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            insetPadding: EdgeInsets.symmetric(horizontal: 1),
                            content: Container(
                                height: 80,
                                child: Center(
                                    child: Column(
                                  children: [
                                    Text('Booking Confirmed'),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    TextButton(
                                        onPressed: () {
                                          Navigator.pop(context);
                                        },
                                        child: Text('OK'))
                                  ],
                                ))),
                          );
                        });
                  },
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 18),
                    child: Text(
                      "Book Now",
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Urbanist-SemiBold',
                        fontSize: 14,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
      ],
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.74,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SliderTheme(
                        data: SliderTheme.of(context).copyWith(
                          trackHeight: 3.5,
                          activeTrackColor:
                              const Color.fromRGBO(91, 49, 219, 1),
                          inactiveTrackColor: Colors.grey,
                          thumbShape: const RoundSliderThumbShape(
                            enabledThumbRadius: 4.0,
                          ),
                          overlayShape: const RoundSliderOverlayShape(
                            overlayRadius: 20.0,
                          ),
                        ),
                        child: Slider(
                          value: _sliderValue,
                          min: 0,
                          max: 100,
                          divisions: 2,
                          onChanged: (value) {
                            setState(() {
                              _sliderValue = value;
                            });
                          },
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.8,
                        child: const Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Cart',
                                  style: TextStyle(
                                      fontFamily: 'Urbanist-Medium',
                                      fontSize: 12,
                                      color: Color.fromRGBO(74, 74, 74,
                                          1))), // Display the first division text
                              Text('Address',
                                  style: TextStyle(
                                      fontFamily: 'Urbanist-Medium',
                                      fontSize: 12,
                                      color: Color.fromRGBO(74, 74, 74, 1))),
                              Text('Payment',
                                  style: TextStyle(
                                      fontFamily: 'Urbanist-Medium',
                                      fontSize: 12,
                                      color: Color.fromRGBO(74, 74, 74, 1))),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            // const Divider(color: Color.fromRGBO(217, 217, 217, 1)),
            Container(height: 6, color: Color.fromRGBO(248, 248, 249, 1)),
            Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 45),
                      child: Text('Service to: Asif Hussain',
                          style: TextStyle(
                            color: Color.fromRGBO(151, 158, 163, 1),
                            fontFamily: 'Urbanist-SemiBold',
                            fontSize: 12,
                          )),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: const EdgeInsets.only(left: 40),
                      child: Icon(
                        Icons.location_on_outlined,
                        color: Colors.purple,
                        size: 34,
                      ),
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    const Column(
                      children: [
                        Text(
                          'Home',
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'Urbanist-SemiBold',
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.42,
                    ),
                    Transform.translate(
                        offset: Offset(0, 12),
                        child: const Text(
                          'CHANGE',
                          style: TextStyle(
                            color: Color.fromRGBO(255, 102, 128, 1),
                            fontFamily: 'Urbanist-SemiBold',
                            fontSize: 14,
                          ),
                        ))
                  ],
                ),
                Transform.translate(
                  offset: Offset(0, -5),
                  child: const Row(
                    children: [
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 85),
                            child: Text('Apartment Number - 2220....',
                                style: TextStyle(
                                    fontFamily: 'Urbanist-Medium',
                                    fontSize: 12,
                                    color: Color.fromRGBO(74, 74, 74, 1))),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  height: 50,
                  color: Color.fromRGBO(248, 248, 249, 1),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Row(
                          children: [
                            Checkbox(
                                value: checked,
                                onChanged: (bool? value) {
                                  setState(() {
                                    checked = value!;
                                    print(_product[0]['head']);
                                  });
                                }),
                            const SizedBox(
                              width: 10,
                            ),
                            const Text('1/4 Items selected'),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.35,
                            ),
                            const Icon(
                              Icons.delete_outline,
                              color: Colors.blueAccent,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),

            //////////////////////Event
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                color: Color.fromRGBO(247, 245, 245, 1),
                width: double.infinity,
                height: 140,
                child: const Padding(
                  padding: EdgeInsets.all(13.0),
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
                        height: 3,
                      ),
                      Text('Abdhul & Sara Azari 1st Anniversary',
                          style: TextStyle(
                            color: Color.fromRGBO(60, 60, 60, 1),
                            fontFamily: 'Urbanist-SemiBold',
                            fontSize: 14,
                          )),
                      SizedBox(
                        height: 13,
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
                            width: 10,
                          ),
                          Text('Sep 24, 2023',
                              style: TextStyle(
                                  fontFamily: 'Urbanist-Medium',
                                  fontSize: 14,
                                  color: Colors.black)),
                          SizedBox(
                            width: 19,
                          ),
                          Icon(
                            Icons.timelapse_outlined,
                            color: Color.fromRGBO(91, 49, 219, 1),
                          ),
                          SizedBox(
                            width: 12,
                          ),
                          Text('10:30 AM',
                              style: TextStyle(
                                  fontFamily: 'Urbanist-Medium',
                                  fontSize: 14,
                                  color: Colors.black))
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            ////////Party venues///////////////////////////////////////////
            Container(
              height: 7,
              color: Color.fromRGBO(248, 248, 249, 1),
            ),

            Column(
              children: [
                ..._product.asMap().entries.map((entry) {
                  final index = entry.key;
                  final product = entry.value;

                  return Product(
                    child: product,
                    check: product['isChecked'],
                    onCheck: (bool? value) {
                      setState(() {
                        _product[index]['isChecked'] = value!;
                        print(_product[index]['head']);
                      });
                    },
                    onClose: () {
                      setState(() {
                        _product.removeAt(index);
                        print(product);
                        //final removedItem = _product.removeAt(index);
                        //printRemainingItems(removedItem);
                      });
                    },
                  );
                })
              ],
            ),

////////////Normal code For Without Delete Option

//            Column(
//               children: [
//                 ..._product.map((e) {
//                   return Product(
//                     child: e,
//                     check: check,
//                     onCheck: (bool? value) {
//                       setState(() {
//                         check = value!;
//                       });
//                     },
//                     oncheck: (bool? value) {},
//                     onClose: () {
//                       setState(() {
//                         _product.removeAt(index);
//                       });
//                     },
//                   );
//                 })
//               ],
//             ),

            Container(
              height: 10,
              color: Color.fromRGBO(248, 248, 249, 1),
            ),
///////////////////////////////////personal details/////////////////////////////////////////

            Column(
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 30, top: 30),
                      child: Text('Personal Details',
                          style: TextStyle(
                              fontFamily: 'Urbanist-SemiBold',
                              fontSize: 16,
                              color: Colors.black)),
                    ),
                  ],
                ),
                const Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 30, top: 15),
                          child: Text('Name',
                              style: TextStyle(
                                  fontFamily: 'Urbanist-Medium',
                                  fontSize: 12,
                                  color: Color.fromRGBO(151, 158, 163, 1))),
                        ),
                      ],
                    ),
                  ],
                ),
                const Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 30, top: 7),
                          child: Text('Asif Hussain',
                              style: TextStyle(
                                  fontFamily: 'Urbanist-Bold',
                                  fontSize: 14,
                                  color: Colors.black)),
                        ),
                      ],
                    )
                  ],
                ),
                const Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 30, top: 15),
                          child: Text('Email',
                              style: TextStyle(
                                  fontFamily: 'Urbanist-Medium',
                                  fontSize: 12,
                                  color: Color.fromRGBO(151, 158, 163, 1))),
                        ),
                      ],
                    ),
                  ],
                ),
                const Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 30, top: 7, right: 40),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('asifhussain@gmail.com',
                              style: TextStyle(
                                  fontFamily: 'Urbanist-Bold',
                                  fontSize: 14,
                                  color: Colors.black)),
                          // Spacer(),
                          Text('VERIFY',
                              style: TextStyle(
                                  fontFamily: 'Urbanist-SemiBold',
                                  fontSize: 14,
                                  color: Colors.red))
                        ],
                      ),
                    )
                  ],
                ),
                const Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 30, top: 15),
                          child: Text('Phone Number',
                              style: TextStyle(
                                  fontFamily: 'Urbanist-Medium',
                                  fontSize: 12,
                                  color: Color.fromRGBO(151, 158, 163, 1))),
                        ),
                      ],
                    ),
                  ],
                ),
                const Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 30, top: 7),
                          child: Text('+971 5485 588 454',
                              style: TextStyle(
                                  fontFamily: 'Urbanist-Bold',
                                  fontSize: 14,
                                  color: Colors.black)),
                        ),
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                Container(
                  height: 5,
                  color: Color.fromRGBO(230, 230, 232, 1),
                ),
                const SizedBox(
                  height: 24,
                ),
                Column(
                  children: [
                    const Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: Text('Select Payment Milestone'),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(30.0)),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 30),
                          child: DropdownButtonFormField<String>(
                            value: selectedValue,
                            onChanged: (String? newValue) {
                              setState(() {
                                selectedValue = newValue!;
                              });
                            },
                            items: <String>[
                              'Half Payment (50%)',
                              'Half Payment (25%)',
                              'Half Payment (40%)'
                            ].map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                          ),
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(
                          bottom: 25, top: 5, left: 20, right: 0),
                      child: Text(
                          '! You are expected to pay up balance before sep 31, 2023.'),
                    )
                  ],
                ),
              ],
            ),
            Container(
              height: 7,
              color: const Color.fromRGBO(230, 230, 232, 1),
            ),
            SizedBox(
              height: 20,
            ),
            const Column(
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Text('Price Details',
                          style: TextStyle(
                              fontFamily: 'Urbanist-SemiBold',
                              fontSize: 16,
                              color: Colors.black)),
                    ),
                  ],
                ),
                SizedBox(
                  height: 18,
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: Text('Price',
                              style: TextStyle(
                                  fontFamily: 'Urbanist-SemiBold',
                                  fontSize: 14,
                                  color: Colors.black)),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 20),
                          child: Text('AED 6500',
                              style: TextStyle(
                                  fontFamily: 'Urbanist-Medium',
                                  fontSize: 12,
                                  color: Colors.black)),
                        )
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 18,
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: Text('Discount',
                              style: TextStyle(
                                  fontFamily: 'Urbanist-SemiBold',
                                  fontSize: 14,
                                  color: Colors.black)),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 20),
                          child: Text('-20%',
                              style: TextStyle(
                                  fontFamily: 'Urbanist-Medium',
                                  fontSize: 12,
                                  color: Colors.red)),
                        )
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 18,
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: Text('Discounted price',
                              style: TextStyle(
                                  fontFamily: 'Urbanist-SemiBold',
                                  fontSize: 14,
                                  color: Colors.black)),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 20),
                          child: Text('AED 595',
                              style: TextStyle(
                                  fontFamily: 'Urbanist-Medium',
                                  fontSize: 12,
                                  color: Colors.black)),
                        )
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 18,
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: Text('Ad ons',
                              style: TextStyle(
                                  fontFamily: 'Urbanist-SemiBold',
                                  fontSize: 14,
                                  color: Colors.black)),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 20),
                          child: Text('AED 0',
                              style: TextStyle(
                                  fontFamily: 'Urbanist-Medium',
                                  fontSize: 12,
                                  color: Colors.black)),
                        )
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 18,
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: Text('VAT',
                              style: TextStyle(
                                  fontFamily: 'Urbanist-SemiBold',
                                  fontSize: 14,
                                  color: Colors.black)),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 20),
                          child: Text('5%',
                              style: TextStyle(
                                  fontFamily: 'Urbanist-Medium',
                                  fontSize: 12,
                                  color: Colors.black)),
                        )
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 18,
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: Text('Delivery Charges',
                              style: TextStyle(
                                  fontFamily: 'Urbanist-SemiBold',
                                  fontSize: 14,
                                  color: Colors.black)),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 20),
                          child: Text('Nill',
                              style: TextStyle(
                                  fontFamily: 'Urbanist-Medium',
                                  fontSize: 12,
                                  color: Colors.black)),
                        )
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Divider(color: Color.fromRGBO(217, 217, 217, 1))
              ],
            ),
            SizedBox(
              height: 20,
            ),
            const Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Text('Grand Total',
                          style: TextStyle(
                              fontFamily: 'Urbanist-Bold',
                              fontSize: 14,
                              color: Colors.black)),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 20),
                      child: Text('AED 5905',
                          style: TextStyle(
                              fontFamily: 'Urbanist-SemiBold',
                              fontSize: 16,
                              color: Color.fromRGBO(91, 49, 219, 1))),
                    )
                  ],
                ),
              ],
            ),

            ///////////////////////////////////////////

            SizedBox(
              height: 50,
            )
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(home: Slide()));
}

void printRemainingItems(List<Product> products) {
  // Print the remaining items
  print("Remaining items: products");
}
// void printRemainingItems(Map<String, String> removedItem) {
//   print("Remaining items:");
//   for (final product in _product) {
//     print(product);
//   }
// }


//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Container(
//                 child: Column(
//                   children: [
//                     Row(
//                       children: [
//                         Checkbox(
//                             value: check,
//                             onChanged: (bool? value) {
//                               setState(() {
//                                 check = value!;
//                               });
//                             }),
//                         Row(
//                           children: [
//                             const Text('Party venues',
//                                 style: TextStyle(
//                                   color: Colors.black,
//                                   fontFamily: 'Urbanist-SemiBold',
//                                   fontSize: 16,
//                                 )),
//                             SizedBox(
//                               width: MediaQuery.of(context).size.width * 0.5,
//                             ),
//                             GestureDetector(
//                               onTap: () {
//                                 showDialog(
//                                   context: context,
//                                   builder: (BuildContext context) {
//                                     return AlertDialog(
//                                       actions: [
//                                         Column(
//                                           mainAxisAlignment:
//                                               MainAxisAlignment.end,
//                                           children: [
//                                             const Center(
//                                                 child: Text('Want To close')),
//                                             Row(
//                                               mainAxisAlignment:
//                                                   MainAxisAlignment
//                                                       .spaceBetween,
//                                               children: [
//                                                 GestureDetector(
//                                                   onTap: () {
//                                                     Navigator.pop(context);
//                                                   },
//                                                   child: Icon(Icons.add_circle),
//                                                 ),
//                                                 GestureDetector(
//                                                   onTap: () {
//                                                     Navigator.pop(context);
//                                                   },
//                                                   child: Icon(Icons.close),
//                                                 ),
//                                               ],
//                                             ),
//                                           ],
//                                         ),
//                                       ],
//                                     );
//                                   },
//                                 );
//                               },
//                               child: Container(
//                                 decoration: const BoxDecoration(
//                                   color: Colors.red,
//                                   shape: BoxShape.circle,
//                                 ),
//                                 child: const Padding(
//                                   padding: EdgeInsets.all(2.0),
//                                   child: Padding(
//                                     padding: EdgeInsets.all(4.0),
//                                     child: Icon(
//                                       Icons.close_rounded,
//                                       size: 20,
//                                       color: Colors.white,
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                             )
//                           ],
//                         ),
//                       ],
//                     ),
//                     Divider(color: Color.fromRGBO(238, 231, 250, 1))
//                   ],
//                 ),
//               ),
//             ),
//             Column(
//               children: [
//                 Row(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     ClipRRect(
//                       borderRadius: const BorderRadiusDirectional.all(
//                           Radius.elliptical(50, 40)),
//                       child: Image.network(
//                         'https://images.pexels.com/photos/163236/luxury-yacht-boat-speed-water-163236.jpeg?cs=srgb&dl=pexels-pixabay-163236.jpg&fm=jpg',
//                         width: 200,
//                         height: 100,
//                       ),
//                     ),
//                     Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         const Text(
//                           '62 Ft Great white',
//                           style: TextStyle(
//                               fontFamily: 'Urbanist-Bold', fontSize: 14),
//                         ),
//                         const SizedBox(
//                           height: 2,
//                         ),
//                         const Text('Luxy Yachts',
//                             style: TextStyle(
//                                 fontFamily: 'Urbanist-Medium',
//                                 fontSize: 14,
//                                 color: Color.fromRGBO(91, 49, 219, 1))),
//                         const SizedBox(
//                           height: 22,
//                         ),
//                         Container(
//                           decoration: BoxDecoration(
//                               borderRadius: BorderRadius.circular(20),
//                               color: Colors.black),
//                           child: const Padding(
//                             padding: EdgeInsets.symmetric(
//                                 horizontal: 20, vertical: 8),
//                             child: Center(
//                               child: Text(
//                                 "20% OFF",
//                                 style: TextStyle(
//                                   color: Colors.white,
//                                   fontFamily: 'Urbanist-Medium',
//                                   fontSize: 10,
//                                 ),
//                               ),
//                             ),
//                           ),
//                         ),
//                         const SizedBox(
//                           height: 8,
//                         ),
//                         const Text("Off Upto AED 500",
//                             style: TextStyle(
//                                 fontFamily: 'Urbanist-Medium',
//                                 fontSize: 10,
//                                 color: Color.fromRGBO(151, 158, 163, 1)))
//                       ],
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//             SizedBox(
//               height: 7,
//             ),

//             Container(
//               height: 30,
//               width: double.infinity,
//               color: Color.fromRGBO(238, 231, 250, 1),
//               child: const Column(
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 children: [
//                   Center(
//                     child: Text('6 Item selected for this order',
//                         style: TextStyle(
//                           color: Colors.black,
//                           fontFamily: 'Urbanist-SemiBold',
//                           fontSize: 14,
//                         )),
//                   )
//                 ],
//               ),
//             ),
//             SizedBox(
//               height: 10,
//             ),
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Container(
//                 child: Column(
//                   children: [
//                     Row(
//                       children: [
//                         Checkbox(
//                             value: check,
//                             onChanged: (bool? value) {
//                               setState(() {
//                                 check = value!;
//                               });
//                             }),
//                         Row(
//                           children: [
//                             const Text('Cake',
//                                 style: TextStyle(
//                                   color: Colors.black,
//                                   fontFamily: 'Urbanist-SemiBold',
//                                   fontSize: 20,
//                                 )),
//                             SizedBox(
//                               width: MediaQuery.of(context).size.width * 0.62,
//                             ),
//                             GestureDetector(
//                               onTap: () {
//                                 showDialog(
//                                   context: context,
//                                   builder: (BuildContext context) {
//                                     return AlertDialog(
//                                       actions: [
//                                         Column(
//                                           mainAxisAlignment:
//                                               MainAxisAlignment.end,
//                                           children: [
//                                             const Center(
//                                                 child: Text('Want To close')),
//                                             Row(
//                                               mainAxisAlignment:
//                                                   MainAxisAlignment
//                                                       .spaceBetween,
//                                               children: [
//                                                 GestureDetector(
//                                                   onTap: () {
//                                                     Navigator.pop(context);
//                                                   },
//                                                   child: Icon(Icons.add_circle),
//                                                 ),
//                                                 GestureDetector(
//                                                   onTap: () {
//                                                     Navigator.pop(context);
//                                                   },
//                                                   child: Icon(Icons.close),
//                                                 ),
//                                               ],
//                                             ),
//                                           ],
//                                         ),
//                                       ],
//                                     );
//                                   },
//                                 );
//                               },
//                               child: Container(
//                                 decoration: const BoxDecoration(
//                                   color: Colors.red,
//                                   shape: BoxShape.circle,
//                                 ),
//                                 child: const Padding(
//                                   padding: EdgeInsets.all(2.0),
//                                   child: Padding(
//                                     padding: EdgeInsets.all(4.0),
//                                     child: Icon(
//                                       Icons.close_rounded,
//                                       size: 20,
//                                       color: Colors.white,
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                             )
//                           ],
//                         ),
//                       ],
//                     ),
//                     Divider(color: Color.fromRGBO(238, 231, 250, 1))
//                   ],
//                 ),
//               ),
//             ),
//             Column(
//               children: [
//                 Row(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     ClipRRect(
//                       borderRadius: const BorderRadiusDirectional.all(
//                           Radius.elliptical(50, 40)),
//                       child: Image.network(
//                         'https://images.pexels.com/photos/163236/luxury-yacht-boat-speed-water-163236.jpeg?cs=srgb&dl=pexels-pixabay-163236.jpg&fm=jpg',
//                         width: 200,
//                         height: 100,
//                       ),
//                     ),
//                     Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         const Text(
//                           'Pistachio rosewater cake',
//                           style: TextStyle(
//                               fontFamily: 'Urbanist-SemiBold', fontSize: 14),
//                         ),
//                         const SizedBox(
//                           height: 2,
//                         ),
//                         const Text('Bakers Boul',
//                             style: TextStyle(
//                                 fontFamily: 'Urbanist-Medium',
//                                 fontSize: 14,
//                                 color: Color.fromRGBO(91, 49, 219, 1))),
//                         const SizedBox(
//                           height: 22,
//                         ),
//                         Container(
//                           decoration: BoxDecoration(
//                               borderRadius: BorderRadius.circular(20),
//                               color: Colors.black),
//                           child: const Padding(
//                             padding: EdgeInsets.symmetric(
//                                 horizontal: 20, vertical: 8),
//                             child: Center(
//                               child: Text(
//                                 "20% OFF",
//                                 style: TextStyle(
//                                   color: Colors.white,
//                                   fontFamily: 'Urbanist-Medium',
//                                   fontSize: 10,
//                                 ),
//                               ),
//                             ),
//                           ),
//                         ),
//                         const SizedBox(
//                           height: 13,
//                         ),
//                         const Text("Off Upto AED 500",
//                             style: TextStyle(
//                                 fontFamily: 'Urbanist-Medium',
//                                 fontSize: 10,
//                                 color: Color.fromRGBO(151, 158, 163, 1))),
//                         const SizedBox(
//                           height: 10,
//                         ),
//                         const Text('AED 240',
//                             style: TextStyle(
//                                 fontFamily: 'Urbanist-SemiBold',
//                                 fontSize: 14,
//                                 color: Color.fromRGBO(91, 49, 219, 1)))
//                       ],
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//             SizedBox(
//               height: 40,
//             ),
//             //////////////DECOR///
//             Container(
//               height: 10,
//               color: Color.fromRGBO(248, 248, 249, 1),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Container(
//                 child: Column(
//                   children: [
//                     Row(
//                       children: [
//                         Checkbox(
//                             value: check,
//                             onChanged: (bool? value) {
//                               setState(() {
//                                 check = value!;
//                               });
//                             }),

//                         Row(
//                           children: [
//                             const Text('Decor',
//                                 style: TextStyle(
//                                   color: Colors.black,
//                                   fontFamily: 'Urbanist-SemiBold',
//                                   fontSize: 20,
//                                 )),
//                             SizedBox(
//                               width: MediaQuery.of(context).size.width * 0.6,
//                             ),
//                             GestureDetector(
//                               onTap: () {
//                                 showDialog(
//                                   context: context,
//                                   builder: (BuildContext context) {
//                                     return AlertDialog(
//                                       actions: [
//                                         Column(
//                                           mainAxisAlignment:
//                                               MainAxisAlignment.end,
//                                           children: [
//                                             const Center(
//                                                 child: Text('Want To close')),
//                                             Row(
//                                               mainAxisAlignment:
//                                                   MainAxisAlignment
//                                                       .spaceBetween,
//                                               children: [
//                                                 GestureDetector(
//                                                   onTap: () {
//                                                     Navigator.pop(context);
//                                                   },
//                                                   child: Icon(Icons.add_circle),
//                                                 ),
//                                                 GestureDetector(
//                                                   onTap: () {
//                                                     Navigator.pop(context);
//                                                   },
//                                                   child: Icon(Icons.close),
//                                                 ),
//                                               ],
//                                             ),
//                                           ],
//                                         ),
//                                       ],
//                                     );
//                                   },
//                                 );
//                               },
//                               child: Container(
//                                 decoration: const BoxDecoration(
//                                   color: Colors.red,
//                                   shape: BoxShape.circle,
//                                 ),
//                                 child: const Padding(
//                                   padding: EdgeInsets.all(2.0),
//                                   child: Padding(
//                                     padding: EdgeInsets.all(4.0),
//                                     child: Icon(
//                                       Icons.close_rounded,
//                                       size: 20,
//                                       color: Colors.white,
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                             )
//                           ],
//                         ),
//                       ],
//                     ),
//                     Divider(color: Color.fromRGBO(217, 217, 217, 1))
//                   ],
//                 ),
//               ),
//             ),
//             Column(
//               children: [
//                 Row(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     ClipRRect(
//                       borderRadius: BorderRadiusDirectional.all(
//                           Radius.elliptical(50, 40)),
//                       child: Image.network(
//                         'https://images.pexels.com/photos/163236/luxury-yacht-boat-speed-water-163236.jpeg?cs=srgb&dl=pexels-pixabay-163236.jpg&fm=jpg',
//                         width: 200,
//                         height: 100,
//                       ),
//                     ),
//                     Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         const Text(
//                           'Anniversary surprise decor',
//                           style: TextStyle(
//                               fontFamily: 'Urbanist-SemiBold', fontSize: 14),
//                         ),
//                         const SizedBox(
//                           height: 2,
//                         ),
//                         const Text('CraftHaven',
//                             style: TextStyle(
//                                 fontFamily: 'Urbanist-Medium',
//                                 fontSize: 14,
//                                 color: Color.fromRGBO(91, 49, 219, 1))),
//                         const SizedBox(
//                           height: 22,
//                         ),
//                         Container(
//                           decoration: BoxDecoration(
//                               borderRadius: BorderRadius.circular(20),
//                               color: Colors.black),
//                           child: const Padding(
//                             padding: EdgeInsets.symmetric(
//                                 horizontal: 20, vertical: 8),
//                             child: Center(
//                               child: Text(
//                                 "20% OFF",
//                                 style: TextStyle(
//                                   color: Colors.white,
//                                   fontFamily: 'Urbanist-Medium',
//                                   fontSize: 10,
//                                 ),
//                               ),
//                             ),
//                           ),
//                         ),
//                         const SizedBox(
//                           height: 13,
//                         ),
//                         const Text("Off Upto AED 500",
//                             style: TextStyle(
//                                 fontFamily: 'Urbanist-Medium',
//                                 fontSize: 10,
//                                 color: Color.fromRGBO(151, 158, 163, 1))),
//                         const SizedBox(
//                           height: 10,
//                         ),
//                         const Text(
//                           'AED 1300',
//                           style: TextStyle(
//                               fontFamily: 'Urbanist-SemiBold',
//                               fontSize: 14,
//                               color: Color.fromRGBO(91, 49, 219, 1)),
//                         )
//                       ],
//                     ),
//                   ],
//                 ),
//               ],
//             ),

//             //////////////////////////////////////////
//             SizedBox(
//               height: 15,
//             ),

//             const Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Row(
//                   children: [
//                     Padding(
//                       padding: EdgeInsets.only(left: 17),
//                       child: Text(
//                         'Additional instructions',
//                         style: TextStyle(
//                             fontFamily: 'Urbanist-SemiBold',
//                             fontSize: 14,
//                             color: Colors.black),
//                       ),
//                     ),
//                   ],
//                 ),
//               ],
//             ),

//             Column(
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.all(14.0),
//                   child: Container(
//                     decoration: BoxDecoration(
//                       color: Color.fromRGBO(248, 248, 249, 1),
//                       border: Border.all(
//                         color: Color.fromRGBO(211, 209, 213, 1),
//                         width: 1.0,
//                       ),
//                       borderRadius: BorderRadius.circular(10),
//                     ),
//                     child: const TextField(
//                       maxLines: 4,
//                       decoration: InputDecoration(
//                         hintText: 'Write Your Instruction Here',
//                         contentPadding:
//                             EdgeInsets.all(10), // Padding inside the TextField
//                         border: InputBorder
//                             .none, // Remove the default TextField border
//                       ),
//                     ),
//                   ),
//                 ),
//               ],
//             ),

//             Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Row(
//                   children: [
//                     Padding(
//                       padding: const EdgeInsets.only(left: 17, bottom: 25),
//                       child: Text('SUBMIT',
//                           style: TextStyle(
//                               fontFamily: 'Urbanist-SemiBold',
//                               fontSize: 14,
//                               color: Colors.red)),
//                     ),
//                   ],
//                 )
//               ],
//             ),
//             SizedBox(
//               height: 40,
//             ),

// ///////////////////Gift

//             Container(
//               height: 10,
//               color: Color.fromRGBO(248, 248, 249, 1),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Container(
//                 child: Column(
//                   children: [
//                     Row(
//                       children: [
//                         Checkbox(
//                             value: check,
//                             onChanged: (bool? value) {
//                               setState(() {
//                                 check = value!;
//                               });
//                             }),
//                         Row(
//                           children: [
//                             const Text('Gifts',
//                                 style: TextStyle(
//                                   color: Colors.black,
//                                   fontFamily: 'Urbanist-SemiBold',
//                                   fontSize: 20,
//                                 )),
//                             SizedBox(
//                                 width:
//                                     MediaQuery.of(context).size.width * 0.64),
//                             GestureDetector(
//                               onTap: () {
//                                 showDialog(
//                                   context: context,
//                                   builder: (BuildContext context) {
//                                     return AlertDialog(
//                                       actions: [
//                                         Column(
//                                           mainAxisAlignment:
//                                               MainAxisAlignment.end,
//                                           children: [
//                                             const Center(
//                                                 child: Text('Want To close')),
//                                             Row(
//                                               mainAxisAlignment:
//                                                   MainAxisAlignment
//                                                       .spaceBetween,
//                                               children: [
//                                                 GestureDetector(
//                                                   onTap: () {
//                                                     Navigator.pop(context);
//                                                   },
//                                                   child: Icon(Icons.add_circle),
//                                                 ),
//                                                 GestureDetector(
//                                                   onTap: () {
//                                                     Navigator.pop(context);
//                                                   },
//                                                   child: Icon(Icons.close),
//                                                 ),
//                                               ],
//                                             ),
//                                           ],
//                                         ),
//                                       ],
//                                     );
//                                   },
//                                 );
//                               },
//                               child: Container(
//                                 decoration: const BoxDecoration(
//                                   color: Colors.red,
//                                   shape: BoxShape.circle,
//                                 ),
//                                 child: const Padding(
//                                   padding: EdgeInsets.all(2.0),
//                                   child: Padding(
//                                     padding: EdgeInsets.all(4.0),
//                                     child: Icon(
//                                       Icons.close_rounded,
//                                       size: 20,
//                                       color: Colors.white,
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                             )
//                           ],
//                         ),
//                       ],
//                     ),
//                     Divider(color: Color.fromRGBO(217, 217, 217, 1))
//                   ],
//                 ),
//               ),
//             ),
//             Column(
//               children: [
//                 Row(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     ClipRRect(
//                       borderRadius: BorderRadiusDirectional.all(
//                           Radius.elliptical(50, 40)),
//                       child: Image.network(
//                         'https://images.pexels.com/photos/163236/luxury-yacht-boat-speed-water-163236.jpeg?cs=srgb&dl=pexels-pixabay-163236.jpg&fm=jpg',
//                         width: 200,
//                         height: 100,
//                       ),
//                     ),
//                     Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         const Text(
//                           'Anniversary surprise decor',
//                           style: TextStyle(
//                               fontFamily: 'Urbanist-SemiBold', fontSize: 14),
//                         ),
//                         const SizedBox(
//                           height: 2,
//                         ),
//                         const Text('CraftHaven',
//                             style: TextStyle(
//                                 fontFamily: 'Urbanist-Medium',
//                                 fontSize: 14,
//                                 color: Color.fromRGBO(91, 49, 219, 1))),
//                         const SizedBox(
//                           height: 12,
//                         ),
//                         Container(
//                           decoration: BoxDecoration(
//                               borderRadius: BorderRadius.circular(20),
//                               color: Colors.black),
//                           child: const Padding(
//                             padding: EdgeInsets.symmetric(
//                                 horizontal: 20, vertical: 8),
//                             child: Center(
//                               child: Text(
//                                 "20% OFF",
//                                 style: TextStyle(
//                                   color: Colors.white,
//                                   fontFamily: 'Urbanist-Medium',
//                                   fontSize: 10,
//                                 ),
//                               ),
//                             ),
//                           ),
//                         ),
//                         const SizedBox(
//                           height: 13,
//                         ),
//                         const Text("Off Upto AED 500",
//                             style: TextStyle(
//                                 fontFamily: 'Urbanist-Medium',
//                                 fontSize: 10,
//                                 color: Color.fromRGBO(151, 158, 163, 1))),
//                         SizedBox(
//                           height: 10,
//                         ),
//                         Text('AED 1300',
//                             style: TextStyle(
//                                 fontFamily: 'Urbanist-SemiBold',
//                                 fontSize: 14,
//                                 color: Color.fromRGBO(91, 49, 219, 1)))
//                       ],
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//             SizedBox(
//               height: 40,
//             ),
// /////////////////////////Catering
//             Container(
//               height: 10,
//               color: Color.fromRGBO(248, 248, 249, 1),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Container(
//                 child: Column(
//                   children: [
//                     Row(
//                       children: [
//                         Checkbox(
//                             value: check,
//                             onChanged: (bool? value) {
//                               setState(() {
//                                 check = value!;
//                               });
//                             }),
//                         Row(
//                           children: [
//                             const Text('Catering',
//                                 style: TextStyle(
//                                   color: Colors.black,
//                                   fontFamily: 'Urbanist-SemiBold',
//                                   fontSize: 20,
//                                 )),
//                             SizedBox(
//                               width: MediaQuery.of(context).size.width * 0.54,
//                             ),
//                             GestureDetector(
//                               onTap: () {
//                                 showDialog(
//                                   context: context,
//                                   builder: (BuildContext context) {
//                                     return AlertDialog(
//                                       actions: [
//                                         Column(
//                                           mainAxisAlignment:
//                                               MainAxisAlignment.end,
//                                           children: [
//                                             const Center(
//                                                 child: Text('Want To close')),
//                                             Row(
//                                               mainAxisAlignment:
//                                                   MainAxisAlignment
//                                                       .spaceBetween,
//                                               children: [
//                                                 GestureDetector(
//                                                   onTap: () {
//                                                     Navigator.pop(context);
//                                                   },
//                                                   child: Icon(Icons.add_circle),
//                                                 ),
//                                                 GestureDetector(
//                                                   onTap: () {
//                                                     Navigator.pop(context);
//                                                   },
//                                                   child: Icon(Icons.close),
//                                                 ),
//                                               ],
//                                             ),
//                                           ],
//                                         ),
//                                       ],
//                                     );
//                                   },
//                                 );
//                               },
//                               child: Container(
//                                 decoration: const BoxDecoration(
//                                   color: Colors.red,
//                                   shape: BoxShape.circle,
//                                 ),
//                                 child: const Padding(
//                                   padding: EdgeInsets.all(2.0),
//                                   child: Padding(
//                                     padding: EdgeInsets.all(4.0),
//                                     child: Icon(
//                                       Icons.close_rounded,
//                                       size: 20,
//                                       color: Colors.white,
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                             )
//                           ],
//                         ),
//                       ],
//                     ),
//                     Divider(color: Color.fromRGBO(217, 217, 217, 1))
//                   ],
//                 ),
//               ),
//             ),
//             Column(
//               children: [
//                 Row(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     ClipRRect(
//                       borderRadius: BorderRadiusDirectional.all(
//                           Radius.elliptical(50, 40)),
//                       child: Image.network(
//                         'https://images.pexels.com/photos/163236/luxury-yacht-boat-speed-water-163236.jpeg?cs=srgb&dl=pexels-pixabay-163236.jpg&fm=jpg',
//                         width: 200,
//                         height: 100,
//                       ),
//                     ),
//                     Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         const Text(
//                           'Indian complete buffet',
//                           style: TextStyle(
//                               fontFamily: 'Urbanist-SemiBold', fontSize: 14),
//                         ),
//                         const SizedBox(
//                           height: 2,
//                         ),
//                         const Text('Feastwaves Catering',
//                             style: TextStyle(
//                                 fontFamily: 'Urbanist-Medium',
//                                 fontSize: 14,
//                                 color: Color.fromRGBO(91, 49, 219, 1))),
//                         const SizedBox(
//                           height: 12,
//                         ),
//                         Container(
//                           decoration: BoxDecoration(
//                               borderRadius: BorderRadius.circular(20),
//                               color: Colors.black),
//                           child: const Padding(
//                             padding: EdgeInsets.symmetric(
//                                 horizontal: 20, vertical: 8),
//                             child: Center(
//                               child: Text(
//                                 "20% OFF",
//                                 style: TextStyle(
//                                   color: Colors.white,
//                                   fontFamily: 'Urbanist-Medium',
//                                   fontSize: 10,
//                                 ),
//                               ),
//                             ),
//                           ),
//                         ),
//                         const SizedBox(
//                           height: 13,
//                         ),
//                         const Text("Off Upto AED 500",
//                             style: TextStyle(
//                                 fontFamily: 'Urbanist-Medium',
//                                 fontSize: 10,
//                                 color: Color.fromRGBO(151, 158, 163, 1))),
//                         SizedBox(
//                           height: 10,
//                         ),
//                         Text('AED 240',
//                             style: TextStyle(
//                                 fontFamily: 'Urbanist-SemiBold',
//                                 fontSize: 14,
//                                 color: Color.fromRGBO(91, 49, 219, 1)))
//                       ],
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//             SizedBox(
//               height: 40,
//             ),

//             /////////////////////People & Services
//             Container(
//               height: 10,
//               color: Color.fromRGBO(248, 248, 249, 1),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Container(
//                 child: Column(
//                   children: [
//                     Row(
//                       children: [
//                         Checkbox(
//                             value: check,
//                             onChanged: (bool? value) {
//                               setState(() {
//                                 check = value!;
//                               });
//                             }),
//                         Row(
//                           children: [
//                             const Text('People & Services',
//                                 style: TextStyle(
//                                   color: Colors.black,
//                                   fontFamily: 'Urbanist-SemiBold',
//                                   fontSize: 20,
//                                 )),
//                             SizedBox(
//                               width: MediaQuery.of(context).size.width * 0.33,
//                             ),
//                             GestureDetector(
//                               onTap: () {
//                                 showDialog(
//                                   context: context,
//                                   builder: (BuildContext context) {
//                                     return AlertDialog(
//                                       actions: [
//                                         Column(
//                                           mainAxisAlignment:
//                                               MainAxisAlignment.end,
//                                           children: [
//                                             const Center(
//                                                 child: Text('Want To close')),
//                                             Row(
//                                               mainAxisAlignment:
//                                                   MainAxisAlignment
//                                                       .spaceBetween,
//                                               children: [
//                                                 GestureDetector(
//                                                   onTap: () {
//                                                     Navigator.pop(context);
//                                                   },
//                                                   child: Icon(Icons.add_circle),
//                                                 ),
//                                                 GestureDetector(
//                                                   onTap: () {
//                                                     Navigator.pop(context);
//                                                   },
//                                                   child: Icon(Icons.close),
//                                                 ),
//                                               ],
//                                             ),
//                                           ],
//                                         ),
//                                       ],
//                                     );
//                                   },
//                                 );
//                               },
//                               child: Container(
//                                 decoration: const BoxDecoration(
//                                   color: Colors.red,
//                                   shape: BoxShape.circle,
//                                 ),
//                                 child: const Padding(
//                                   padding: EdgeInsets.all(2.0),
//                                   child: Padding(
//                                     padding: EdgeInsets.all(4.0),
//                                     child: Icon(
//                                       Icons.close_rounded,
//                                       size: 20,
//                                       color: Colors.white,
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                             )
//                           ],
//                         ),
//                       ],
//                     ),
//                     Divider(color: Color.fromRGBO(217, 217, 217, 1))
//                   ],
//                 ),
//               ),
//             ),
//             Column(
//               children: [
//                 Row(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     ClipRRect(
//                       borderRadius: BorderRadiusDirectional.all(
//                           Radius.elliptical(50, 40)),
//                       child: Image.network(
//                         'https://images.pexels.com/photos/163236/luxury-yacht-boat-speed-water-163236.jpeg?cs=srgb&dl=pexels-pixabay-163236.jpg&fm=jpg',
//                         width: 200,
//                         height: 100,
//                       ),
//                     ),
//                     Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         const Text(
//                           'Bollywood DJ',
//                           style: TextStyle(
//                               fontFamily: 'Urbanist-SemiBold', fontSize: 14),
//                         ),
//                         const SizedBox(
//                           height: 2,
//                         ),
//                         const Text('DJ Spacemeter',
//                             style: TextStyle(
//                                 fontFamily: 'Urbanist-Medium',
//                                 fontSize: 14,
//                                 color: Color.fromRGBO(91, 49, 219, 1))),
//                         const SizedBox(
//                           height: 12,
//                         ),
//                         Container(
//                           decoration: BoxDecoration(
//                               borderRadius: BorderRadius.circular(20),
//                               color: Colors.black),
//                           child: const Padding(
//                             padding: EdgeInsets.symmetric(
//                                 horizontal: 20, vertical: 8),
//                             child: Center(
//                               child: Text(
//                                 "20% OFF",
//                                 style: TextStyle(
//                                   color: Colors.white,
//                                   fontFamily: 'Urbanist-Medium',
//                                   fontSize: 10,
//                                 ),
//                               ),
//                             ),
//                           ),
//                         ),
//                         const SizedBox(
//                           height: 13,
//                         ),
//                         const Text("Off Upto AED 500",
//                             style: TextStyle(
//                                 fontFamily: 'Urbanist-Medium',
//                                 fontSize: 10,
//                                 color: Color.fromRGBO(151, 158, 163, 1))),
//                         SizedBox(
//                           height: 10,
//                         ),
//                         const Text('AED 1300',
//                             style: TextStyle(
//                                 fontFamily: 'Urbanist-SemiBold',
//                                 fontSize: 14,
//                                 color: Color.fromRGBO(91, 49, 219, 1)))
//                       ],
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//             SizedBox(
//               height: 40,
//             ),
//             /////////////////Personal details
