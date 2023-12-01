import 'package:flutter/material.dart';

class Deocom extends StatelessWidget {
  final child;

  const Deocom({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(left: 20, right: 20, top: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                child['event'] ?? '',
                style: TextStyle(fontFamily: 'Urbanist-SemiBold', fontSize: 16),
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
                  child: Text(child['date'] ?? '',
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
                  child: Text(child['time'] ?? '',
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
                  child: Text(child['s.no'] ?? '',
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
      ],
    );
  }
}
