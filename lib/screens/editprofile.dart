import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController firstName = TextEditingController();
  final TextEditingController lastname = TextEditingController();
  final TextEditingController Phone = TextEditingController();
  final TextEditingController Email = TextEditingController();
  final TextEditingController DOB = TextEditingController();
  final TextEditingController Gender = TextEditingController();
  final TextEditingController Country = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'EditProfile',
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 240,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [
                    Color.fromRGBO(225, 240, 236, 1),
                    Color.fromRGBO(238, 240, 230, 1),
                  ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
                ),
                Positioned(
                    top: 30,
                    left: 70,
                    child: Container(
                        height: 100,
                        width: 250,
                        child: Image.asset(
                          'asset/images/Profile.png',
                        )))
              ],
            ),
            Transform.translate(
              offset: Offset(0, -55),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50))),
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 60, left: 15),
                        child: Row(
                          children: [
                            RichText(
                              text: const TextSpan(
                                  text: 'First name',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: 'Urbanist-SemiBold',
                                      fontSize: 14),
                                  children: [
                                    TextSpan(
                                        text: '*',
                                        style: TextStyle(
                                            color: Colors.red,
                                            fontFamily: 'Urbanist-Medium',
                                            fontSize: 14))
                                  ]),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 10, left: 15, right: 15),
                        child: TextFormField(
                          controller: firstName,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'First name is required';
                            }
                            return null;
                          },
                          decoration: const InputDecoration(
                            hintText: 'Asif',
                            contentPadding: EdgeInsets.fromLTRB(35, 20, 10, 18),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color.fromRGBO(212, 191, 249, 1),
                                  width: 2,
                                ),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30))),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color.fromRGBO(212, 191, 249, 1),
                                ),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30))),
                            errorBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Color.fromRGBO(212, 191, 249, 1),
                                  width: 2,
                                ),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30))),
                          ),
                        ),
                      ),

                      /*second---------------------------------------------------- */
                      Padding(
                        padding: const EdgeInsets.only(top: 10, left: 15),
                        child: Row(
                          children: [
                            RichText(
                              text: const TextSpan(
                                  text: 'Last name',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: 'Urbanist-SemiBold',
                                      fontSize: 14),
                                  children: [
                                    TextSpan(
                                        text: '*',
                                        style: TextStyle(
                                            color: Colors.red,
                                            fontFamily: 'Urbanist-Medium',
                                            fontSize: 14))
                                  ]),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(top: 10, left: 15, right: 15),
                        child: TextFormField(
                          controller: lastname,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'last name is required';
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                            hintText: 'Hussain',
                            contentPadding: EdgeInsets.fromLTRB(35, 20, 10, 18),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color.fromRGBO(212, 191, 249, 1),
                                  width: 2,
                                ),
                                borderRadius: BorderRadius.circular(30)),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color.fromRGBO(212, 191, 249, 1),
                                  width: 2,
                                ),
                                borderRadius: BorderRadius.circular(30)),
                            errorBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Color.fromRGBO(212, 191, 249, 1),
                                  width: 2,
                                ),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30))),
                          ),
                        ),
                      ),
                      /*Third -----------------------------------------------------*/
                      Padding(
                        padding: const EdgeInsets.only(top: 10, left: 15),
                        child: Row(
                          children: [
                            RichText(
                              text: const TextSpan(
                                  text: 'Phone number',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: 'Urbanist-SemiBold',
                                      fontSize: 14),
                                  children: [
                                    TextSpan(
                                        text: '*',
                                        style: TextStyle(
                                            color: Colors.red,
                                            fontFamily: 'Urbanist-Medium',
                                            fontSize: 14))
                                  ]),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(top: 10, left: 15, right: 15),
                        child: TextFormField(
                          controller: Phone,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Phone Number is required ';
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                            prefixIcon: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: SvgPicture.asset(
                                'asset/images/arab.svg',
                              ),
                            ),
                            hintText: '6254 03258',
                            contentPadding: EdgeInsets.fromLTRB(35, 20, 10, 18),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color.fromRGBO(212, 191, 249, 1),
                                  width: 2,
                                ),
                                borderRadius: BorderRadius.circular(30)),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color.fromRGBO(212, 191, 249, 1),
                                  width: 2,
                                ),
                                borderRadius: BorderRadius.circular(30)),
                            errorBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Color.fromRGBO(212, 191, 249, 1),
                                  width: 2,
                                ),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30))),
                          ),
                        ),
                      ),
                      /*Four-------------------------------------- */
                      Padding(
                        padding: const EdgeInsets.only(top: 10, left: 15),
                        child: Row(
                          children: [
                            RichText(
                              text: const TextSpan(
                                  text: 'Email',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: 'Urbanist-Medium',
                                      fontSize: 14),
                                  children: [
                                    TextSpan(
                                        text: '*',
                                        style: TextStyle(
                                            color: Colors.red,
                                            fontFamily: 'Urbanist-Medium',
                                            fontSize: 14))
                                  ]),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(top: 10, left: 15, right: 15),
                        child: TextFormField(
                          controller: Email,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return ' Email is required';
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                            hintText: 'hussain1548@gmail.com',
                            contentPadding: EdgeInsets.fromLTRB(35, 20, 10, 18),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color.fromRGBO(212, 191, 249, 1),
                                  width: 2,
                                ),
                                borderRadius: BorderRadius.circular(30)),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color.fromRGBO(212, 191, 249, 1),
                                  width: 2,
                                ),
                                borderRadius: BorderRadius.circular(30)),
                            errorBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Color.fromRGBO(212, 191, 249, 1),
                                  width: 2,
                                ),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30))),
                          ),
                        ),
                      ),
                      /*Five-------------------------------------*/
                      Padding(
                        padding: const EdgeInsets.only(top: 10, left: 15),
                        child: Row(
                          children: [
                            RichText(
                              text: const TextSpan(
                                  text: 'DOB',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: 'Urbanist-Medium',
                                      fontSize: 14),
                                  children: [
                                    TextSpan(
                                        text: '*',
                                        style: TextStyle(
                                            color: Colors.red,
                                            fontFamily: 'Urbanist-Medium',
                                            fontSize: 14))
                                  ]),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(top: 10, left: 15, right: 15),
                        child: TextFormField(
                          controller: DOB,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'DOB Is required';
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                            hintText: 'Sep 24, 2023',
                            suffixIcon: Padding(
                              padding: const EdgeInsets.only(top: 1, right: 25),
                              child:
                                  SvgPicture.asset('asset/images/Calender.svg'),
                            ),
                            contentPadding: EdgeInsets.fromLTRB(35, 20, 10, 18),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color.fromRGBO(212, 191, 249, 1),
                                  width: 2,
                                ),
                                borderRadius: BorderRadius.circular(30)),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color.fromRGBO(212, 191, 249, 1),
                                  width: 2,
                                ),
                                borderRadius: BorderRadius.circular(30)),
                            errorBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Color.fromRGBO(212, 191, 249, 1),
                                  width: 2,
                                ),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30))),
                          ),
                        ),
                      ),
                      //////////////////////////////////////
                      Padding(
                        padding: const EdgeInsets.only(top: 10, left: 15),
                        child: Row(
                          children: [
                            RichText(
                              text: const TextSpan(
                                  text: 'Gender',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: 'Urbanist-SemiBold',
                                      fontSize: 14),
                                  children: [
                                    TextSpan(
                                        text: '*',
                                        style: TextStyle(
                                            color: Colors.red,
                                            fontFamily: 'Urbanist-Medium',
                                            fontSize: 14))
                                  ]),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(top: 10, left: 15, right: 15),
                        child: TextFormField(
                          controller: Gender,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Gender is Required';
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                            hintText: 'Gender',
                            contentPadding: EdgeInsets.fromLTRB(35, 20, 10, 18),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color.fromRGBO(212, 191, 249, 1),
                                  width: 2,
                                ),
                                borderRadius: BorderRadius.circular(30)),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color.fromRGBO(212, 191, 249, 1),
                                  width: 2,
                                ),
                                borderRadius: BorderRadius.circular(30)),
                            errorBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Color.fromRGBO(212, 191, 249, 1),
                                  width: 2,
                                ),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30))),
                          ),
                        ),
                      ),
                      ////////////////////////////////////////////
                      Padding(
                        padding: const EdgeInsets.only(top: 10, left: 15),
                        child: Row(
                          children: [
                            RichText(
                              text: const TextSpan(
                                text: 'Building Name',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: 'Urbanist-SemiBold',
                                    fontSize: 14),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(top: 10, left: 15, right: 15),
                        child: TextField(
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.fromLTRB(35, 20, 10, 18),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color.fromRGBO(212, 191, 249, 1),
                                  width: 2,
                                ),
                                borderRadius: BorderRadius.circular(30)),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color.fromRGBO(212, 191, 249, 1),
                                  width: 2,
                                ),
                                borderRadius: BorderRadius.circular(30)),
                            errorBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Color.fromRGBO(212, 191, 249, 1),
                                  width: 2,
                                ),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30))),
                          ),
                        ),
                      ),
                      ///////////////////////////////////////
                      Padding(
                        padding: const EdgeInsets.only(top: 10, left: 15),
                        child: Row(
                          children: [
                            RichText(
                              text: const TextSpan(
                                text: 'Street Name',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: 'Urbanist-SemiBold',
                                    fontSize: 14),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(top: 10, left: 15, right: 15),
                        child: TextField(
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.fromLTRB(35, 20, 10, 18),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color.fromRGBO(212, 191, 249, 1),
                                  width: 2,
                                ),
                                borderRadius: BorderRadius.circular(30)),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color.fromRGBO(212, 191, 249, 1),
                                  width: 2,
                                ),
                                borderRadius: BorderRadius.circular(30)),
                            errorBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Color.fromRGBO(212, 191, 249, 1),
                                  width: 2,
                                ),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30))),
                          ),
                        ),
                      ),
                      /////////////////////////////////////
                      Padding(
                        padding: const EdgeInsets.only(top: 10, left: 15),
                        child: Row(
                          children: [
                            RichText(
                              text: const TextSpan(
                                  text: 'Country',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: 'Urbanist-SemiBold',
                                      fontSize: 14),
                                  children: [
                                    TextSpan(
                                        text: '*',
                                        style: TextStyle(
                                            color: Colors.red,
                                            fontFamily: 'Urbanist-Medium',
                                            fontSize: 14))
                                  ]),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(top: 10, left: 15, right: 15),
                        child: TextFormField(
                          controller: Country,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'country Is required';
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                            prefixIcon: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: SvgPicture.asset('asset/images/arab.svg'),
                            ),
                            hintText: 'UAE',
                            contentPadding: EdgeInsets.fromLTRB(35, 20, 10, 18),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color.fromRGBO(212, 191, 249, 1),
                                  width: 2,
                                ),
                                borderRadius: BorderRadius.circular(30)),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color.fromRGBO(212, 191, 249, 1),
                                  width: 2,
                                ),
                                borderRadius: BorderRadius.circular(30)),
                            errorBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Color.fromRGBO(212, 191, 249, 1),
                                  width: 2,
                                ),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30))),
                          ),
                        ),
                      ),
                      ////////////////////////////////////
                      Padding(
                        padding: const EdgeInsets.only(top: 10, left: 15),
                        child: Row(
                          children: [
                            RichText(
                              text: const TextSpan(
                                text: 'Emirates',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: 'Urbanist-SemiBold',
                                    fontSize: 14),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(top: 10, left: 15, right: 15),
                        child: TextField(
                          decoration: InputDecoration(
                              contentPadding:
                                  EdgeInsets.fromLTRB(35, 20, 10, 18),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color.fromRGBO(212, 191, 249, 1),
                                    width: 2,
                                  ),
                                  borderRadius: BorderRadius.circular(30)),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color.fromRGBO(212, 191, 249, 1),
                                    width: 2,
                                  ),
                                  borderRadius: BorderRadius.circular(30))),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10, left: 15),
                        child: Row(
                          children: [
                            Text('City'),
                          ],
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(top: 10, left: 15, right: 15),
                        child: TextField(
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.fromLTRB(35, 20, 10, 18),
                            hintText: 'CITY',
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color.fromRGBO(212, 191, 249, 1),
                                  width: 2),
                              borderRadius: BorderRadius.circular(30),
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color.fromRGBO(212, 191, 249, 1),
                                    width: 2),
                                borderRadius: BorderRadius.circular(30)),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: Container(
                          height: 100,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.transparent),
                              borderRadius: BorderRadius.circular(30)),
                          child: Card(
                            color: Colors.white,
                            elevation: 0.7,
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 20, right: 20),
                              child: Row(
                                children: [
                                  ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                          // primary: Colors.transparent,
                                          elevation: 0.7,
                                          fixedSize: Size(130, 70)),
                                      onPressed: () {},
                                      child: Text(
                                        'Cancel',
                                        style: TextStyle(
                                            color: const Color.fromARGB(
                                                255, 255, 65, 51)),
                                      )),
                                  Spacer(),
                                  ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                          primary:
                                              Color.fromRGBO(66, 25, 194, 1),
                                          fixedSize: Size(130, 70)),
                                      onPressed: () {
                                        if (_formKey.currentState!.validate()) {
                                          print('Save button pressed');
                                        }
                                      },
                                      child: Text(
                                        'Save',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: 'Urbanist-SemiBold',
                                          fontSize: 12,
                                        ),
                                      ))
                                ],
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
