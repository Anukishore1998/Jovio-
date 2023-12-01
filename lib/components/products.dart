import 'package:flutter/material.dart';

class decormap extends StatelessWidget {
  final child;
  final int index;

  decormap({
    super.key,
    required this.child,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                padding: EdgeInsets.all(10),
                height: height * 0.30,
                width: 380,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Color.fromRGBO(238, 231, 250, 1)),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //first column
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        if (index != 1)
                          Row(
                            children: [
                              Icon(
                                Icons.save,
                                color: Colors.green,
                              ),
                              SizedBox(
                                width: width * 0.02,
                              ),
                              Text(child['package'] ?? ''),
                            ],
                          ),
                        SizedBox(
                          height: height * 0.02,
                        ),
                        if (index != 1 && index != 3)
                          if (index != 1)
                            Container(
                                decoration: BoxDecoration(
                                    color: Color.fromRGBO(255, 186, 69, 1),
                                    borderRadius: BorderRadius.circular(20)),
                                padding: EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 3),
                                child: Text(
                                  child['bestseller'] ?? '',
                                  style: TextStyle(color: Colors.white),
                                )),
                        SizedBox(
                          height: height * 0.01,
                        ),
                        Text(child['heading'] ?? '',
                            style: TextStyle(
                              fontFamily: 'Urbanist-SemiBold',
                              fontSize: 16,
                            )),
                        SizedBox(
                          height: height * 0.06,
                        ),
                        Text(child['offer'] ?? '',
                            style: TextStyle(
                                fontFamily: 'Urbanist-Medium',
                                fontSize: 10,
                                color: Color.fromRGBO(151, 158, 163, 1))),
                        Text(child['offer1'] ?? '',
                            style: TextStyle(
                              fontFamily: 'Urbanist-Regular',
                              fontSize: 10,
                            )),
                        Text(
                          child['offer2'] ?? '',
                          style: TextStyle(
                            color: Color.fromRGBO(91, 49, 219, 1),
                            fontFamily: 'Urbanist-SemiBold',
                            fontSize: 16,
                          ),
                        )
                      ],
                    ),
                    //second column....
                    Padding(
                      padding: const EdgeInsets.only(right: 7),
                      child: Column(
                        children: [
                          Transform.translate(
                              offset: Offset(50, 5),
                              child: Container(
                                  decoration: BoxDecoration(
                                      color: Colors.green[300],
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(21))),
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 3),
                                  child: Text(
                                    '4*5',
                                    style: TextStyle(color: Colors.white),
                                  ))),
                          SizedBox(
                            height: height * 0.02,
                          ),
                          Transform.translate(
                            offset: Offset(0, 0),
                            child: Image.asset(
                              child['image'] ?? '',
                              height: 150,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Transform.translate(
                            offset: Offset(0, -20),
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    backgroundColor:
                                        Color.fromRGBO(91, 49, 219, 1),
                                    fixedSize: Size(90, 20)),
                                onPressed: () {},
                                child: Text(
                                  'ADD',
                                  style: TextStyle(color: Colors.white),
                                )),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            //////////second scroll/////////////////
          ],
        ),
      ],
    );
  }
}
