import 'package:flutter/material.dart';
import '../api/apicalling.dart';
import '../models/programsmodel.dart';

class Programs extends StatefulWidget {
  const Programs({super.key});

  @override
  State<Programs> createState() => _ProgramsState();
}

class _ProgramsState extends State<Programs> {
  // List<Items> items = [];
  @override
  void initState() {
    super.initState();
    // setApi();
    getPrograms();
  }

  bool islaoding = true;

  // void setApi() async {
  //   try {
  //     final url = Uri.https(
  //       '632017e19f82827dcf24a655.mockapi.io',
  //       '/api/programs',
  //     );
  //     final response = await http.get(url);
  //     final Map<String, dynamic> data = jsonDecode(response.body);
  //     final List<Items> loadedData = [];
  //     print(data.entries.where((element) => element.value == String));

  //     for (final item in data.entries) {
  //       loadedData.add(
  //         Items(
  //           name: '',
  //           category: 'x',
  //           lessons: 'x',
  //         ),
  //       );
  //     }
  //     setState(() {
  //       items = loadedData;
  //     });
  //   } catch (e) {
  //     return;
  //   }
  //   // print(items[0].name);
  // }

  ProgramsModel? programsModel;

  Future<void> getPrograms() async {
    await APICalling().getPrograms().then((value) {
      setState(() {
        programsModel = value;
        islaoding = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return islaoding
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
                      'Programs for you',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 100,
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
              // SingleChildScrollView(
              //   scrollDirection: Axis.horizontal,
              //   child:

              Container(
                height: 300,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    physics: const BouncingScrollPhysics(),
                    itemCount: programsModel!.items!.length,
                    itemBuilder: (context, index) {
                      return Container(
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Card(
                            elevation: 3,
                            child: SizedBox(
                              height: 280,
                              width: 242,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset('assets/images/Frame 122.png'),
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Text(
                                      programsModel!.items![index].category
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
                                    padding: const EdgeInsets.all(10.0),
                                    child: Text(
                                      programsModel!.items![index].name
                                          .toString(),
                                      style: const TextStyle(
                                        color: Colors.black,
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w800,
                                        fontSize: 16,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(10.0),
                                    child: Text(
                                      programsModel!.items![index].lesson
                                          .toString(),
                                      style: const TextStyle(
                                        color: Colors.black,
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w100,
                                        fontSize: 12,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );
                    }),
              ),
              // Row(
              //   children: [
              //     Padding(
              //       padding: const EdgeInsets.all(10),
              //       child: Card(
              //         elevation: 3,
              //         child: SizedBox(
              //           height: 280,
              //           width: 242,
              //           child: Column(
              //             crossAxisAlignment: CrossAxisAlignment.start,
              //             children: [
              //               Image.asset('assets/images/Frame 122.png'),
              //               Padding(
              //                 padding: const EdgeInsets.all(10.0),
              //                 child: Text(
              //                   'abc', //TODO
              //                   style: const TextStyle(
              //                     color: Colors.blue,
              //                     fontFamily: 'Inter',
              //                     fontWeight: FontWeight.w600,
              //                     fontSize: 12,
              //                   ),
              //                 ),
              //               ),
              //               const Padding(
              //                 padding: EdgeInsets.all(10.0),
              //                 child: Text(
              //                   'A complete guide for your new born baby',
              //                   style: TextStyle(
              //                     color: Colors.black,
              //                     fontFamily: 'Inter',
              //                     fontWeight: FontWeight.w800,
              //                     fontSize: 16,
              //                   ),
              //                 ),
              //               ),
              //               const Padding(
              //                 padding: EdgeInsets.all(10.0),
              //                 child: Text(
              //                   '16 lessons',
              //                   style: TextStyle(
              //                     color: Colors.black,
              //                     fontFamily: 'Inter',
              //                     fontWeight: FontWeight.w100,
              //                     fontSize: 12,
              //                   ),
              //                 ),
              //               ),
              //             ],
              //           ),
              //         ),
              //       ),
              //     ),
              //     Padding(
              //       padding: const EdgeInsets.all(10),
              //       child: Card(
              //         elevation: 3,
              //         child: SizedBox(
              //           height: 280,
              //           width: 242,
              //           child: Column(
              //             crossAxisAlignment: CrossAxisAlignment.start,
              //             children: [
              //               Image.asset('assets/images/Frame 128.png'),
              //               const Padding(
              //                 padding: EdgeInsets.all(10.0),
              //                 child: Text(
              //                   'WORKING PARENTS',
              //                   style: TextStyle(
              //                     color: Colors.blue,
              //                     fontFamily: 'Inter',
              //                     fontWeight: FontWeight.w600,
              //                     fontSize: 12,
              //                   ),
              //                 ),
              //               ),
              //               const Padding(
              //                 padding: EdgeInsets.all(10.0),
              //                 child: Text(
              //                   'Understanding of human behaviour',
              //                   style: TextStyle(
              //                     color: Colors.black,
              //                     fontFamily: 'Inter',
              //                     fontWeight: FontWeight.w800,
              //                     fontSize: 16,
              //                   ),
              //                 ),
              //               ),
              //               const Padding(
              //                 padding: EdgeInsets.all(10.0),
              //                 child: Text(
              //                   '12 lessons',
              //                   style: TextStyle(
              //                     color: Colors.black,
              //                     fontFamily: 'Inter',
              //                     fontWeight: FontWeight.w100,
              //                     fontSize: 12,
              //                   ),
              //                 ),
              //               ),
              //             ],
              //           ),
              //         ),
              //       ),
              //     ),
              //   ],
              // ),
              // )
            ],
          );
  }
}
