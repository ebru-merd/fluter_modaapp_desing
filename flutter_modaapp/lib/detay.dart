import 'package:flutter/material.dart';

class Detay extends StatefulWidget {
  var imgPath;
  Detay({this.imgPath});

  @override
  State<Detay> createState() => _DetayState();
}

class _DetayState extends State<Detay> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Hero(
            tag: widget.imgPath,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(widget.imgPath), fit: BoxFit.cover),
              ),
            ),
          ),
          Positioned(
            left: 15,
            right: 15,
            bottom: 15,
            child: Material(
              borderRadius: BorderRadius.circular(10),
              elevation: 4,
              child: Container(
                height: 240,
                width: MediaQuery.of(context).size.width - 30,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Container(
                            height: 120,
                            width: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                color: Colors.grey,
                              ),
                              image: const DecorationImage(
                                  image: AssetImage('assets/dress.jpg'),
                                  fit: BoxFit.contain),
                            ),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'LAMINATED',
                              style: TextStyle(
                                fontSize: 22,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            const Text(
                              'Louis vuitton',
                              style: TextStyle(
                                fontSize: 15,
                                fontFamily: 'Montserrat',
                                color: Colors.grey,
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width - 165,
                              child: const Text(
                                'One button V-neck sling long-sleeved waist female stitching dress',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontFamily: 'Montserrat',
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const Divider(),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            '\$6500',
                            style: TextStyle(
                                fontFamily: 'Montserrat', fontSize: 22),
                          ),
                          FloatingActionButton.small(
                            backgroundColor: Colors.brown,
                            onPressed: () {},
                            shape: const CircleBorder(),
                            child: const Icon(Icons.arrow_forward_ios,
                                color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height / 2,
            left: 50,
            child: Container(
              height: 40,
              width: 130,
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.4),
                borderRadius: BorderRadius.circular(8),
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Center(
                    child: Text(
                      "LAMINATED",
                      style: TextStyle(
                          fontFamily: 'Montserrat',
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                    size: 18,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
