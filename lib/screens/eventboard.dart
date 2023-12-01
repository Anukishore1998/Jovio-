import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';

class Board extends StatefulWidget {
  const Board({super.key});

  @override
  State<Board> createState() => _BoardState();
}

class _BoardState extends State<Board> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text('Event Board'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              'asset/images/bgevent.png',
              height: 180,
            ),
            Transform.translate(
                offset: Offset(10, -110),
                child: Text(
                  'What are we celebrating?',
                  style: TextStyle(
                      fontFamily: 'Urbanist-SemiBold',
                      fontSize: 24,
                      color: Colors.white),
                )),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 41),
              child: Row(
                children: [
                  Container(
                    height: 140,
                    width: 160,
                    decoration: BoxDecoration(
                        border:
                            Border.all(color: Color.fromRGBO(238, 231, 250, 1)),
                        borderRadius: BorderRadius.circular(15)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('asset/images/birthday cake1.png'),
                        SizedBox(
                          height: height * 0.01,
                        ),
                        Text('Engagement')
                      ],
                    ),
                  ),
                  SizedBox(
                    width: width * 0.02,
                  ),
                  Container(
                    height: 140,
                    width: 160,
                    decoration: BoxDecoration(
                        border:
                            Border.all(color: Color.fromRGBO(238, 231, 250, 1)),
                        borderRadius: BorderRadius.circular(15)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('asset/images/birthday cake1.png'),
                        SizedBox(
                          height: height * 0.01,
                        ),
                        Text('Birthday')
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: height * 0.01,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 41),
              child: Row(
                children: [
                  Container(
                    height: 140,
                    width: 160,
                    decoration: BoxDecoration(
                        border:
                            Border.all(color: Color.fromRGBO(238, 231, 250, 1)),
                        borderRadius: BorderRadius.circular(15)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('asset/images/birthday cake1.png'),
                        SizedBox(
                          height: height * 0.01,
                        ),
                        Text('Anniversary')
                      ],
                    ),
                  ),
                  SizedBox(
                    width: width * 0.02,
                  ),
                  Container(
                    height: 140,
                    width: 160,
                    decoration: BoxDecoration(
                        border:
                            Border.all(color: Color.fromRGBO(238, 231, 250, 1)),
                        borderRadius: BorderRadius.circular(15)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('asset/images/Balloon1.png'),
                        SizedBox(
                          height: height * 0.01,
                        ),
                        Text('Baby Shower')
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: height * 0.01,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 41),
              child: Row(
                children: [
                  Container(
                    height: 140,
                    width: 160,
                    decoration: BoxDecoration(
                        border:
                            Border.all(color: Color.fromRGBO(238, 231, 250, 1)),
                        borderRadius: BorderRadius.circular(15)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('asset/images/birthday cake1.png'),
                        SizedBox(
                          height: height * 0.01,
                        ),
                        Text('Bachelors')
                      ],
                    ),
                  ),
                  SizedBox(
                    width: width * 0.02,
                  ),
                  Container(
                    height: 140,
                    width: 160,
                    decoration: BoxDecoration(
                        border:
                            Border.all(color: Color.fromRGBO(238, 231, 250, 1)),
                        borderRadius: BorderRadius.circular(15)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('asset/images/food.png'),
                        SizedBox(
                          height: height * 0.01,
                        ),
                        Text('Special Date')
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: height * 0.01,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 41),
              child: Row(
                children: [
                  Container(
                    height: 140,
                    width: 160,
                    decoration: BoxDecoration(
                        border:
                            Border.all(color: Color.fromRGBO(238, 231, 250, 1)),
                        borderRadius: BorderRadius.circular(15)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('asset/images/birthday cake1.png'),
                        SizedBox(
                          height: height * 0.01,
                        ),
                        Text('Graduation')
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
