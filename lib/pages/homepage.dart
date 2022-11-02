// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:dine/utils/emotion_face.dart';
import 'package:dine/utils/exercise_tiles.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[800],
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Settings"),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
      ]),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.8),
              child: Column(
                children: [
                  // Greetings Row
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          // ignore: prefer_const_constructors
                          Text(
                            "Hii Collins ",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            "23 Jan 2021",
                            style: TextStyle(
                              color: Colors.blue[200],
                              fontSize: 16,
                            ),
                          )
                        ],
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.blue[600],
                            borderRadius: BorderRadius.circular(20)),
                        child: Icon(
                          Icons.notifications,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  // search bar
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.blue[600],
                        borderRadius: BorderRadius.circular(12)),
                    padding: EdgeInsets.all(12),
                    child: Row(
                      children: [
                        Icon(
                          Icons.search,
                          color: Colors.white,
                        ),
                        SizedBox(width: 5),
                        Text(
                          'Search ',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "How do you feel ",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      Icon(
                        Icons.more_horiz,
                        color: Colors.white,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  // 4 differnt faces
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      //bad
                      Column(
                        children: [
                          EmoticonFace(
                            emoticoFace: '😂',
                          ),
                          SizedBox(
                            height: 8.0,
                          ),
                          Text(
                            'Happy',
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),

                      //fine
                      Column(
                        children: [
                          EmoticonFace(
                            emoticoFace: '😢',
                          ),
                          SizedBox(
                            height: 8.0,
                          ),
                          Text(
                            'Sad',
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),

                      //well
                      Column(
                        children: [
                          EmoticonFace(
                            emoticoFace: '😍',
                          ),
                          SizedBox(
                            height: 8.0,
                          ),
                          Text(
                            'Loved',
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                      //excellent
                      Column(
                        children: [
                          EmoticonFace(
                            emoticoFace: '🤔',
                          ),
                          SizedBox(
                            height: 8.0,
                          ),
                          Text(
                            'Thinking',
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 25,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Expanded(
              child: Container(

                padding: EdgeInsets.all(12),
                color: Colors.green[300],
                child: Center(
                  child: Column(
                    children: [
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Exercises",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 15, 2, 2)),
                            ),
                            Icon(Icons.more_horiz)
                          ],
                        ),
                      ),
                      SizedBox(height: 20),

                      // list view exercises
                      Expanded(
                        child: ListView(
                          children: [
                            Exercise(

                              icon: Icons.favorite,
                              skillName: "Speaking Skills",
                              numberOfExercises: '15',
                              color: Colors.green,
                            ),
                            Exercise(
                              color: Colors.greenAccent,
                              icon: Icons.health_and_safety,
                              skillName: "Safety Skills",
                              numberOfExercises: '10',
                            ),
                            Exercise(
                              color: Colors.blue,
                              icon: Icons.run_circle,
                              skillName: "100 Meters",
                              numberOfExercises: '5',
                            ),
                            Exercise(
                              color: Colors.brown,
                              icon: Icons.person,
                              skillName: " Push ups",
                              numberOfExercises: '30',
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
