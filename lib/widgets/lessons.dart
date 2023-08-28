import 'package:flutter/material.dart';

import '../api/apicalling.dart';
import '../models/lessonsmodel.dart';

class Lessons extends StatefulWidget {
  const Lessons({super.key});

  @override
  State<Lessons> createState() => _LessonsState();
}

class _LessonsState extends State<Lessons> {
  @override
  void initState() {
    super.initState();
    getLessons();
  }

  LessonsModel? lessonsModel;
  bool isloading = true;

  Future<void> getLessons() async {
    await APICalling().getlessons().then((value) {
      setState(() {
        lessonsModel = value;
        isloading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return isloading
        ? const Center(
            child: CircularProgressIndicator(),
          )
        : Column(
            children: [
              Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 16.0),
                    child: Text(
                      'Lessons for you',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 120,
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
              Container(
                height: 350,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    physics: const BouncingScrollPhysics(),
                    itemCount: lessonsModel!.items!.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(10),
                        child: Card(
                          elevation: 3,
                          child: SizedBox(
                            height: 305,
                            width: 242,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset(
                                  'assets/images/young-woman-doing-natarajasana-exercise 1.png',
                                ),
                                Padding(
                                  padding: EdgeInsets.all(10.0),
                                  child: Text(
                                    lessonsModel!.items![index].category
                                        .toString(),
                                    style: const TextStyle(
                                      color: Colors.blue,
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w600,
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(10.0),
                                  child: Text(
                                    lessonsModel!.items![index].name.toString(),
                                    style: const TextStyle(
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
                                      Text(
                                        lessonsModel!.items![index].duration
                                            .toString()
                                            .toString(),
                                        style: const TextStyle(
                                          color: Colors.black,
                                          fontFamily: 'Inter',
                                          fontWeight: FontWeight.w100,
                                          fontSize: 12,
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 142,
                                      ),
                                      IconButton(
                                        onPressed: () {},
                                        icon: const Icon(
                                            Icons.lock_outline_rounded),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    }),
              ),
              // SingleChildScrollView(
              //   scrollDirection: Axis.horizontal,
              //   child: Row(
              //     children: [
              //       Padding(
              //         padding: const EdgeInsets.all(10),
              //         child: Card(
              //           elevation: 3,
              //           child: SizedBox(
              //             height: 305,
              //             width: 242,
              //             child: Column(
              //               crossAxisAlignment: CrossAxisAlignment.start,
              //               children: [
              //                 Image.asset(
              //                   'assets/images/young-woman-doing-natarajasana-exercise 1.png',
              //                 ),
              //                 const Padding(
              //                   padding: EdgeInsets.all(10.0),
              //                   child: Text(
              //                     'BABYCARE',
              //                     style: TextStyle(
              //                       color: Colors.blue,
              //                       fontFamily: 'Inter',
              //                       fontWeight: FontWeight.w600,
              //                       fontSize: 12,
              //                     ),
              //                   ),
              //                 ),
              //                 const Padding(
              //                   padding: EdgeInsets.all(10.0),
              //                   child: Text(
              //                     'Understanding of human behaviour',
              //                     style: TextStyle(
              //                       color: Colors.black,
              //                       fontFamily: 'Inter',
              //                       fontWeight: FontWeight.w800,
              //                       fontSize: 16,
              //                     ),
              //                   ),
              //                 ),
              //                 Padding(
              //                   padding: const EdgeInsets.all(10.0),
              //                   child: Row(
              //                     children: [
              //                       const Text(
              //                         '3 min',
              //                         style: TextStyle(
              //                           color: Colors.black,
              //                           fontFamily: 'Inter',
              //                           fontWeight: FontWeight.w100,
              //                           fontSize: 12,
              //                         ),
              //                       ),
              //                       const SizedBox(
              //                         width: 142,
              //                       ),
              //                       IconButton(
              //                         onPressed: () {},
              //                         icon: const Icon(
              //                             Icons.lock_outline_rounded),
              //                       ),
              //                     ],
              //                   ),
              //                 ),
              //               ],
              //             ),
              //           ),
              //         ),
              //       ),
              //       Padding(
              //         padding: const EdgeInsets.all(10),
              //         child: Card(
              //           elevation: 3,
              //           child: SizedBox(
              //             height: 305,
              //             width: 242,
              //             child: Column(
              //               crossAxisAlignment: CrossAxisAlignment.start,
              //               children: [
              //                 Image.asset(
              //                   'assets/images/young-woman-doing-natarajasana-exercise 1.png',
              //                 ),
              //                 const Padding(
              //                   padding: EdgeInsets.all(10.0),
              //                   child: Text(
              //                     'BABYCARE',
              //                     style: TextStyle(
              //                       color: Colors.blue,
              //                       fontFamily: 'Inter',
              //                       fontWeight: FontWeight.w600,
              //                       fontSize: 12,
              //                     ),
              //                   ),
              //                 ),
              //                 const Padding(
              //                   padding: EdgeInsets.all(10.0),
              //                   child: Text(
              //                     'Understanding of human behaviour',
              //                     style: TextStyle(
              //                       color: Colors.black,
              //                       fontFamily: 'Inter',
              //                       fontWeight: FontWeight.w800,
              //                       fontSize: 16,
              //                     ),
              //                   ),
              //                 ),
              //                 Padding(
              //                   padding: const EdgeInsets.all(10.0),
              //                   child: Row(
              //                     children: [
              //                       const Text(
              //                         '1 min',
              //                         style: TextStyle(
              //                           color: Colors.black,
              //                           fontFamily: 'Inter',
              //                           fontWeight: FontWeight.w100,
              //                           fontSize: 12,
              //                         ),
              //                       ),
              //                       const SizedBox(
              //                         width: 145,
              //                       ),
              //                       IconButton(
              //                         onPressed: () {},
              //                         icon: const Icon(
              //                             Icons.lock_outline_rounded),
              //                       ),
              //                     ],
              //                   ),
              //                 ),
              //               ],
              //             ),
              //           ),
              //         ),
              //       ),
              //     ],
              //   ),
              // )
            ],
          );
  }
}
