// import 'package:flutter/material.dart';
// import 'package:flutter_application_1/screens/slider.dart';

// class CartScreen extends StatefulWidget {
//   const CartScreen({super.key});

//   @override
//   State<CartScreen> createState() => _CartScreenState();
// }

// class _CartScreenState extends State<CartScreen> {
//   List steps = ["Cart", "Address", "Payment"];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         leading: Icon(Icons.arrow_back),
//         title: Text("cart demo"),
//       ),
//       persistentFooterButtons: [
//         Container(
//           padding: EdgeInsets.all(10),
//           decoration: BoxDecoration(color: Colors.white),
//           child: Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 15),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 const Text(
//                   "AED 5905",
//                   style: TextStyle(color: Colors.red, fontSize: 20),
//                 ),
//                 Container(
//                   decoration: BoxDecoration(
//                       color: Colors.purple,
//                       borderRadius: BorderRadius.circular(30)),
//                   child: const Padding(
//                     padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
//                     child: Text(
//                       "Book Now",
//                       style: TextStyle(color: Colors.white),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         )
//       ],
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             Container(
//               decoration: BoxDecoration(color: Colors.white),
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   LinearProgressIndicator(
//                     // Set the properties of the linear progress indicator as needed
//                     value: 0.5, // Set the progress value (0.0 to 1.0)
//                     backgroundColor: Colors.grey, // Set the background color
//                     valueColor: AlwaysStoppedAnimation<Color>(
//                         Colors.blue), // Set the progress color
//                   ),
//                   SizedBox(height: 20),
//                   // CustomMarkers(
//                   // 3, 0.5), // 3 markers within the progress indicator
//                 ],
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Container(
//                 color: Colors.grey.withOpacity(0.1),
//                 child: Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Row(
//                         children: [
//                           Checkbox(
//                             value: false,
//                             onChanged: (value) {},
//                             activeColor: Colors.purple,
//                           ),
//                           const Text(
//                             "1/4 Items Selected",
//                           ),
//                         ],
//                       ),
//                       const Icon(
//                         Icons.delete,
//                         color: Colors.purple,
//                       )
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(18.0),
//               child: Container(
//                 color: Colors.grey.withOpacity(0.1),
//                 child: const Padding(
//                   padding: EdgeInsets.all(18.0),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Padding(
//                         padding: EdgeInsets.all(8.0),
//                         child: Text("Abdul & Sara Azari 1st Anniversary"),
//                       ),
//                       Padding(
//                         padding: EdgeInsets.all(8.0),
//                         child: Text("Slot Date & Time"),
//                       ),
//                       Padding(
//                         padding: EdgeInsets.all(8.0),
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.start,
//                           children: [
//                             Row(
//                               children: [
//                                 Icon(Icons.date_range),
//                                 SizedBox(
//                                   width: 5,
//                                 ),
//                                 Text("Sep 24, 2023"),
//                               ],
//                             ),
//                             Padding(
//                               padding: EdgeInsets.only(left: 20.0),
//                               child: Row(
//                                 children: [
//                                   Icon(Icons.av_timer_rounded),
//                                   SizedBox(
//                                     width: 5,
//                                   ),
//                                   Text("10:30 AM"),
//                                 ],
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//             Container(
//               color: Colors.white,
//               child: Column(
//                 children: [
//                   Padding(
//                     padding: const EdgeInsets.symmetric(
//                       horizontal: 15,
//                     ),
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Row(
//                           children: [
//                             Checkbox(value: false, onChanged: (value) {}),
//                             const Text("Party venues")
//                           ],
//                         ),
//                         Container(
//                             decoration: const BoxDecoration(
//                               color: Colors.red,
//                               shape: BoxShape.circle,
//                             ),
//                             child: const Padding(
//                               padding: EdgeInsets.all(2.0),
//                               child: Icon(
//                                 Icons.close_rounded,
//                                 color: Colors.white,
//                               ),
//                             )),
//                       ],
//                     ),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.symmetric(
//                         horizontal: 15.0, vertical: 10),
//                     child: Divider(
//                       thickness: 2.0,
//                       color: Colors.grey.withOpacity(0.2),
//                     ),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.symmetric(
//                         horizontal: 10, vertical: 10),
//                     child: Row(
//                       children: [
//                         ClipRRect(
//                           borderRadius: BorderRadius.circular(50),
//                           child: Image.network(
//                             "https://images.pexels.com/photos/163236/luxury-yacht-boat-speed-water-163236.jpeg?cs=srgb&dl=pexels-pixabay-163236.jpg&fm=jpg",
//                             width: 200,
//                             height: 100,
//                           ),
//                         ),
//                         Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             const Text(
//                               "62 Ft Great white",
//                               style: TextStyle(
//                                   fontFamily: 'Urbanist-Bold', fontSize: 14),
//                             ),
//                             const SizedBox(
//                               height: 2,
//                             ),
//                             const Text(
//                               "Luxy Yachts",
//                               style: TextStyle(
//                                   fontFamily: 'Urbanist-Medium',
//                                   fontSize: 14,
//                                   color: Color.fromRGBO(91, 49, 219, 1)),
//                             ),
//                             const SizedBox(
//                               height: 23,
//                             ),
//                             Container(
//                               decoration: BoxDecoration(
//                                   borderRadius: BorderRadius.circular(20),
//                                   color: Colors.black),
//                               child: const Padding(
//                                 padding: EdgeInsets.symmetric(
//                                     horizontal: 20, vertical: 8),
//                                 child: Center(
//                                   child: Text(
//                                     "20% OFF",
//                                     style: TextStyle(
//                                       color: Colors.white,
//                                       fontFamily: 'Urbanist-Medium',
//                                       fontSize: 10,
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                             ),
//                             const SizedBox(
//                               height: 13,
//                             ),
//                             const Text("Off Upto AED 500",
//                                 style: TextStyle(
//                                     fontFamily: 'Urbanist-Medium',
//                                     fontSize: 10,
//                                     color: Color.fromRGBO(151, 158, 163, 1)))
//                           ],
//                         ),
//                       ],
//                     ),
//                   ),
//                   const SizedBox(
//                     height: 20,
//                   )
//                 ],
//               ),
//             )
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           Navigator.push(
//               context,
//               MaterialPageRoute(
//                 builder: (context) => Slide(),
//               ));
//         },
//         child: Icon(Icons.skip_next),
//       ),
//     );
//   }
// }

// // Column(
// //               children: [
// //                 ..._product.map((e) {
// //                   return Product(
// //                     child: e,
// //                     check: check,
// //                     onCheck: (bool? value) {
// //                       setState(() {
// //                         check = value!;
// //                       });
// //                     },
// //                     oncheck: (bool? value) {},
// //                     onClose: () {
// //                       setState(() {
// //                         _product.removeAt(index);
// //                       });
// //                     },
// //                   );
// //                 })
// //               ],
// //             ),

