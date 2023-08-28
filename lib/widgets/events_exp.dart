import 'package:flutter/material.dart';

class EventsExp extends StatelessWidget {
  const EventsExp({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 16.0),
              child: Text(
                'Events and experiences',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(
              width: 80,
            ),
            TextButton(
              onPressed: () {},
              child: const Text(
                'View all',
                style: TextStyle(color: Colors.black),
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.arrow_forward_rounded),
            )
          ],
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: Card(
                  elevation: 3,
                  child: SizedBox(
                    height: 288,
                    width: 242,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          'assets/images/young-woman-doing-natarajasana-exercise 1.png',
                        ),
                        const Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Text(
                            'BABYCARE',
                            style: TextStyle(
                              color: Colors.blue,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w600,
                              fontSize: 12,
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Text(
                            'Understanding of human behaviour',
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w800,
                              fontSize: 16,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            children: [
                              const Text(
                                '13 Feb, Sunday',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w100,
                                  fontSize: 12,
                                ),
                              ),
                              const SizedBox(width: 70),
                              Container(
                                height: 34,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.blue,
                                  ),
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(25),
                                  ),
                                ),
                                child: TextButton(
                                  onPressed: () {},
                                  child: const Text('Book'),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Card(
                  elevation: 3,
                  child: SizedBox(
                    height: 288,
                    width: 242,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          'assets/images/young-woman-doing-natarajasana-exercise 1.png',
                        ),
                        const Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Text(
                            'BABYCARE',
                            style: TextStyle(
                              color: Colors.blue,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w600,
                              fontSize: 12,
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Text(
                            'Understanding of human behaviour',
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w800,
                              fontSize: 16,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            children: [
                              const Text(
                                '13 Feb, Sunday',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w100,
                                  fontSize: 12,
                                ),
                              ),
                              const SizedBox(
                                width: 70,
                              ),
                              Container(
                                height: 34,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.blue,
                                  ),
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(25),
                                  ),
                                ),
                                child: TextButton(
                                  onPressed: () {},
                                  child: const Text('Book'),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
