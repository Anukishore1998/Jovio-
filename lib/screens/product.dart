import 'package:flutter/material.dart';

class Product extends StatelessWidget {
  Product({
    super.key,
    required this.child,
    required this.check,
    required this.onCheck,
    required this.onClose,
  });

  final child;
  final bool? check;
  final ValueChanged<bool?> onCheck;
  final VoidCallback onClose;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            child: Column(
              children: [
                Row(
                  children: [
                    Checkbox(
                      value: check,
                      onChanged: (value) {
                        onCheck(value);
                      },
                    ),
                    Row(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 0.2,
                          child: Text(
                            child['head'],
                            style: const TextStyle(
                              color: Colors.black,
                              fontFamily: 'Urbanist-SemiBold',
                              fontSize: 16,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.55,
                        ),
                        GestureDetector(
                          onTap: onClose,
                          child: Container(
                            decoration: const BoxDecoration(
                              color: Colors.red,
                              shape: BoxShape.circle,
                            ),
                            child: const Padding(
                              padding: EdgeInsets.all(2.0),
                              child: Padding(
                                padding: EdgeInsets.all(4.0),
                                child: Icon(
                                  Icons.close_rounded,
                                  size: 20,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                Divider(color: Color.fromRGBO(238, 231, 250, 1))
              ],
            ),
          ),
        ),
        Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: const BorderRadiusDirectional.all(
                    Radius.elliptical(50, 40),
                  ),
                  child: Image.network(
                    child['image']!,
                    width: 200,
                    height: 100,
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      child['title']!,
                      style: TextStyle(
                        fontFamily: 'Urbanist-Bold',
                        fontSize: 14,
                      ),
                    ),
                    const SizedBox(
                      height: 2,
                    ),
                    Text(
                      child['subtitle']!,
                      style: TextStyle(
                        fontFamily: 'Urbanist-Medium',
                        fontSize: 14,
                        color: Color.fromRGBO(91, 49, 219, 1),
                      ),
                    ),
                    const SizedBox(
                      height: 22,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.black,
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 8,
                        ),
                        child: Center(
                          child: Text(
                            child['off'],
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Urbanist-Medium',
                              fontSize: 10,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Text(
                      child['AED'],
                      style: TextStyle(
                        fontFamily: 'Urbanist-Medium',
                        fontSize: 10,
                        color: Color.fromRGBO(151, 158, 163, 1),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
