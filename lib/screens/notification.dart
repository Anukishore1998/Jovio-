import 'package:flutter/material.dart';

class Notificatio extends StatefulWidget {
  const Notificatio({super.key});

  @override
  State<Notificatio> createState() => _NotificatioState();
}

class _NotificatioState extends State<Notificatio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notification'),
      ),
      body: Column(
        children: [
          Transform.translate(
            offset: Offset(0, -25),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 22),
                  child: CircleAvatar(
                    child: Icon(
                      Icons.percent,
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 50,
                    ),
                    Text('Offers/deals'),
                    SizedBox(
                      height: 7,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.7,
                      child: Text(
                          'Unlock exclusive event offer and deals for an unbeatable Experience..'),
                    ),
                    SizedBox(
                      height: 7,
                    ),
                    Text('2 hours ago')
                  ],
                )
              ],
            ),
          ),
          Container(
            height: 4,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 235, 233, 233),
            ),
          ),
          Row(
            children: [
              Transform.translate(
                offset: Offset(0, -15),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 22),
                  child: CircleAvatar(child: Icon(Icons.new_label)),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 22,
                  ),
                  Text('New Product Arrivals'),
                  SizedBox(
                    height: 7,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.7,
                    child: Text(
                        'Unlock exclusive event offer and deals for an unbeatable Experience..'),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text('6 hours ago')
                ],
              ),
            ],
          ),
          SizedBox(
            height: 18,
          ),
          Container(
            height: 4,
            decoration:
                BoxDecoration(color: Color.fromARGB(255, 232, 228, 228)),
          ),
          Row(
            children: [
              Transform.translate(
                offset: Offset(0, -15),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 22),
                  child: CircleAvatar(child: Icon(Icons.blur_off_rounded)),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 22,
                  ),
                  Text('Order Status Update'),
                  SizedBox(
                    height: 7,
                  ),
                  Text(
                      'Stay update on your order Progress with\nreal time status notification '),
                  SizedBox(
                    height: 10,
                  ),
                  Text('9 hours ago')
                ],
              ),
            ],
          ),
          SizedBox(
            height: 18,
          ),
          Container(
            height: 4,
            decoration:
                BoxDecoration(color: Color.fromARGB(255, 232, 228, 228)),
          ),
        ],
      ),
    );
  }
}
