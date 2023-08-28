import 'package:flutter/material.dart';

import 'events_exp.dart';
import 'lessons.dart';
import 'programs_for_u.dart';

class Bodi extends StatelessWidget {
  const Bodi({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 2),
            child: Text(
              'Hello, Priya!',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 2),
            child: Text(
              'What do you wanna learn today?',
              style: TextStyle(
                fontFamily: "Inter",
                fontSize: 12,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.blue,
                      ),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(8),
                      ),
                    ),
                    child: TextButton.icon(
                      onPressed: () {},
                      icon: const Icon(Icons.book_rounded),
                      label: const Text('Programs'),
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.blue,
                      ),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(8),
                      ),
                    ),
                    child: TextButton.icon(
                      onPressed: () {},
                      icon: const Icon(Icons.question_mark),
                      label: const Text('Get Help'),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.blue,
                      ),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(8),
                      ),
                    ),
                    child: TextButton.icon(
                      onPressed: () {},
                      icon: const Icon(Icons.menu_book),
                      label: const Text('Learn'),
                      style: const ButtonStyle(),
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.blue,
                      ),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(8),
                      ),
                    ),
                    child: TextButton.icon(
                      onPressed: () {},
                      icon: const Icon(Icons.bar_chart_rounded),
                      label: const Text('DD Tracker'),
                      style: const ButtonStyle(),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          ColoredBox(
            color: Colors.white,
            child: SizedBox(
              height: MediaQuery.of(context).size.height / 1.66,
              child: ListView(
                children: const [
                  Programs(),
                  SizedBox(height: 10),
                  EventsExp(),
                  SizedBox(height: 10),
                  Lessons(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
